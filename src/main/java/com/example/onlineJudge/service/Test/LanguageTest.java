package com.example.onlineJudge.service.Test;

import com.example.onlineJudge.Exception.ExistenceException;
import com.example.onlineJudge.controller.TestsController;
import com.example.onlineJudge.entity.InputOutput;
import com.example.onlineJudge.entity.TestInfo;
import org.yaml.snakeyaml.Yaml;

import java.io.*;
import java.sql.Timestamp;
import java.util.*;

public abstract class LanguageTest {

    private int uid;
    private int qid;
    private long submitTime;
    protected String code;
    protected String codeDir;
    protected String codeFile;
    protected String dockerCodeDir;
    protected String dockerCodeFile;
    private boolean isCompiled = false;
    private List<String> compileCommands = new ArrayList<>();
    private List<String> executeCommands = new ArrayList<>();

    private String output;

    protected LanguageTest(int uid, int qid, String code, long submitTime) {
        this.uid = uid;
        this.qid = qid;
        this.code = code;
        this.submitTime = submitTime;
        Properties properties = new Properties();
        Yaml yaml = new Yaml();
        try {
            try (InputStream inputStream = TestsController.class.getClassLoader().getResourceAsStream("codeProcessor.properties")) {
                properties.load(inputStream);
                Map<String, String> result = yaml.load(inputStream);
                String tmpDir = properties.getProperty("windowPath");
                String dockerTmpDir = properties.getProperty("dockerPath");
                this.codeDir = String.format("%s/%s/%s/%s", tmpDir, uid, qid, submitTime);
                this.codeFile = String.format("%s/%s", codeDir, getCodeFileName());
                this.dockerCodeDir = String.format("%s/%s/%s/%s", dockerTmpDir, uid, qid, submitTime);
                this.dockerCodeFile = String.format("%s/%s", dockerCodeDir, getCodeFileName());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.compileCommands = getCompileCommands();
        this.executeCommands = getExecuteCommands();
    }

    protected abstract List<String> getCompileCommands();

    protected abstract List<String> getExecuteCommands();

    protected abstract String getCodeFileName();

    public String compile() throws IOException {
        File codeFile = new File(this.codeFile);
        if (!codeFile.exists()) {
            codeFile.getParentFile().mkdirs();
            codeFile.createNewFile();
        } else {
            throw new ExistenceException("temp code file");
        }
        try (FileWriter writer = new FileWriter(codeFile)) {
            writer.write(code);
            writer.flush();
        }
        //TODO: Docker 权限控制
        ProcessBuilder processBuilder = new ProcessBuilder(compileCommands);
        processBuilder.directory(new File(codeDir));
        processBuilder.redirectErrorStream(true);
        Process process = processBuilder.start();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
            StringBuilder output = new StringBuilder();
            String line = null;
            while ((line = reader.readLine()) != null)

                output.append(line + "\n");
            isCompiled = true;
            return output.toString().isEmpty() ? null : output.toString();
        }
    }

    public TestInfo execute(ArrayList<InputOutput> inputOutputs) throws IOException {
        if (!isCompiled) throw new IllegalStateException("not compiled");

        int correct = 0;
        ArrayList<InputOutput> results = new ArrayList<>();
        // test all test cases
        for (InputOutput inputOutput : inputOutputs) {
            String output = test(inputOutput.getInput());
            this.output = output;
            System.out.println("结果：" + output);
            InputOutput actualInputOutput = new InputOutput();
            actualInputOutput.setInput(inputOutput.getInput());
            actualInputOutput.setOutput(output);
            if (output.equals(inputOutput.getOutput())) {
                correct++;
                actualInputOutput.setCorrect(true);
            } else {
                actualInputOutput.setCorrect(false);
            }
            results.add(actualInputOutput);
        }
        TestInfo testInfo = new TestInfo(uid, qid, new Timestamp(submitTime), code, (double) correct / (double) inputOutputs.size());
        testInfo.setInputOutputs(results);
        return testInfo;
    }

    protected String test(String input) throws IOException {
        ProcessBuilder processBuilder = new ProcessBuilder(executeCommands);
        processBuilder.directory(new File(codeDir));
        processBuilder.redirectErrorStream(true);
        Process process = processBuilder.start();
        try (OutputStream outputStream = process.getOutputStream()) {
            outputStream.write(input.getBytes("UTF-8"));
            outputStream.flush();
        }
        StringBuilder results = new StringBuilder();
        try (Scanner in = new Scanner(process.getInputStream())) {
            while (in.hasNextLine())
                results.append(in.nextLine());
        }
        return results.toString();
    }

    public String getOutput() {
        return output;
    }
}

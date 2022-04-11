package com.example.onlineJudge.service.Test;

import com.example.onlineJudge.entity.InputOutput;
import com.example.onlineJudge.entity.TestInfo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class JavaTest extends LanguageTest {

    public JavaTest(int uid, int qid, String code, long submitTime) {
        super(uid, qid, code, submitTime);
    }

    @Override
    protected List<String> getCompileCommands() {
        ArrayList<String> compileCommands = new ArrayList<>();
        compileCommands.add("docker");
        compileCommands.add("run");
        compileCommands.add("--rm");
        compileCommands.add("-u");
        compileCommands.add("root");
        compileCommands.add("-v");
        compileCommands.add(String.format("%s:%s", dockerCodeDir, dockerCodeDir));
        compileCommands.add("openjdk:8");
        compileCommands.add("/bin/sh");
        compileCommands.add("-c");
        compileCommands.add(String.format("cd %s&&javac Main.java", dockerCodeDir));
        return compileCommands;
    }

    @Override
    protected List<String> getExecuteCommands() {
        ArrayList<String> executeCommands = new ArrayList<>();
        executeCommands.add("docker");
        executeCommands.add("run");
        executeCommands.add("-i");
        executeCommands.add("--rm");
        executeCommands.add("-u");
        executeCommands.add("root");
        executeCommands.add("-v");
        executeCommands.add(String.format("%s:%s", dockerCodeDir, dockerCodeDir));
        executeCommands.add("openjdk:8");
        executeCommands.add("/bin/sh");
        executeCommands.add("-c");
        executeCommands.add(String.format("cd %s&&timeout 3s java Main", dockerCodeDir));
        return executeCommands;
    }

    @Override
    protected String getCodeFileName() {
        return "Main.java";
    }


//    /**
//     * 测试使用
//     * @param args
//     * @throws IOException
//     */
//    public static void main(String[] args) throws IOException {
//        JavaTest javaTest = new JavaTest(1, 2, "import java.util.*;" +
//                "public class Main{\n" +
//                " public static void main(String args[]){\n " +
//                "System.out.println(\"Hello World\");\n" +
//                "System.out.println(\"this is one\");\n" +
//                "}\n}",
//                System.currentTimeMillis());
//        System.out.println(javaTest.compile());
//        System.out.println();
//        InputOutput inputOutput1 = new InputOutput();
//        inputOutput1.setInput("123");
//        inputOutput1.setOutput("123");
//        InputOutput inputOutput2 = new InputOutput();
//        inputOutput2.setInput("333");
//        inputOutput2.setOutput("223");
//        ArrayList<InputOutput> inputOutputs = new ArrayList<>();
//        inputOutputs.add(inputOutput1);
//        inputOutputs.add(inputOutput2);
//        TestInfo testInfo = javaTest.execute(inputOutputs);
//        System.out.println(testInfo);
//    }

}

package com.example.onlineJudge.controller;

import com.example.onlineJudge.Exception.CRUDException;
import com.example.onlineJudge.entity.*;
import com.example.onlineJudge.mapper.QuestionsMapper;
import com.example.onlineJudge.mapper.Test_dataMapper;
import com.example.onlineJudge.service.Test.CppTest;
import com.example.onlineJudge.service.Test.JavaTest;
import com.example.onlineJudge.service.Test.LanguageTest;
import com.example.onlineJudge.service.Test.PythonTest;
import com.example.onlineJudge.util.DataAccessObject;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
@Controller
@RequestMapping("/test")
public class TestsController {

    private DataAccessObject dao;
    private Tests Tests;

    @Autowired
    private QuestionsMapper questionsMapper;

    @RequestMapping(value = "/question",method = RequestMethod.GET)
    String UsersControllerLogin(Model model) {
        List<Questions> questionsList = questionsMapper.selectList(null);
        model.addAttribute("name", questionsList.get(0).getName());
        model.addAttribute("description", questionsList.get(0).getDescription());
        return "/test/question";
    }

    @ResponseBody
    @RequestMapping(value = "/questions",method = RequestMethod.GET)
    Questions UsersControllerLogins() {
        List<Questions> questionsList = questionsMapper.selectList(null);
        return questionsList.get(0);
    }

    @RequestMapping(value = "/question/answer", method = RequestMethod.POST)
    public String question(int qid, String code, String languageName, Model model) throws IOException {
        long createTime = System.currentTimeMillis();
        LanguageTest languageTest = null;

        switch (languageName) {
            case "java":
                languageTest = new JavaTest(1, qid, code, createTime);
                break;
            case "cpp":
                languageTest = new CppTest(1, qid, code, createTime);
                break;
            case "python":
                languageTest = new PythonTest(1, qid, code, createTime);
                break;
        }

        String result = languageTest.compile();

        if (result != null) {
            model.addAttribute("code", code);
            model.addAttribute("compileError", result);
            return "test/compileError";
        }
        System.out.println(languageTest.getOutput());
        ArrayList<InputOutput> inputOutputs = new ArrayList<>();
        InputOutput inputOutput1 = new InputOutput();
        inputOutput1.setInput("1234");
        inputOutput1.setOutput("1234");
        inputOutputs.add(inputOutput1);
        TestInfo testInfo = languageTest.execute(inputOutputs);
        model.addAttribute("code", code);
        model.addAttribute("compileError", languageTest.getOutput());
        return "test/compile";
    }


    @RequestMapping(value = "/question/answers", method = RequestMethod.POST)
    public String questionAnswer(int qid, String code, String languageName, Model model) throws IOException {

        System.out.println(code);

//        String email = ((UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername();
        Users selectUser = new Users();
//        selectUser.setEmail(email);
        Users user = dao.selectUser(selectUser);
        System.out.println(user.getEmail());

        long createTime = System.currentTimeMillis();
        LanguageTest languageTest = null;
        switch (languageName) {
            case "java":
                languageTest = new JavaTest(user.getId(), qid, code, createTime);
                break;
            case "cpp":
                languageTest = new CppTest(user.getId(), qid, code, createTime);
                break;
        }
        if (languageTest == null) throw new IllegalArgumentException("languageName = " + languageName);
        String result = languageTest.compile();
        if (result != null) {
            model.addAttribute("code", code);
            model.addAttribute("compileError", result);
            return "test/compileError";
        }
        Test_data testData = new Test_data();
        testData.setQuestion_id(qid);
        Test_data[] testDatas = dao.selectTestData(testData);
        if (testDatas.length == 0) {
            TestInfo testInfo = new TestInfo(user.getId(), qid, new Timestamp(createTime), code, (double) 0);
            model.addAttribute("testInfo", testInfo);
            return "test/testResults";
        } else if (testDatas.length != 1) {
            throw new CRUDException("testDatas.length != 1" + testDatas);
        } else {
            TestInfo testInfo = languageTest.execute(testDatas[0].getInputOutputs());
            int line = dao.insertTestInfo(Tests);
            if (line == 0) throw new CRUDException("insert failed: " + testInfo);
            else if (line > 1) throw new CRUDException("insert size > 1" + testInfo);
            model.addAttribute("testInfo", testInfo);
            return "test/testResults";
        }


    }
}

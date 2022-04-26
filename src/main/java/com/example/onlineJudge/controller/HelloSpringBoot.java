package com.example.onlineJudge.controller;

import com.example.onlineJudge.entity.Test_data;
import com.example.onlineJudge.mapper.Test_dataMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HelloSpringBoot {
    @RequestMapping(path = {"/hallo"})
    public String HelloSpring() {
        System.out.println("hello spring boot");
        return "hello spring boot";
    }

    @Autowired
    private Test_dataMapper test_dataMapper;

    @RequestMapping(path = {"/hallo1"})
    public String HelloSpring1() {
        List<Test_data> userList = test_dataMapper.selectList(null);

        return userList.toString();
    }
}
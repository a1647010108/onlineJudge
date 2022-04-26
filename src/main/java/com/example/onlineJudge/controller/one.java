package com.example.onlineJudge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class one {


    @RequestMapping("/one")
    public String index() {

        return "/xuexiton/one";


    }

    @RequestMapping(value = "/two", method = {RequestMethod.GET})
    public String two() {

        return "/xuexiton/防作弊.html";


    }


}

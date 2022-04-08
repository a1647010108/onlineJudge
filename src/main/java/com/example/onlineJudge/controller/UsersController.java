package com.example.onlineJudge.controller;

import org.springframework.boot.Banner;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author BlackBox
 * @since 2022-04-02
 */
@Controller
@RequestMapping("/user")
public class UsersController {

    @RequestMapping("/login")
    String UsersControllerLogin(Module module){
        return "/user/login";
    }

    @ResponseBody
    @RequestMapping("/json")
    public String users(Module module){

        return null;

    }
}

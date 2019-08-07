package com.zwb.controller;

import com.zwb.entity.User;
import com.zwb.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 15:12
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServices userServices;

    @RequestMapping("/index.do")
    public String index(){
        return "index";
    }


    @RequestMapping("/reg.do")
    public String reg(){
        return "reg";
    }

    @RequestMapping("/doReg.do")
    public String doReg(User user){
        userServices.insert(user);
        return "login";
    }

}

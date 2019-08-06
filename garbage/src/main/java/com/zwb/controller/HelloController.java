package com.zwb.controller;

import com.zwb.services.HelloServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: mazhq
 * @Date: 2019/8/6 17:07
 */
@Controller
public class HelloController {

    @Autowired
    private HelloServices helloServices;
    @RequestMapping("/hello")
    public String hello(){
        helloServices.hello();
        return "hello";
    }
}

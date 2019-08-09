package com.zwb.controller;

import com.zwb.entity.Category;
import com.zwb.entity.Garbage;
import com.zwb.entity.User;
import com.zwb.services.QueryGarbageServices;
import com.zwb.vo.GarbageVO;
import com.zwb.vo.ResultVO;
import com.zwb.vo.ValidateVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: mazhq
 * @Date: 2019/8/9 9:16
 */
@Controller
@RequestMapping("/query")
public class QueryGarbageController {

    @Autowired
    public QueryGarbageServices queryGarbageServices;

    @RequestMapping("/doQueryGarbage")
    @ResponseBody
    public Map<String, Object> doQueryGarbage(@RequestBody GarbageVO garbageVO){
        String garName=garbageVO.getGarName();
        System.out.println(garName);
        List<Garbage> garbageList = queryGarbageServices.queryByName(garName);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("garbageList",garbageList);
        return map;
    }

    @RequestMapping("/queryGarbage")
    public String queryGarbage(){
        return "redirect:/user/index.do";
    }


    /*@RequestMapping("/doQueryGarbage")
    public String doQueryGarbage(GarbageVO garbageVO, ModelMap modelMap){
        List<Garbage> garbageList = queryGarbageServices.queryByName(garbageVO.getGarName());

        modelMap.addAttribute("garbageList",garbageList);


        return "forward:/user/index.do";
    }*/

}

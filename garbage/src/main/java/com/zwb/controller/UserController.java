package com.zwb.controller;

import com.zwb.entity.User;
import com.zwb.services.UserServices;
import com.zwb.vo.ResultVO;
import com.zwb.vo.ValidateVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 15:12
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServices userServices;

    @RequestMapping("/regValidate")
    @ResponseBody
    public ResultVO regValidate(@RequestBody ValidateVO validateVO){
        String username=validateVO.getUserName();
        String tel=validateVO.getUserTel();
        User valNameUser=userServices.queryByName(username);
        User valTelUser=userServices.queryByTel(tel);
        ResultVO resultVO=new ResultVO();

        if(valNameUser!=null){
            resultVO.setUserNameError("用户名已经存在啦！");
        }
        if(valTelUser!=null){
            resultVO.setuserTelError("绑定的电话号码已经存在！");
        }
       return resultVO;
    }

    @RequestMapping("/index.do")
    public String index(){
        return "index";
    }

    @RequestMapping("/doIndex.do")
    public String doIndex(){
        return "index";
    }


    @RequestMapping("/reg.do")
    public String reg(){
        return "reg";
    }

    @RequestMapping("/doReg.do")
    public String doReg(User user){
        //验证注册时候是否什么都没有填
      if(isNull(user.getUserName(),user.getUserPwd(),user.getUserTel())){
          return "reg";
      }
        userServices.insert(user);
        return "redirect:login.do";
    }


    @RequestMapping("/login.do")
    public String login(){
        return "login";
    }

    @RequestMapping("/doLogin.do")
    public String doLogin(User user, ModelMap modelMap){
        //验证注册时候是否什么都没有填
        if(isNull(user.getUserName(),user.getUserPwd())){
            return "redirect:login.do";
        }
        User user1=userServices.queryByNameAndPwd(user);
            if(user1==null){
                String nameOrPwdError="用户名或者密码错误";
                modelMap.addAttribute("nameOrPwdError",nameOrPwdError);
                return "login";
            }

        return "redirect:doIndex.do";
    }




    public boolean isNull(String a, String b)
    {
        if (("".equals(a)) || ("".equals(b)) ) {
            return true;
        }
        return false;
    }
    public boolean isNull(String a, String b, String c)
    {
        if (("".equals(a)) || ("".equals(b)) || ("".equals(c))) {
            return true;
        }
        return false;
    }
}

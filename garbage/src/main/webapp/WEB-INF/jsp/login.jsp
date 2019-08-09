
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>注册</title>
    <style>
        * { margin: 0; padding: 0; }
        html { height: 100%; }
        body { height: 100%; background: #fff url(../../images/backgroud.png) 50% 50% no-repeat; background-size: cover;}
        .dowebok { position: absolute; left: 50%; top: 50%; width: 430px; height: 800px; margin: -300px 0 0 -215px; border: 1px solid #fff; border-radius: 20px; overflow: hidden;}
        .logo { width: 104px; height: 104px; margin: 50px auto 80px; background: url(../../images/login.png) 0 0 no-repeat; }
        .form-item { position: relative; width: 360px; margin: 0 auto; padding-bottom: 30px;}
        .form-item input { width: 288px; height: 48px; padding-left: 70px; border: 1px solid #fff; border-radius: 25px; font-size: 18px; color: #fff; background-color: transparent; outline: none;}
        .form-item button { width: 360px; height: 50px; border: 0; border-radius: 25px; font-size: 18px; color: #1f6f4a; outline: none; cursor: pointer; background-color: #fff; }
        #userName { background: url(../../images/emil.png) 20px 14px no-repeat; }
        #password { background: url(../../images/password.png) 23px 11px no-repeat; }
        #repPassword{ background: url(../../images/password.png) 23px 11px no-repeat; }
        #userTel{ background: url(../../images/password.png) 23px 11px no-repeat; }
        .username-tip { display: none; position: absolute; left: 20px; top: 52px; font-size: 14px; color: #f50; }
        .pwd-tip { display: none; position: absolute; left: 20px; top: 90px; font-size: 14px; color: #f50; }
        .rep-pwd-tip { display: none; position: absolute; left: 20px; top: 140px; font-size: 14px; color: #f50; }
        .tel-tip { display: none; position: absolute; left: 20px; top: 190px; font-size: 14px; color: #f50; }
        .reg-bar { width: 360px; margin: 20px auto 0; font-size: 14px; overflow: hidden;}
        .reg-bar a { color: #fff; text-decoration: none; }
        .reg-bar a:hover { text-decoration: underline; }
        .reg-bar .reg { float: left; }
        .reg-bar .forget { float: right; }
        .dowebok ::-webkit-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok ::-moz-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}
        .dowebok :-ms-input-placeholder { font-size: 18px; line-height: 1.4; color: #fff;}

        @media screen and (max-width: 500px) {
            * { box-sizing: border-box; }
            .dowebok { position: static; width: auto; height: auto; margin: 0 30px; border: 0; border-radius: 0; }
            .logo { margin: 50px auto; }
            .form-item { width: auto; }
            .form-item input, .form-item button, .reg-bar { width: 100%; }
        }
    </style>
</head>
<body>
<form action="/user/doLogin.do" onsubmit="return validate()" method="post">
    <div class="dowebok">
        <div class="logo"></div>
        <div class="form-item">
            <span id="nameOrPwdError" name="nameOrPwdError" style="color: red">${nameOrPwdError}</span>
        </div>
        <div class="form-item">
            <input id="userName" name="userName" type="text"  autocomplete="off" placeholder="用户名" onblur="validateUserName(this)">
            <span  id="userNameError" style="color: red"></span>
        </div>

        <div class="form-item">
            <input id="password" name="userPwd"type="password" autocomplete="off" placeholder="登录密码" onblur="validatePassword(this)">
            <span  id="pwdError" style="color: red"></span>
        </div>


        <div class="form-item"><button id="submit">登 录</button></div>

        <div class="reg-bar">
            <a class="reg" href="/user/reg.do">立即注册</a>
            <a class="forget" href="javascript:">忘记密码</a>
        </div>
    </div>
</form>


<script>
    var panduan=false;
    function validateUserName(th){

        var reg=/^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
        if(reg.test(th.value)==false){
            document.getElementById("userNameError").innerHTML="输入的用户名由英文字母和数字组成的4-16位字符，以字母开头";
            th.style.border="1px solid red";
            /*$('.username-tip').show()*/
            panduan=true;
        }else{
            document.getElementById("userNameError").innerHTML=" ";
            th.style.border="";
            panduan=false;
        }
    }

    function validatePassword(th){
        var reg=/^[a-zA-Z0-9]{4,10}$/;
        if(reg.test(th.value)==false){
            document.getElementById("pwdError").innerHTML="密码不能含有非法字符，长度在4-10之间";
            th.style.border="1px solid red";
            /*$('.pwd-tip-tip').show()*/
            panduan=true;
        }else{
            document.getElementById("pwdError").innerHTML=" ";
            th.style.border="";
            panduan=false;
        }

    }

    function validate(){
        if(panduan){
            return false;
        }else{
            return true;
        }
    }
    /*$(function () {
        $('input').val('')
        $('#submit').on('click', function () {
            $('.tip').show()
        })
    })*/
</script>



</body>
</html>
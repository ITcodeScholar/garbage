
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>大数据垃圾分类平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../../css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../../js/cufon-yui.js"></script>
<script type="text/javascript" src="../../js/arial.js"></script>
<script type="text/javascript" src="../../js/cuf_run.js"></script>
<!-- CuFon ends -->

</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="index.jsp"><span>IQ</span>biz<small>Simple web template</small></a></h1>
    </div>
    <div class="menu_nav">
      <ul>
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="../../support.html">Support</a></li>
        <li><a href="../../about.html">About Us</a></li>
        <li><a href="../../blog.html">Blog</a></li>
        <li><a href="../../contact.html">联系我们</a></li>
        <li><a href="/user/reg.do" >注册</a></li>
        <li><a href="/user/login.do">登录</a></li>
      </ul>
    </div>


    <div class="clr"></div>
    <div class="hbg"><img src="../../images/header_images.jpg" width="670" height="298" alt="header images" class="fr" />
      <div class="info fl">
        <%--<h3>love</h3>--%>
        <span style="font-size:35px; color: #fdfdfd">关爱地球</span><br><br><br>
          <span style="font-size:35px; color: #fdfdfd">从分类开始</span>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="content">
    <div class="mainbar">
      <div class="article">
        <h2><span id="getCategoryName" name="getCategoryName"></span></h2>
        <div class="clr"></div>

        <img id="" src="../../images/images_1.jpg" width="613" height="193" alt="image" />
        <span id="getGarbageName" name="getGarbageName"></span>
        <span id="getPenalty" name="getPenalty"></span>
        <span id="getResolveTime" name="getResolveTime"></span>
        <span id="getCategoryBody" name="getCategoryBody"></span>
        <span id="getCategoryExplain" name="getCategoryExplain"></span>
        <span id="getCategoryRequire" name="getCategoryRequire"></span>


         <p class="spec"><a href="#" class="com fr">Comments (3)</a> <a href="#" class="rm fl">Read more</a></p>
        <div class="clr"></div>
      </div>

      <div class="pagenavi"><span class="pages">Page 1 of 2</span><span class="current">1</span><a href="#" title="2">2</a><a href="#" >&raquo;</a></div>
    </div>
    <div class="sidebar">
      <span style="color: #1f6f4a;font-size: 25px;margin-left:20px">垃圾分类查询</span>
      <div class="gadget">
            <input type="text"  name="garName" id="garbageName" placeholder="请输入垃圾名称"/>
            <input  type="button" style="background: url(../../images/search.gif);width: 34px;height: 29px" value="" onclick="queryGarbage()"/>
      </div>
      <div class="gadget">
        <h2 class="star"><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">TemplateInfo</a></li>
          <li><a href="#">Style Demo</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Archives</a></li>
          <li><a href="#" title="Website Templates">Web Templates</a></li>
        </ul>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  <script type="text/javascript">
    function queryGarbage() {
        var gname=document.getElementById("garbageName");

        $.ajax({

            "url":"/query/doQueryGarbage",
            "method":"post",
            "dataType":"json",
            "success":function (data) {
                 var garbageList=data.replies;
                for(var i=0;i<data.replies.length;i++) {
                    var name = arr[i].replier;
                    var content = arr[i].reply;
                    var time = arr[i].time;
                }
            },
            "data":'{"garbageName":"'+ gname.value+'"}'






        })



        /*var request = new XMLHttpRequest();
        request.open("POST","/query/doQueryGarbage");
        request.setRequestHeader("Content-Type", "application/json");
        request.onreadystatechange=function () {
            var responseData = eval('(' + request.responseText + ')');

              document.getElementById("getCategoryName").innerHTML=responseData.

        }
        var gname=document.getElementById("garbageName");

        request.send('{"garbageName":"' +gname.value+'"}');*/


        
    }
  </script>
  <div class="fbg">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">© Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Collect from <a href="http://www.moobnn.com/" title="网站模板" target="_blank">网站模板</a></p>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>
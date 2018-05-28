<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/18
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录_互贷网</title>
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/public.css">
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/new_login-43aa0a86d9.css">
    <script src="https://img.hudai.com/www_hudai/js/shence/index.js"></script>
    <script src="https://img.hudai.com/www_hudai/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div class="login-head">
    <a href="/">
        <img src="https://img.hudai.com/www_hudai/images/public/web_logo_szn_yhcg.gif" alt=""></a>
</div>
<div class="wrapper">
    <div class="container">
        <div class="login-container">
            <div class="login-shadow"></div>
            <div class="login-header">
                <span>登录</span>
                <a href="register.jsp">立即注册</a>
            </div>
            <div class="user-container">
                <div class="user-info">
                    <div class="slide-swiper">
                        <input type="text" value="" style="display: none;" name="username">
                        <input type="text" placeholder="用户名" id="username" maxlength="11" autocomplete="off">
                        <span class="right-sign"  ></span>
                        <i class="cancel-input"></i>
                    </div>
                </div>
            </div>
            <div class="user-container">
                <div class="user-info pwd-info">
                    <div class="slide-swiper">
                        <input type="password"  value="" style=" display:none;">
                        <input id="userpass"  type="password" placeholder="登录密码" maxlength="16" autocomplete="off">
                        <span class="right-sign"></span>
                        <i class="cancel-input"></i>
                    </div>
                </div>
            </div>
            <div class="forget-pwd">
                <a href="retrieve.jsp">忘记密码？</a>
            </div>
            <button id="login_btn" class="login-action">
                登 录
            </button>
        </div>
    </div>
</div>
<div class="login-footer">
    <p>版权所有 © 1710b第三组 <br/></p>
</div>
<script>
    $("#login_btn").on("click",function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/login.do",
            type:"post",
            data:{"username":$("#username").val(),"userpass":$("#userpass").val()},
            dataType:"json",
            success:function(results){
                if(results=="userNo"){
                    alert("证号密码错误！")
                }else if(results=="userNo2"){
                    alert("你的账号未启用")
                }else  if (results=="userNo3"){
                      alert("你的账号已经被加入黑名单!")
                } else {
                    alert("登录成功!");
                    location.href = "index.jsp";
                }
            },
            error:function(){
                alert("登录出错!");
            }
        });
    });
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/18
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>找回登录密码_互贷网</title>
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/public.css">
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/forget_password-07d7a08290.css">
    <script src="https://img.hudai.com/www_hudai/js/shence/index.js"></script>
    <script src="https://img.hudai.com/www_hudai/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div class="login-head">
    <a href="/" class="logo">
        <img src="https://img.hudai.com/www_hudai/images/public/web_logo_szn_yhcg.gif" alt="">
    </a>
</div>
<div class="wrapper">
    <div class="container">
        <div class="login-container">
            <div class="login-shadow"></div>
            <div class="login-header">
                <span>忘记密码</span>
                <a href="login.jsp">返回 &gt;</a>
            </div>
            <div class="user-container">
                <div class="user-info" id="above_info">
                    <div class="slide-swiper">
                        <input type="text" style="display: none;" value="" name="username">
                        <input id="phone_number" type="text" placeholder="已绑定手机号" maxlength="11">
                        <span class="right-sign"></span>
                        <i class="cancel-input"></i>
                    </div>
                    <div class="slide-swiper">
                        <input type="password" style="display: none;" value="" name="username">
                        <input id="pass_word" autocomplete="new-password" type="text" placeholder="设置新登录密码" maxlength="16">
                        <span class="right-sign resetpwd-sign"></span>
                        <i class="cancel-input reset-cancel-input"></i>
                        <b class="eye-close"></b>
                    </div>
                </div>
            </div>
            <div class="error" id="name_error"></div>
            <div class="user-container" id="code_hanlder">
                <div class="user-info" id="under_info">
                    <div class="slide-swiper">
                        <input type="text" id="img_code" placeholder="图形验证码" maxlength="4">
                        <i class="cancel-input cancel-imgcode"></i>
                        <img src="https://www.hudai.com/captcha/default?kscelXIx" id="yzmimg" alt="图形验证码">
                    </div>
                    <div class="slide-swiper msg-box">
                        <input id="phone_yzm" type="text" placeholder="手机验证码" maxlength="6">
                        <button id="send_msg">获取验证码</button>
                        <span class="right-sign"></span>
                        <i id="yzm_cancel_input" class="cancel-input"></i>
                    </div>
                </div>
            </div>
            <div class="error" id="code_error"></div>
            <button id="login_btn" class="login-action">
                下一步
            </button>
            <button class="reset-pwd" id="reset_password">确认并登录</button>
        </div>
        <div class="pwd-check">
            <h4 class="check-title">登录密码须包含：</h4>
            <div class="check-tip"><span id="check_step1"></span><p>6-16个字符</p></div>
            <div class="check-tip"><span id="check_step2"></span><p>大写或小写英文字母</p></div>
            <div class="check-tip"><span id="check_step3"></span><p>至少一个数字</p></div>
            <div class="pwd-descibe">密码强度：<span id="check_leval">低</span></div>
            <div class="pipe">
                <div></div>
            </div>
        </div>
    </div>
</div>
<div class="login-footer">
    <p>版权所有 © 1710b第三组 <br/></p>
</div>
<script src="https://img.hudai.com/www_hudai/js/forget_password-dec7701f9f.js"></script>
</body>
</html>

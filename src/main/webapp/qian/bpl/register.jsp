<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/18
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册_互贷网</title>
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/public.css">
    <link rel="stylesheet" href="https://img.hudai.com/www_hudai/css/new_register-a6dc5405bf.css">
    <script src="https://img.hudai.com/www_hudai/js/shence/index.js"></script>
    <script src="https://img.hudai.com/www_hudai/js/jquery-1.11.3.min.js"></script>
    <jsp:include page="bootcommon.jsp"  flush="true"></jsp:include>
</head>
<body>
<div class="login-head">
    <a href="/" class="logo">
        <img src="https://img.hudai.com/www_hudai/images/public/web_logo_szn_yhcg.gif" alt="">
    </a>
</div>
<div class="wrapper" id="one2">
    <div class="container">
        <div class="login-container">
            <div class="login-shadow"></div>
            <div class="login-header">
                <span>注册</span>
                <a href="login.jsp">立即登录</a>
            </div>
            <div class="user-container">
                <div class="user-info">
                    <input id="userphone" type="text" placeholder="手机号码" maxlength="11">
                    <i class="cancel-input"></i>
                </div>
            </div>
            <div class="error" id="name_error"></div>
            <div class="user-container">
                <div class="user-info pwd-info">
                    <%--<label for="vcode">输入验证码</label>--%>
                    <input type="text" name="number" id="vcode2"  placeholder="请输入验证码">
                    <%--<input type="button" id="getYzm" onclick="settime(this)" value="免费获取验证码"><br>--%>

                    <%--  <input id="userpass" type="password" autocomplete="new-password"  placeholder="设置密码" maxlength="16">
                      <span class="right-sign"></span>
                      <i class="cancel-input"></i>--%>
                </div>
            </div>
            <button id="getYzm2" class="btn btn-primary" >
                发送验证码
            </button>
            <button id="xia"   class="btn btn-primary" >
                下一步
            </button>
        </div>
            </div>
        </div>

    <div class="wrapper"  style="display:none"  id="two2">
        <div class="container">
            <div class="login-container">
                <div class="login-shadow"></div>
                <div class="login-header">
                    <span>注册</span>
                </div>
                <div class="user-container">
                    <div class="user-info">
                        <input id="userpass" type="text" placeholder="密码" maxlength="6">
                        <i class="cancel-input"></i>
                    </div>
                </div>
                <div class="user-container">
                    <div class="user-info">
                        <input id="username" type="text" placeholder="用户名" maxlength="6">
                        <i class="cancel-input"></i>
                    </div>
                </div>
                <button id="zhuce"   class="btn btn-primary" >
                    注册
                </button>
            </div>
        </div>
    </div>

    </div>
</div>
<div class="login-footer">
    <p>版权所有 © 1710b第三组 <br/></p>
</div>
<script>
    $("#zhuce").on("click",function(){
        var userpass = $("#userpass").val();
        var yzphone = /^\d{6}$/
        if(userpass == "" || userpass == null){
            alert("密码不为空!");
            return false;
        }else if(!yzphone.test(userpass)){
            alert("密码格式不正确");
            return false;
        }else{
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/registerpuserlist.do",
            type:"post",
            data:{"userphone":$("#userphone").val(),"userpass":userpass,"username":$("#username").val()},
            dataType:"json",
            success:function(results){
                alert("注册成功!");
                location.href = "index.jsp";
            },
            error:function(){
            }
        });
    })
</script>


<!-- 短信验证码 -->
<script type="text/javascript">
    $("#getYzm2").on("click",function(){
        var yzphone = /^1[34578]\d{9}$/;
        var phone = $("#userphone").val();
        if(phone == "" || phone == null){
            alert("手机号不能为空!") ;
            return false;
        }else if(!yzphone.test(phone)){
            alert("手机号格式不正确");
            return false;
        }else{
            alert("验证码已发送")
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/duanXin.do",
            type:"post",
            data:{"phone":phone},
            dataType:"json",
            async:false,
            success:function(returns){
            }
        });
    })
    $("#xia").on("click",function() {
        var vcode = $("#vcode2").val();
        var phone = $("#userphone").val();
        var yzphone = /^\d{6}$/
        if(vcode == "" || vcode == null){
            alert("验证码不为空!");
            return false;
        }else if(!yzphone.test(vcode)){
            alert("验证码格式不正确");
            return false;
        }else{
            alert("后台判断中")
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/addpanduanphone.do",
            type:"post",
            data:{"phone":phone,"yanzma":vcode},
            dataType:"json",
            async:false,
            success:function(returns){
                if(returns==1){
                    $("#two2").show();
                    $("#one2").hide();
                }else if(returns==2){
                    alert("你的验证码不正确！")
                }else{
                    alert("你的手机号已注册！")
                }
            }
        });

    })
</script>

</body>
</html>
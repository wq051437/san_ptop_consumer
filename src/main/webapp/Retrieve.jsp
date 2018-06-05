<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/14
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>找回密码</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="Keywords" content="网站关键词">
    <meta name="Description" content="网站介绍">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/userformwork/css/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/userformwork/css/iconfont.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/userformwork/css/reg.css">
    <script src="<%=request.getContextPath()%>/css/userformwork/js/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/css/userformwork/js/agree.js"></script>
    <script src="<%=request.getContextPath()%>/css/userformwork/js/login.js"></script>
</head>
<body>
<div id="ajax-hook"></div>
<div class="wrap"  id="one">
    <div class="wpn">
        <div class="form-data find_password">
            <h4>找回密码</h4>
            <form id="grGetPassForm">
                <div>
                    <p class="p-input pos">
                        <label >手机号</label>
                        <input type="text" id="userphone" name="userphone">
                    </p>
                </div>
                <div>
                    <p class="p-input pos" id="sendcode">
                        <label for="vcode">输入验证码</label>
                        <input type="text" name="number" id="vcode">
                        <%--<input type="button" id="getYzm" onclick="settime(this)" value="免费获取验证码"><br>--%>
                        <a  id="getYzm" class="send">发送验证码</a>
                    </p>
                </div>
                <center>
                    <div id="message"></div>
                    <div id="message2"></div>
                </center>
                <div>
                    <button class="lang-btn" type="button" id="grGetPassButton">找回密码</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="wrap" style="display:none"    id="two">
    <div class="wpn">
        <div class="form-data find_password">
            <h4>修改密码</h4>
            <form id="">
                <div>
                    <p class="p-input pos">
                        <label>新密码</label>
                        <input type="text" id="userpass" name="userpass">
                    </p>
                </div>
                <center>
                    <div id="message3"></div>
                </center>
                <div>
                    <button class="lang-btn" type="button" id="xiugaimima">确定</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 短信验证码 -->
<script type="text/javascript">
    $("#getYzm").on("click",function(){
        var yzphone = /^1[34578]\d{9}$/;
        var phone = $("#userphone").val();
        if(phone == "" || phone == null){
            $("#message").html("<font color='red'>手机号不能为空!</font>");
            return false;
        }else if(!yzphone.test(phone)){
            $("#message").html("<font color='red'>手机号格式不正确</font>");
            return false;
        }else{
            $("#message").html("");
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/duanXin.do",
            type:"post",
            data:{"phone":phone},
            dataType:"json",
            async:false,
            success:function(returns){
            }
        });
    })



    $("#grGetPassButton").on("click",function(){
        var vcode = $("#vcode").val();
        var phone = $("#userphone").val();
        var yzphone = /^\d{6}$/
        if(vcode == "" || vcode == null){
            $("#message2").html("<font color='red'>验证码不为空!</font>");
            return false;
        }else if(!yzphone.test(vcode)){
            $("#message2").html("<font color='red'>验证码格式不正确</font>");
            return false;
        }else{
            $("#message2").html("");
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/addpanduanphone.do",
            type:"post",
            data:{"phone":phone,"yanzma":vcode},
            dataType:"json",
            async:false,
            success:function(returns){
                if(returns==1){
                    alert("你的用户未注册！无法修改密码")
                }else if(returns==2){
                    alert("你的验证码不正确！")
                }else{
                    $("#one").hide();
                    $("#two").show();
                }
            }
        });

    })

    $("#xiugaimima").on("click",function(){
        var userpass = $("#userpass").val();
        var yzphone = /^\d{6}$/
        if(userpass == "" || userpass == null){
            $("#message3").html("<font color='red'>密码不为空!</font>");
            return false;
        }else if(!yzphone.test(userpass)){
            $("#message3").html("<font color='red'>密码格式不正确</font>");
            return false;
        }else{
            $("#message3").html("");
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/updateusermima.do",
            type:"post",
            data:{"userpass":userpass},
            dataType:"json",
            async:false,
            success:function(returns){
                alert("成功！返回登录界面。")
                top.location = "<%=request.getContextPath()%>/login.jsp";
            }
        });

    })


</script>
</body>
</html>
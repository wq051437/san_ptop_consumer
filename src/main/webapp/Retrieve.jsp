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
<div class="wrap">
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
                        <label for="veri-code">输入验证码</label>
                        <input type="text" name="code" id="veri-code">
                        <%--<input type="button" id="getYzm" onclick="settime(this)" value="免费获取验证码"><br>--%>
                        <a href="javascript:settime(this);" id="getYzm" class="send">发送验证码</a>
                    </p>
                </div>
                <center>
                    <div id="message"></div>
                </center>
                <div>
                    <button class="lang-btn" type="button" id="grGetPassButton">找回密码</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 短信验证码 -->
<script type="text/javascript">

    var count=60;
    function settime(val) {
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
            url:"<%=request.getContextPath()%>/userController/getInterfaceSMS.do",
            type:"post",
            data:{"phone":phone},
            dataType:"json",
            async:false,
            success:function(returns){
            },
            error:function(){
                alert("请联系管理员！！！")
            }
        });
    }


</script>
</body>
</html>
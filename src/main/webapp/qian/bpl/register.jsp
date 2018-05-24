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
                <span>注册</span>
                <a href="login.jsp">立即登录</a>
            </div>
            <div class="user-container">
                <div class="user-info">
                    <input id="userphone" type="text" placeholder="手机号码" maxlength="11">
                    <span class="right-sign"></span>
                    <i class="cancel-input"></i>
                </div>
            </div>
            <div class="error" id="name_error"></div>
            <div class="user-container">
                <div class="user-info pwd-info">
                    <input id="userpass" type="password" autocomplete="new-password"  placeholder="设置密码" maxlength="16">
                    <span class="right-sign"></span>
                    <i class="cancel-input"></i>
                </div>
            </div>
            <button id="zhuce" class="login-action">
                注册
            </button>

            <%--<input type="text" name="code" class="txtinput" id="code" placeholder="请输短信验证码"/>
            <input type="button" id="getYzm" onclick="settime(this)" value="免费获取验证码"><br>--%>
            <%--<input type="text" class="form-control" name="code" id="code"  placeholder="请输入收到的验证码">
            <button  type="button" class="form-password form-control" id="anniu" onclick="fasongyz()">发送验证码</button>
            <button  type="button" class="btn btn-default" id="anniu" >(<strong class="a">60</strong>秒 )</button>--%>
            <span id="span1"></span>
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
          alert(12)
          $.ajax({
              url:"<%=request.getContextPath()%>/quserController/register.do",
              type:"post",
              data:{"userphone":$("#userphone").val(),"userpass":$("#userpass").val()},
              dataType:"json",
              success:function(results){
                  if(results=="userNo"){
                      alert("证号密码错误！")
                  }else{
                      alert("注册成功!");
                      location.href = "index.jsp";
                  }
              },
              error:function(){
                  alert("登录出错!");
              }
          });

      })


  </script>

<!-- 短信验证码 -->
<script type="text/javascript">

    /*function fasongyz(){
        //短信
        var phone=$("#userphone").val();
        if(phone==null||phone==""||phone.length != 11){
            alert("请输入合法号码")
        }else{
            $("#anniu").prop("disabled",true);
            $("#anniu").html("再次发送")
            $(document).ready(function() {
                var times = 60 * 100; // 60秒
                countTime = setInterval(function() {
                    times = --times < 0 ? 0 : times;
                    var ms = Math.floor(times / 100).toString();

                    if(ms.length <= 1) {
                        ms = "0" + ms;
                    }
                    var hm = Math.floor(times % 100).toString();
                    if(hm.length <= 1) {
                        hm = "0" + hm;
                    }
                    if(times == 0) {
                        $("#anniu").removeAttr("disabled");
                        clearInterval(countTime);
                    }
                    // 获取分钟、毫秒数
                    $(".a").html(ms);
                    $(".b").html(hm);
                }, 10);
            });

            $.ajax({
                url:"/quserController/getInterfaceSMS.do",
                type:"post",
                data:{"phone":phone},
                dataType:"json",
                async:false,
                success:function(returns){
                },
                error:function(){
                    alert("请联系管理员！！！")
                }
            })
        }
    }*/


    var count=60;
    function settime(val) {
        var yzphone = /^1[34578]\d{9}$/;
        var phone = $("#userphone").val();
        if(phone == "" || phone == null){
            $("#span1").html("<font color='red'>手机号不能为空!</font>");
            return false;
        }else if(!yzphone.test(phone)){
            $("#span1").html("<font color='red'>手机号格式不正确</font>");
            return false;
        }else{
            $("#span1").html("");
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/getInterfaceSMS.do",
            type:"post",
            data:{"phone":phone},
            dataType:"json",
            success:function(result){
            },
            error:function(){
                alert("获取错误!");
            }
        });
        yanzheng60s(val)
    }
    function yanzheng60s(val){
        if (count == 0) {
            val.removeAttribute("disabled");
            val.value = "获取验证码";
            count = 60;
            return false;
        } else {

            val.setAttribute("disabled", true);
            $("").val("重新发送(" + count + ")");
            count--;
        }
        setTimeout(function () {
            yanzheng60s(val);
        }, 1000);
    }

</script>

</body>
</html>
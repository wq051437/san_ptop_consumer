<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>网贷管理系统</title>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>
	<style type="text/css">
		html,body {
			height: 100%;
		}
		.box {
			filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
			background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
			background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);

			margin: 0 auto;
			position: relative;
			width: 100%;
			height: 100%;
		}
		.login-box {
			width: 100%;
			max-width:500px;
			height: 400px;
			position: absolute;
			top: 50%;

			margin-top: -200px;
			/*设置负值，为要定位子盒子的一半高度*/

		}
		@media screen and (min-width:500px){
			.login-box {
				left: 50%;
				/*设置负值，为要定位子盒子的一半宽度*/
				margin-left: -250px;
			}
		}

		.form {
			width: 100%;
			max-width:500px;
			height: 275px;
			margin: 25px auto 0px auto;
			padding-top: 25px;
		}
		.login-content {
			height: 300px;
			width: 100%;
			max-width:500px;
			background-color: rgba(255, 250, 2550, .6);
			float: left;
		}
		.input-group {
			margin: 0px 0px 30px 0px !important;
		}
		.form-control,
		.input-group {
			height: 40px;
		}
		.form-group {
			margin-bottom: 0px !important;
		}
		.login-title {
			padding: 20px 10px;
			background-color: rgba(0, 0, 0, .6);
		}
		.login-title h1 {
			margin-top: 10px !important;
		}
		.login-title small {
			color: #fff;
		}

		.link p {
			line-height: 20px;
			margin-top: 30px;
		}
		.btn-sm {
			padding: 8px 24px !important;
			font-size: 16px !important;
		}
	</style>
</head>
<body>
<div class="box">
	<div class="login-box">
		<div class="login-title text-center">
			<h1><small>登录</small></h1>
		</div>
		<div class="login-content ">
			<div class="form">
				<form   id="loginForm">
					<div class="form-group">
						<div class="col-xs-12  ">
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<input type="text"  id="userphone"   name="userphone" class="form-control" placeholder="手机号">
								<center><span id="messageqy"></span></center>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-12  ">
							<div class="input-group">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<input type="password"    id="userpass" name="userpass" class="form-control" placeholder="密码">
								<center><span id="messageqy1"></span></center>

							</div>
						</div>
					</div>
					<div class="form-group form-actions">
						<div class="col-xs-4 col-xs-offset-4 ">
<%--
							<button id="loginButton" class="btn btn-sm btn-info"><span class="glyphicon glyphicon-off"></span> 登录</button>
--%>
							<input  type="button" id="loginButton"  class="btn btn-sm btn-info"   value="登录"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-12 link">
							<p class="text-center remove-margin"><small>忘记密码？</small> <a href="/Retrieve.jsp" ><small>找回</small></a>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $("#loginButton").on("click",function(){
        var yzpass = /^(([A-Z])+|([a-z]+)|(\d+)){6}$/;
        var companypass = $("#userpass").val();
        if(companypass==null || companypass==""){
            $("#messageqy1").html("<font color='red'>密码不能为空</font>");
            return false;
        }else if(!yzpass.test(companypass)){
            $("#messageqy1").html("<font color='red'>密码格式不正确,至少六位</font>");
            return false;
        }else{
            $("#messageqy1").html("");
        };
        var yzphone = /^1[34578]\d{9}$/;
        var phone = $("#userphone").val();
        if(phone == "" || phone == null){
            $("#messageqy").html("<font color='red'>手机号不能为空!</font>");
            return false;
        }else if(!yzphone.test(phone)){
            $("#messageqy").html("<font color='red'>手机号格式不正确</font>");
            return false;
        }else{
            $("#messageqy").html("");
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/userController/login.do",
            type:"post",
            data:$("#loginForm").serialize(),
            dataType:"json",
            success:function(results){
                if(results=="userNo"){
                    alert("证号密码错误！")
                }else{
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
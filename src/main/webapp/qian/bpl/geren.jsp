<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/21
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootcommon.jsp"  flush="true"></jsp:include>
    <script src="<%=request.getContextPath() %>/uploadify/jquery.uploadify.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/uploadify/jquery.uploadify.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/uploadify/uploadify.css">
</head>
<body>
<div class="row">
    <div class="col-md-2"  id="zhao">


    </div>
    <div class="col-md-2">
        <input type="hidden" name="imageurl" id="imageurl"/>
        <input type="file" id="file" name="image"/>
        <div id="show"></div><br/>
    </div>
    <div class="col-md-8">

    </div>
    <div class="col-md-12">
        <table class="table table-hover">
            <tbody>
            <tr>
                <td><font  size="5px">用户名</font></td>
                <td id="ming"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> <font  size="5px">实名认证</font></td>
                <td  id="shiming"></td>
                <td  id="shiming2"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> <font  size="5px">登录密码</font></td>
                <td id="mima"></td>
                <td  id="shezhi"><a onclick="mima()"  >设置</a></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div   style="display:none"  id="xiugai">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="in" class="col-sm-2 control-label">原密码</label>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" id="in" placeholder="。。。"   onblur="shubiao();">
                                    <span id="messageqy"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pa" class="col-sm-2 control-label">新密码</label>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" id="pa" placeholder="。。。"    >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pa2" class="col-sm-2 control-label">重复新密码</label>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" id="pa2" placeholder="。。。"   onblur="shubiao2();">
                                    <span id="messageqy1"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <input  type="button" id="queren"  class="btn btn-default"   value="确认"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </td>
                <td></td>
            </tr>
            <tr>
                <td> <font  size="5px">绑定邮箱</font></td>
                <td id="youxiang"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> <font  size="5px">绑定手机</font></td>
                <td id="shouji"></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td> <font  size="5px">交易密码</font></td>
                <td  id="jiaoyi"></td>
                <td  id="shezhi2"><a onclick="mima2()"  >设置</a></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div   style="display:none"  id="xiugai2">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="inpu" class="col-sm-2 control-label">原密码</label>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" id="inpu" placeholder="。。。"   onblur="onBlur();">
                                    <span id="mess"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputpa" class="col-sm-2 control-label">新密码</label>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" id="inputpa" placeholder="。。。"    >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputpa2" class="col-sm-2 control-label">重复新密码</label>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" id="inputpa2" placeholder="。。。"   onblur="onBlur2();">
                                    <span id="message"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <input  type="button" id="xiu"  class="btn btn-default"   value="确认"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </td>
                <td></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<script>
    var  userpa=null;
    var  userjiaoyi=null;
    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/gerenxinxi.do",
            type:"post",
            dataType:"json",
            success:function(results){
                for(var  i=0;i<results.length;i++){
                    $("#ming").html("<font  size='4px'>"+results[i].username+"</font>");
                    $("#shiming").html("<font  size='4px'>"+results[i].gridcard+"</font>");
                    $("#shiming2").html("<font  size='4px'>"+results[i].grname+"</font>");
                    userpa=  results[i].userpass;
                    userjiaoyi=  results[i].jiaoyimima
                    if(results[i].userpass!=null){
                        $("#mima").html("已设置");
                    }else{
                        $("#mima").html("请设置你的密码");
                    }
                    $("#shouji").html("<font  size='4px'>"+results[i].userphone+"</font>");
                    $("#youxiang").html("<font  size='4px'>"+results[i].useremily+"</font>");
                    if(results[i].jiaoyimima!=null){
                        $("#jiaoyi").html("已设置");
                    }else{
                        $("#jiaoyi").html("请设置你的交易密码");
                    }
                    if(results[i].grphoto==null){
                      $("#zhao").html("<img src='<%=request.getContextPath()%>/css/timg (5).jpg'  height='150' width='200'   class='img-circle'/>")
                    }else  {
                        $("#zhao").html("<img src='"+results[i].grphoto+"'  height='150' width='200'   class='img-circle'/>")
                    }
                }
            }
        })
    })
</script>
<script>
    function  mima(){
        var  aa= document.getElementById('shezhi');
        if(aa.innerText=="设置"){
            $("#xiugai").show();
            $("#shezhi").html("<a onclick='mima()' >取消设置</a>");
        }else{
            $("#xiugai").hide();
            $("#shezhi").html("<a onclick='mima()' >设置</a>");
        }
    }
    function mima2() {
        var  aa= document.getElementById('shezhi2');;
        if(aa.innerText=="设置"){
            $("#xiugai2").show();
            $("#shezhi2").html("<a onclick='mima2()' >取消设置</a>");
        }else{
            $("#xiugai2").hide();
            $("#shezhi2").html("<a onclick='mima2()' >设置</a>");
        }
    }
</script>
<script>
    function    shubiao(){
        var   passw=  $("#in").val();
        if(userpa==passw){
            $("#messageqy").html("");
        }else  {
            $("#messageqy").html("<font color='red'>密码与原密码不符</font>");
        }
    }
    function  shubiao2(){
        var   passw2=  $("#pa").val();
        var   passw3=  $("#pa2").val();
        if(passw2==passw3){
            $("#messageqy1").html("");

        }else{
            $("#messageqy1").html("<font color='red'>与上述密码不符</font>");
        }
    }
    $("#queren").on("click",function(){
        var   passw2=  $("#pa").val();
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updatemima.do",
            type: "post",
            data: {"userpass":passw2},
            dataType: "json",
            success: function (results) {
                alert("修改成功，请重新登录！")
                top.location = "<%=request.getContextPath()%>/qian/bpl/login.jsp";
            }
        })
    })
</script>

<script>
    function   onBlur(){
        var   passw=  $("#inpu").val();
        if(userjiaoyi==passw){
            $("#mess").html("");
        }else{
            $("#mess").html("<font color='red'>密码与原密码不符</font>");
        }
    }
    function  onBlur2() {
        var   passw=  $("#inputpa").val();
        var   passw2=  $("#inputpa2").val();
        if(passw==passw2&&passw!=userpa){
            $("#message").html("");
        }else if(passw==userpa){
            $("#message").html("<font color='red'>为保证你的用户交易安全，用户密码与交易密码不能相同！</font>");
        }else{
            $("#message").html("<font color='red'>与上述密码不符</font>");
        }
    }

    $("#xiu").on("click",function(){
        var   passw2=  $("#inputpa").val();
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updatejiaoyimima.do",
            type: "post",
            data: {"jiaoyi":passw2},
            dataType: "json",
            success: function (results) {
                alert("修改成功")
                location.reload();
            }
        })
    })
</script>
<script>
    $('#file').uploadify({
        'swf'      : '<%=request.getContextPath() %>/uploadify/uploadify.swf',
        /* 上传的controller地址  */
        'uploader' : '<%=request.getContextPath() %>/quserController/uploadfile.do',
        //'fileExt':          '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
        'fileTypeExts'  :   '*.gif;*.jpg;*.png;*.bmp',  //允许上传的文件格式
        'multi'             :   false,   //是否开启多文件上传
        'debug'           :   false,
        'method'            :   'post', //提交方式
        'fileObjName':'image',    //服务器 接收的文件名称
        'buttonText':'上传头像',		 //按钮值
        'onUploadSuccess' : function(file,data) {
            //参数data服务端输出返回的信息
            var html = '<img src='+data+' width="100" height="100">';
            $("#show").append(html);
            $("[name='imageurl']").val(data);
            location.reload();
        },
    });
</script>
</body>
</html>

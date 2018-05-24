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
</head>
<jsp:include page="bootcommon.jsp"  flush="true"></jsp:include>
<style>
    *
    {
        margin: 0;
        padding: 0;
    }
    /*蓝色按钮,绝对定位*/
    .blueButton
    {
        position: absolute;
        display: block;
        width: 100px;
        height: 40px;
        background-color: #00b3ee;
        color: #fff;
        text-decoration: none;
        text-align: center;
        font:normal normal normal 16px/40px 'Microsoft YaHei';
        cursor: pointer;
        border-radius: 4px;
    }
    .blueButton:hover
    {
        text-decoration: none;
    }
    /*自定义上传,位置大小都和a完全一样,而且完全透明*/
    .myFileUpload
    {
        position: absolute;
        display: block;
        width: 100px;
        height: 40px;
        opacity: 0;
    }
    /*显示上传文件夹名的Div*/
    .show
    {
        position: absolute;
        top:40px;
        width: 100%;
        height: 30px;
        font:normal normal normal 14px/30px 'Microsoft YaHei';
    }
</style>
<body>
<div class="row">
    <div class="col-md-2">
        <img src="<%=request.getContextPath()%>/css/timg (5).jpg"  height="150" width="200"   class="img-circle"/>
    </div>
    <div class="col-md-2">
        <button type="button" class="btn btn-primary btn-lg"   data-toggle="modal" data-target="#myModal" >
            上传头像
        </button>
    </div>
</div>
<!--上传头像页面 -->

        <form action="<%=request.getContextPath()%>/ossController/uploadFile.do" method="post" enctype="multipart/form-data"  >

                    <input type="file" name="fileName" id="filename">
                    <input type="submit" value="上传">
        </form>
<script>
    $(document).ready(function()
    {
        $(".myFileUpload").change(function()
        {
            var arrs=$(this).val().split('\\');
            var filename=arrs[arrs.length-1];
            $("#filename").val(filename);
        });
    });
</script>
</body>
</html>

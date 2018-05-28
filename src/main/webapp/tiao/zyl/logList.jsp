<%--
  Created by IntelliJ IDEA.
  User: 周玉路
  Date: 2018/5/16
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>
<div style="height: 90%">
    <table id="logtable"></table>
</div>

<script type="text/javascript">
    $(function () {
        $("#logtable").bootstrapTable({
            url:"<%=request.getContextPath()%>/logController/addloggerlist.do",
            paginationDetailHAlign:"right",//总页数 和条数的显示位置
            paginationNextText:"下一页",
            paginationPreText:"上一页",
            paginationHAlign:"left",
            sidePagination:"server",//
            paginationLoop:false,//关闭分页的无限循环
            minimumCountColumns:1,//最小留下一个
            strictSearch:true,
            striped: true,//隔行变色
            pagination:true,//开启分页
            pageNumber:1,//当前页数
            pageSize:12,//每页条数
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",
            columns: [[
                {field:'logId',title:'序号',width:100,align:"center"},
                {field:'methodName',title:'方法名',width:100,align:"center"},
                {field:'params',title:'参数',width:250,align:"center"},
                {field:'user',title:'用户',width:100,align:"center"},
                {field:'exception',title:'异常',width:100,align:"center"},
            ]]
        })


    });

</script>


</body>
</html>

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
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title  glyphicon glyphicon-search">智能搜索</h3>
    </div>
    <form class="form-inline">
        <table class="table">
            <tr>
                <td>用户名</td>
                <td>协议编号</td>
                <td>保全ID</td>

            </tr>
            <tr>

                <td>
                    <input type="text" name="grname" class="form-control" id="grname" placeholder="请选择">
                </td>
                <td>
                    <input type="text" name="protocolnumber" class="form-control" id="protocolnumber" placeholder="请选择">
                </td>
                <td>
                    <input type="text" name="protectid" class="form-control" id="protectid" placeholder="请选择">
                </td>
            </tr>
            <tr>
                <td>保全开始时间</td>
                <td>保全结束时间</td>

                <td>保全状态</td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="startdate" class="datepicker" id="startdate" placeholder="请选择">
                </td>
                <td>
                    <input type="text" name="enddate" class="datepicker" id="enddate" placeholder="请选择">
                </td>
                <td><select class="form-control"    id="protecttype"   >
                        <option value="0">全部</option>
                        <option value="2" >未保全</option>
                        <option value="1">已保全</option>
                </select></td>
            </tr>

            <tr>

                <td colspan="4">
                    <div style="margin-left: 35%">
                        <button type="button" id="tiaojian" class="btn btn-primary col-lg-3 glyphicon glyphicon-circle-arrow-right">查询</button>
                        <button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>
                        <button type="button" id="xiugai" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">一键保全</button>
                    </div>
                </td>

            </tr>
        </table>
    </form>
</div>
<table id="zyltable"></table>
<script type="text/javascript">
    $(function () {
        $("#zyltable").bootstrapTable({
            url:"<%=request.getContextPath()%>/protocolController/selectProtocolLsit.do",
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
            pageSize:5,//每页条数
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",
            columns: [[
                {field:'protocolid',title:'序号',width:100,align:"center"},
                {field:'protectid',title:'保全ID',width:100,align:"center"},
                {field:'protectdate',title:'保全时间',width:100,align:"center"},
                {field:'protocolnumber',title:'协议编号',width:100,align:"center"},
                {field:'grname',title:'用户名称',width:100,align:"center"},
                {field:'',title:'保全状态',width:100,align:"center",
                    formatter:function(value,row,index){
                        if(row.protecttype ==1){
                            return '已保全';
                        }else if(row.protecttype ==2){
                            return '未保全';
                        }
                    }
                },
                {field:"shanchu",title:"操作",width:220,align:'center',formatter:actionFormatter}
            ]]
        })

        function actionFormatter(value, row, index) {
          var    result ="";
            if(row.protecttype ==1){
                result ='保全成功';
//                result ='<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal2" onclick="addcha(\'' + row.protocolid + '\')">已保全</button>';
            }else if(row.protecttype ==2){
                result ="<button class='btn btn-primary btn-sm' onclick='updatelist("+row.protocolid+")'>保全</button>";
            }
            return result;
        }
    });


    function updatelist(id){
        $.ajax({
            url:"<%=request.getContextPath()%>/protocolController/updatelist.do",
            type:"post",
            data:{protocolid:id},
            success:function(result){
                $("#zyltable").bootstrapTable('refresh')
                alert("成功")
            }
        })
    }

 <%----%>
    <%--function addcha(id){--%>
        <%--BootstrapDialog.show({--%>
            <%--title:"详情页面",//标题--%>
            <%--message:$("<div></div>").load("<%=request.getContextPath()%>/protocolController/queryOne.do”),--%>
            <%--type:BootstrapDialog.TYPE_WARNING,//弹框的类型--%>
            <%--closable: true,--%>
            <%--draggable : true,--%>
            <%--buttons:[--%>
                <%--{--%>
                    <%--bel:"确定",--%>
                    <%--cssClass:"btn-success",--%>
                    <%--action:function(dialog){--%>
                        <%--$.ajax({--%>
                            <%--url:"<%=request.getContextPath()%>/receiptAction!updateReceipt.action",--%>
                            <%--type:"post",--%>
                            <%--data:$("#updateForm").serialize(),--%>
                            <%--dataType:"text",--%>
                            <%--success:function(result){--%>
                                <%--if(result==1){--%>
                                    <%--dialog.close();--%>
                                    <%--$("#Tab").bootstrapTable("refresh",{pageNumber:1});--%>
                                <%--}--%>
                            <%--}--%>

                        <%--})--%>
                    <%--}--%>
                <%--}--%>
            <%--]--%>
        <%--})--%>
    <%--}--%>




    $("#tiaojian").on("click",function(){
        $("#zyltable").bootstrapTable('refresh',{query:{
            protectid:$("#protectid").val(),
            protocolnumber:$("#protocolnumber").val(),
            startdate:$("#startdate").val(),
            enddate:$("#enddate").val(),
            protecttype:$("#protecttype").val(),
            grname:$("#grname").val(),
        }});
    })



    $("#xiugai").on("click",function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/protocolController/updateProtocol.do",
            type:"post",
            success:function () {
                $("#zyltable").bootstrapTable('refresh');
            },error:function () {
                alert("");
            }
        })
    });
</script>


</body>
</html>

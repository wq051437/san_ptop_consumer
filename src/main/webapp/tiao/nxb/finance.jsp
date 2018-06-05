<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/25
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>充值管理</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<div class="panel panel-primary" id="demo2">
    <div class="panel-heading">
        <h3 class="panel-title  glyphicon glyphicon-search">智能搜索</h3>
    </div>
    <div class="panel-body">
        <div class="col-md-2">
            用户名
            <input type="text" name="username" id="usernames" class="form-control">
        </div>
        <div class="col-md-2">
            支付公司
            <input type="text" name="paycompany" id="paycompanys" class="form-control">
        </div>
        <%--<div class="col-md-2">--%>
        <%--投资时间--%>
        <%--<input type="text" class="form-control" id="startDatetiaojian1" name="investtime" placeholder="请选择">--%>
        <%--</div>--%>
        <%--<div class="col-md-2">--%>
        <%--至结束时间--%>
        <%--<input type="text" class="form-control" id="endDatetiaojian1" name="investtime" placeholder="请选择">--%>
        <%--</div>--%>
        <%--<div class="col-md-2">
            充值状态
            <select class="form-control" name="loanstate" id="loanstates" >
                <option value="">- - 全部 - -
                <option value="1">已处理
                <option value="2">未处理
            </select>
        </div><br><br><br>--%>
        <div class="col-md-1">
            <button class="btn btn-large btn-block btn-success" type="button" id="souyisouss">搜索</button>
            <%--<button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>--%>
        </div>

    </div>
</div>

<table id="tablethree"></table>

<script type="text/javascript">
$(function(){
    search()
})

function search(){
    $('#tablethree').bootstrapTable({
        url:'<%=request.getContextPath()%>/financeController/queryrecharge.do',
        striped: true,//隔行变色
        showColumns:true,//是否显示 内容列下拉框
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        search:false,//是否显示搜索框
        clickToSelect: true, //是否启用点击选中行
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        pagination:true,//开启分页
        paginationLoop:false,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:4,//每页条数
        pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        queryParams:function(){
            return {
                'username':$("#usernames").val(),
                'paycompany':$("#paycompanys").val()
            }
        },

        columns:[[
            {field:'rechargeid',title:'充值编号',width:"75px",align:"center"},
            {field:'rechargenumber',title:'订单号',width:"75px",align:"center"},
            {field:'username',title:'用户名称',width:"75px",align:"center"},
            {field:'rechargemoney',title:'充值金额',width:"75px",align:"center"},
            {field:'receivable',title:'应收手续费',width:"75px",align:"center"},
            {field:'received',title:'实收手续费',width:"75px",align:"center"},
            {field:'finishdate',title:'充值时间',width:"75px",align:"center"},
            {field:'paycompany',title:'支付公司名称',width:"75px",align:"center"},
            {field:' ',title:'充值状态',width:"75px",align:"center",
                formatter:function(value,row,index){
                    if(row.rechargestate ==1){
                        return '已完成';
                    }else if(row.rechargestate ==2){
                        return '未完成';
                    }
                }},
            /*{field:'serialnumber',title:'流水单号',width:"75px",align:"center"},*/
            /*{field: '   ',title: '操作',width:"100px",align:"center",formatter: actionFormatter}*/
        ]]
    });
}
function actionFormatter(value,row,index){

     var result = "";
     result += "<button type='button' onclick='queryloanbutton("+row.rechargeid+")' class='btn btn-info' >详情</button>";
     return result;
 }
/*function actionFormatter(value, row, index) {
    var result = "";
    /!*result += "<button type='button' onclick='queryloanbutton("+row.loanid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";*!/
    if(row.loanstate == 1){
        result += "<button type='button' onclick='queryloanbutton("+row.rechargeid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";
    }
    if(row.loanstate == 2){
        result += "<button type='button' onclick='queryloanbutton("+row.companyid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";
        result += "<button type='button' onclick='updateloanbutton("+row.companyid+")' class='btn btn-info' data-toggle='modal' data-target='#myModals'>审核</button>";
    }

    return result;
}*/
$("#souyisouss").on("click",function(){
    $("#tablethree").bootstrapTable("refresh",{pageNumber:1});
})



</script>
</body>
</html>

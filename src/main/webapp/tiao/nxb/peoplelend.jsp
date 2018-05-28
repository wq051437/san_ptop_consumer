<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/28
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人放款</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<table id="tablefour"></table>
<script type="text/javascript">
$(function(){
    search()
})

function search(){
    $('#tablefour').bootstrapTable({
        url:'<%=request.getContextPath()%>/financeController/querylend.do',
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
        /*queryParams:function(){
         return {
         'contactname':$("#contactnames").val(),
         'loanstate':$("#loanstates").val()
         }
         },*/

        columns:[[
            {field:'loanid',title:'借款序号',width:"75px",align:"center"},
            {field:'loantitle',title:'借款标题',width:"75px",align:"center"},
            {field:'capitalname',title:'借款账户',width:"75px",align:"center"},
            {field:'loanmoney',title:'借款金额',width:"75px",align:"center"},
            {field:'moneyrate',title:'年化利率（%）',width:"75px",align:"center"},
            {field:'loanmonth',title:'借款期限',width:"75px",align:"center"},
            {field: '   ',title: '操作',width:"100px",align:"center",formatter: actionFormatter}
        ]]
    });
}
/*function actionFormatter(value,row,index){

    var result = "";
    result += "<button type='button' onclick='querylendbutton("+row.loanid+")' class='btn btn-info' >详情</button>";
    return result;
}*/
function actionFormatter(value, row, index) {
 var result = "";
 /*result += "<button type='button' onclick='querylendbutton("+row.loanid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";*/
 if(row.lendstate == 1){
 result += "<button type='button' onclick='querylendbutton("+row.loanid+")' class='btn btn-info'>放款</button>";
 }
 if(row.lendstate == 2){
 result += "<button type='button' onclick='querylendbutton("+row.loanid+")' class='btn btn-info' disabled='disabled'>已放款</button>";
 }

 return result;
 }
/*$("#souyisous").on("click",function(){
 $("#tabletwo").bootstrapTable("refresh",{pageNumber:1});
 })*/
function querylendbutton(loanid){
    alert(loanid)

    $("#loanmoney").val(loanmoney);
    $.ajax({
        url:"<%=request.getContextPath()%>/financeController/queryLoanById.do",
        type:"post",
        data:{"loanid":loanid},
        dataType:"json",
        success:function(result){
            alert(loanmoney)
            /*window.location.reload();*/
            /* $("#tableone").bootstrapTable('refresh');*/

        },
        error:function(){
            alert(" 查询失败,请联系……。");
        }
    });
}

</script>

</body>
</html>

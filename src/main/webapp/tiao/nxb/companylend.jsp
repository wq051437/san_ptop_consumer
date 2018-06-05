<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/30
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<div class="panel panel-primary" id="demo4">
    <div class="panel-heading">
        <h3 class="panel-title  glyphicon glyphicon-search">智能搜索</h3>
    </div>
    <div class="panel-body">
        <div class="col-md-2">
            借款标题
            <input type="text" name="loantitle" id="loantitles" class="form-control">
        </div>

        <div class="col-md-2">
            借款账户
            <input type="text" name="capitalname" id="capitalnames" class="form-control">
        </div><br>
        <div class="col-md-1">
            <button class="btn btn-large btn-block btn-success" type="button" id="souyisouwu">搜索</button>
            <%--<button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>--%>
        </div>

    </div>
</div>

<table id="tablefive"></table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    放款详情
                </h4>
            </div>
            <form id="formpost" method="post">
                <div class="modal-body">
                    <input type="hidden" name="capitalid" id="capitalid"/>
                    <input type="hidden" name="companyid" id="companyid"/>
                    借款标题:<input type="text" id="loantitle" name="loantitle" disabled='disabled'/><br>
                    借款账号:<input type="text" id="capitalname" name="capitalname" disabled='disabled'/><br>
                    放款金额:<input type="text" id="loanmoney" name="loanmoney" disabled='disabled'/>
                    <input type="hidden" name="loanmoney" id="loanmoneys"/>
                    <input type="hidden" name="capitalmoney" id="capitalmoney"/>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="submitBtns()">确定 </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script type="text/javascript">
$(function(){
    search()
})

function search(){
    $('#tablefive').bootstrapTable({
        url:'<%=request.getContextPath()%>/financeController/queryCompany.do',
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
        pageSize:5,//每页条数
        pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        queryParams:function(){
            return {
                'loantitle':$("#loantitles").val(),
                'capitalname':$("#capitalnames").val()
            }
        },

        columns:[[
            {field:'companyid',title:'借款序号',width:"75px",align:"center"},
            {field:'loantitle',title:'借款标题',width:"75px",align:"center"},
            {field:'capitalname',title:'借款账户',width:"75px",align:"center"},
            {field:'loanmoney',title:'借款金额',width:"75px",align:"center"},
            {field:'loanrate',title:'年化利率（%）',width:"75px",align:"center"},
            {field:'loandate',title:'借款期限（月）',width:"75px",align:"center"},
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
    if(row.lendstate == 2){
        result += "<button type='button' onclick='updatelendbutton("+row.companyid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>放款</button>";
    }
    if(row.lendstate == 1){
        result += "<button type='button' onclick='querylendbutton("+row.companyid+")' class='btn btn-info' disabled='disabled'>已放款</button>";
    }

    return result;
}
$("#souyisouwu").on("click",function(){
    $("#tablefive").bootstrapTable("refresh",{pageNumber:1});
})

function updatelendbutton(companyid){
    $("#companyids").val(companyid);
    $.ajax({
        url:"<%=request.getContextPath()%>/financeController/queryCompanyById.do",
        type:"post",
        data:{"companyid":companyid},
        dataType:"json",
        success:function(result){
            $("#capitalid").val(result[0].capitalid);
            $("#companyid").val(result[0].companyid);
            $("#loantitle").val(result[0].loantitle);
            $("#loanmoney").val(result[0].loanmoney);
            $("#loanmoneys").val(result[0].loanmoney);
            $("#capitalname").val(result[0].capitalname);
            $("#capitalmoney").val(result[0].capitalmoney);
        },
        error:function(){
            alert(" 查询失败,请联系……。");
        }
    });
}
function submitBtns() {
    alert($("#formpost").serialize());
    $.ajax({
        url:"<%=request.getContextPath()%>/financeController/updateCompanyById.do",
        /*/!*async: false,//同步，会阻塞操作*!/*/
        type: 'post',//PUT DELETE POST
        data: $("#formpost").serialize(),
        success: function (result) {

            window.location.reload();
            /*/!* $("#tableone").bootstrapTable('refresh');*!/*/

        },error: function () {
            alert("失败");
        }
    })
}



</script>
</body>
</html>

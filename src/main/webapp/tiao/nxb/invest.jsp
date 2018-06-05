<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/31
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>投资审核</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<div class="panel panel-primary" id="demo4">
    <div class="panel-heading">
        <h3 class="panel-title  glyphicon glyphicon-search">智能搜索</h3>
    </div>
    <div class="panel-body">
        <div class="col-md-2">
            项目标题
            <input type="text" name="investtitle" id="investtitles" class="form-control">
        </div>

        <%--<div class="col-md-2">
            申请状态
            <input type="text" name="capitalname" id="capitalnames" class="form-control">
        </div><br>--%>
        <div class="col-md-1">
            <button class="btn btn-large btn-block btn-success" type="button" id="souyisousi">搜索</button>
            <%--<button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>--%>
        </div>

    </div>
</div>

<table id="tablesix"></table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    申请详情
                </h4>
            </div>
            <form id="forminvest" method="post">
                <div class="modal-body">
                    <input type="hidden" name="investid" id="investids"/>

                    审核意见：<textarea id="loanresult" name="lendopinion"></textarea><br>
                    处理意见：<input type="radio" name="lendstate"  value="1">同意
                             <input type="radio" name="lendstate" value="2">不同意


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="submitBtn()">确定 </button>
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
    $('#tablesix').bootstrapTable({
        url:'<%=request.getContextPath()%>/investController/queryInvest.do',
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
                'investtitle':$("#investtitles").val(),
                'lendstate':$("#lendstates").val()
            }
        },

        columns:[[
            {field:'investid',title:'序号',width:"75px",align:"center"},
            {field:'investtitle',title:'标题',width:"75px",align:"center"},
            {field:'investtype',title:'投资类型',width:"75px",align:"center"},
            {field:'investmoney',title:'申请金额',width:"75px",align:"center"},
            {field:'investrate',title:'年化利率（%）',width:"75px",align:"center"},
            {field:'investterm',title:'投款期限（月）',width:"75px",align:"center"},
            {field:'loantime',title:'筹款期限（天）',width:"75px",align:"center"},
            {field:'investpaytype',title:'还款方式',width:"75px",align:"center"},
            {field:'investfile',title:'申请描述',width:"75px",align:"center"},
            {field:'applyinvesttime',title:'申请日期',width:"75px",align:"center"},
            {field:'investcondition',title:'投资人条件',width:"75px",align:"center"},
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
    if(row.lendstate == null){
        result += "<button type='button' onclick='updateinvestbutton1("+row.investid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>审核</button>";
        result += "<button type='button' onclick='updateinvestbutton2("+row.investid+")' class='btn btn-info' disabled='disabled'>发布</button>";
        result += "<button type='button' onclick='updateinvestbutton3("+row.investid+")' class='btn btn-info' disabled='disabled'>推广</button>";
    }
    if(row.lendstate == 1){
        result += "<button type='button' onclick='updateinvestbutton1("+row.investid+")' class='btn btn-info' disabled='disabled'>通过</button>";
        result += "<button type='button' onclick='updateinvestbutton2("+row.investid+")' class='btn btn-info' >发布</button>";
        result += "<button type='button' onclick='updateinvestbutton3("+row.investid+")' class='btn btn-info' disabled='disabled'>推广</button>";
    }
    if(row.lendstate == 2){
        result += "<button type='button' onclick='queryinvestbutton("+row.investid+")' class='btn btn-info' disabled='disabled'>不同意</button>";
    }
    if(row.lendstate == 3){
        result += "<button type='button' onclick='updateinvestbutton1("+row.investid+")' class='btn btn-info' disabled='disabled'>通过</button>";
        result += "<button type='button' onclick='updateinvestbutton2("+row.investid+")' class='btn btn-info' disabled='disabled'>发布</button>";
        result += "<button type='button' onclick='updateinvestbutton3("+row.investid+")' class='btn btn-info' >推广</button>";
    }
    if(row.lendstate == 4){
        result += "<button type='button' onclick='updateinvestbutton1("+row.investid+")' class='btn btn-info' disabled='disabled'>通过</button>";
        result += "<button type='button' onclick='updateinvestbutton2("+row.investid+")' class='btn btn-info' disabled='disabled'>发布</button>";
        result += "<button type='button' onclick='updateinvestbutton3("+row.investid+")' class='btn btn-info' disabled='disabled'>已推广</button>";
    }

    return result;
}
$("#souyisouliu").on("click",function(){
    $("#tablesix").bootstrapTable("refresh",{pageNumber:1});
})

function updateinvestbutton1(investid){

    $("#investids").val(investid);
    $.ajax({
        url:"<%=request.getContextPath()%>/investController/queryInvestById.do",
        type:"post",
        data:{"investid":investid},
        dataType:"json",
        success:function(result){

            /*window.location.reload();*/
            /* $("#tableone").bootstrapTable('refresh');*/

        },
        error:function(){
            alert(" 查询失败,请联系……。");
        }
    });
}
function submitBtn() {

    $.ajax({
        url:"<%=request.getContextPath()%>/investController/updateInvestById.do",
        /*/!*async: false,//同步，会阻塞操作*!/*/
        type: 'post',//PUT DELETE POST
        data: $("#forminvest").serialize(),
        success: function (result) {

            window.location.reload();
            /*/!* $("#tableone").bootstrapTable('refresh');*!/*/

        },error: function () {
            alert("失败");
        }
    })
}

/*修改发布--------------------------------------------------------------------------------------------------------*/
function updateinvestbutton2(investid) {

    $.ajax({
        url:"<%=request.getContextPath()%>/investController/updateInvesttwo.do",
        async: false,//同步，会阻塞操作*!/
        type: 'post',//PUT DELETE POST
        data: {"investid":investid},/*{"investid":investid,"lendtime":lendtime,"lendstate":lendstate},*/
        success: function (result) {

            window.location.reload();
            /*/!* $("#tableone").bootstrapTable('refresh');*!/*/

        },error: function () {
            alert("失败");
        }
    })
}

/*进行发布--------------------------------------------------------------------------------------------------------*/
function updateinvestbutton3(investid) {

    $.ajax({
        url:"<%=request.getContextPath()%>/investController/updateInvests.do",
        async: false,//同步，会阻塞操作*!/
        type: 'post',//PUT DELETE POST
        data: {"investid":investid},/*{"investid":investid,"lendtime":lendtime,"lendstate":lendstate},*/
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

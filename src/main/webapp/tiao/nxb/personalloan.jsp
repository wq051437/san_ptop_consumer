<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/16
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<div class="panel panel-primary">

    <div class="panel panel-primary" id="demo1">
        <div class="panel-heading">
            <h3 class="panel-title  glyphicon glyphicon-search">智能搜索</h3>
        </div>
        <div class="panel-body">
            <div class="col-md-2">
                联系人
                <input type="text" name="loanname" id="loannames" class="form-control">
            </div>
            <%--<div class="col-md-2">--%>
            <%--投资时间--%>
            <%--<input type="text" class="form-control" id="startDatetiaojian1" name="investtime" placeholder="请选择">--%>
            <%--</div>--%>
            <%--<div class="col-md-2">--%>
            <%--至结束时间--%>
            <%--<input type="text" class="form-control" id="endDatetiaojian1" name="investtime" placeholder="请选择">--%>
            <%--</div>--%>
            <div class="col-md-2">
                借款类型
                <select class="form-control" name="loantypeid" id="loantypeids" >
                    <option value="">- - 全部 - -
                    <option value="1">信用
                    <option value="2">抵押
                    <option value="3">实地认证
                    <option value="3">担保
                </select>
            </div><br><br><br>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-success" type="button" id="souyisou">搜索</button>
                <button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>
            </div>

        </div>
</div>
<%--<div class="panel panel-primary">--%>
    <table id="tableone"></table>
<%--</div>--%>
<!-- 修改弹框 -->
<div id="updateloan"></div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    用户详情
                </h4>
            </div>
            <form id="form_data">
                <div class="modal-body">
                    <input type="hidden" name="loanid" id="loanid"/>
                    联系人: &nbsp;&nbsp;&nbsp; <input type="text"  id="loanname" name="loanname" disabled='disabled'/><br>
                    借款标题: <input type="text" id="loantitle" name="loantitle" disabled='disabled'/><br>
                    联系电话: <input type="text" id="loanphone" name="loanphone" disabled='disabled'/><br>
                    借款期限: <input type="text" id="loanmonth" name="loanmonth" disabled='disabled'/><br>
                    借款金额: <input type="text" id="loanmoney" name="loanmoney" disabled='disabled'/><br>
                    借款类型: <input type="text" id="loantypeid" name="loantypeid" disabled='disabled'/><br>
                    所在城市: <input type="text" id="loanadress" name="loanadress" disabled='disabled'/><br>
                    筹款期限: <input type="text" id="loandate" name="loandate" disabled='disabled'/><br>
                    借款描述: <textarea id="loandescribe" name="loandescribe" disabled='disabled'></textarea><br>
                    申请日期: <input type="text" id="applyloandate" name="applyloandate" disabled='disabled'/>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- 模态框（Modal） 修改-->
<div class="modal fade" id="myModals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabels">
                    处理框
                </h4>
            </div>
            <form id="form_datas" method="post">
                <div class="modal-body">
                    ID:<input type="text" name="loanid" id="loanids">

                    处理意见: <textarea id="process" name="process"></textarea>
                    处理结果：<input type="radio" name="loanhandle"  value="1">同意
                              <input type="radio" name="loanhandle" value="2">不同意


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">关闭 </button>
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
        $('#tableone').bootstrapTable({
            url:'<%=request.getContextPath()%>/personalController/queryPersonalloan.do',
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
                    'loanname':$("#loannames").val(),
                    'loantypeid':$("#loantypeids").val()
                }
            },

            columns:[[
                {field:'loanid',title:'编号',width:"75px",align:"center"},
                {field:'loantitle',title:'借款标题',width:"75px",align:"center"},
                {field:'loanname',title:'联系人',width:"75px",align:"center"},
                {field:'loanphone',title:'联系人电话',width:"75px",align:"center"},
                {field:'loanmoney',title:'借款金额',width:"75px",align:"center"},
                {field:'loanmonth',title:'借款期限(月)',width:"75px",align:"center"},
                {field:'loantypeid',title:'借款类型',width:"75px",align:"center",
                    formatter: function (value, row, index) {
                        if (row.loantypeid == 1) {
                            return '信用';
                        } else if (row.loantypeid == 2) {
                            return '抵押';
                        } else if (row.loantypeid == 3) {
                            return '实地认证';
                        } else if (row.loantypeid == 4) {
                            return '担保';
                        }
                    }},
                {field:'loanadress',title:'所在城市',width:"75px",align:"center"},
                {field:'applyloandate',title:'申请日期',width:"75px",align:"center"},
                {field: 'loandate', title: '筹款日期', width: "75px", align: "center",
                    formatter: function (value, row, index) {
                        if (row.loandate == 1) {
                            return '1天';
                        } else if (row.loandate == 2) {
                            return '2天';
                        } else if (row.loandate == 3) {
                            return '3天';
                        } else if (row.loandate == 4) {
                            return '4天';
                        } else if (row.loandate == 5) {
                            return '5天';
                        }
                    }
                },
                {field:'loandescribe',title:'借款描述',width:"75px",align:"center"},
                {field:'',title:'状态',width:"75px",align:"center",
                    formatter:function(value,row,index){
                        if(row.loanstate ==1){
                            return '已处理';
                        }else if(row.loanstate ==2){
                            return '未处理';
                        }
                    }},
                /*{field:" ",title:"操作",width:220,align:'center',formatter:actionFormatter}*/
                {field: '   ',title: '操作',width:"100px",align:"center",formatter: actionFormatter}
        ]]
        });
    }
   /*function actionFormatter(value,row,index){
        var buttonxl= "";
        buttonxl += "<button type='button' onclick='queryloanbutton("+row[0]+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";

        return buttonxl;

    }*/
    function actionFormatter(value, row, index) {
        var result = "";
        /*result += "<button type='button' onclick='queryloanbutton("+row.loanid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";*/
        if(row.loanstate == 1){
            result += "<button type='button' onclick='queryloanbutton("+row.loanid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";
        }
        if(row.loanstate == 2){
            result += "<button type='button' onclick='queryloanbutton("+row.loanid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";
            result += "<button type='button' onclick='updateloanbutton("+row.loanid+")' class='btn btn-info' data-toggle='modal' data-target='#myModals'>审核</button>";
        }

        return result;
    }
    $("#souyisou").on("click",function(){
        $("#tableone").bootstrapTable("refresh",{pageNumber:1});
    })

    function queryloanbutton(loanid){

        $.ajax({
            url:"<%=request.getContextPath()%>/personalController/queryLoanById.do",
            type:"post",
            data:{"loanid":loanid},
            dataType:"json",
            success:function(result){


                $("#loanid").val(result.loanid);
                $("#loantitle").val(result.loantitle);
                $("#loanname").val(result.loanname);
                $("#loanphone").val(result.loanphone);
                $("#loanmonth").val(result.loanmonth);
                    /*var a=result.loanmonth;
                    if(a==1){
                        $("#loanmonth").val('3');
                    }else if(a==2){
                        $("#loanmonth").val('6');
                    }else {
                        $("#loanmonth").val('12');
                    }*/
                $("#loanmoney").val(result.loanmoney);
                $("#loantypeid").val(result.loantypeid);
                    var b=result.loantypeid;
                    if(b==1){
                        $("#loantypeid").val('信用');
                    }else if(b==2){
                        $("#loantypeid").val('抵押');
                    }else if(b==3){
                        $("#loantypeid").val('实地认证');
                    }else{
                        $("#loantypeid").val('担保');
                    }
                $("#loanadress").val(result.loanadress);
                $("#loandate").val(result.loandate);
                    var c=result.loandate;
                    if(c==1){
                        $("#loandate").val('1天');
                    }else if(c==2){
                        $("#loandate").val('2天');
                    }else if(c==3){
                        $("#loandate").val('3天');
                    }else if(c==4){
                        $("#loandate").val('4天');
                    }else{
                        $("#loandate").val('5天');
                    }
                $("#loandescribe").val(result.loandescribe);
                $("#applyloandate").val(result.applyloandate);

            },
            error:function(){
                alert(" 查询失败,请联系……。");
            }
        });
    }
//=======================修改======================================================================================
    function updateloanbutton(loanid){

        $("#loanids").val(loanid);
        $.ajax({
            url:"<%=request.getContextPath()%>/personalController/queryLoanById.do",
            type:"post",
            data:{"loanid":loanid},
            dataType:"json",
            success:function(result){



            },
            error:function(){
                alert(" 查询失败,请联系……。");
            }
        });
    }
    function submitBtn() {

            $.ajax({
                url:"<%=request.getContextPath()%>/personalController/updateLoan.do",
                /*async: false,//同步，会阻塞操作*/
                type: 'post',//PUT DELETE POST
                data: $("#form_datas").serialize(),
                success: function (result) {

                        window.location.reload();
                   /* $("#tableone").bootstrapTable('refresh');*/

                },error: function () {
                    alert("失败");
                }
            })
    }


</script>


</body>
</html>

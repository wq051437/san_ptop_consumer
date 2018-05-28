<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/23
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公司借款</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<div class="panel panel-primary" id="demo2">
    <div class="panel-heading">
        <h3 class="panel-title  glyphicon glyphicon-search">智能搜索</h3>
    </div>
    <div class="panel-body">
        <div class="col-md-2">
            联系人
            <input type="text" name="contactname" id="contactnames" class="form-control">
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
            <select class="form-control" name="loanstate" id="loanstates" >
                <option value="">- - 全部 - -
                <option value="1">已处理
                <option value="2">未处理
            </select>
        </div><br><br><br>
        <div class="col-md-1">
            <button class="btn btn-large btn-block btn-success" type="button" id="souyisous">搜索</button>
            <%--<button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>--%>
        </div>

    </div>
</div>

<table id="tabletwo"></table>

<!-- 修改弹框 -->
<div id="updateloanss"></div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    公司详情
                </h4>
            </div>
            <form id="form_data">
                <div class="modal-body">
                    <input type="hidden" name="companyid" id="companyid"/>
                    企业名称: <input type="text"  id="companyname" name="companyname" disabled='disabled'/><br>
                    借款标题: <input type="text" id="loantitle" name="loantitle" disabled='disabled'/><br>
                    注册号: <input type="text" id="registration" name="registration" disabled='disabled'/><br>
                    联系人: <input type="text" id="contactname" name="contactname" disabled='disabled'/><br>
                    手机号码: <input type="text" id="companyphone" name="companyphone" disabled='disabled'/><br>
                    借款金额: <input type="text" id="loanmoney" name="loanmoney" disabled='disabled'/><br>
                    借款期限: <input type="text" id="loandate" name="loandate" disabled='disabled'/>个月<br>
                    借款类型: <input type="text" id="loantype" name="loantype" disabled='disabled'/><br>
                    所在城市: <input type="text" id="companycity" name="companycity" disabled='disabled'/><br>
                    公司地址: <input type="text" id="companyadress" name="companyadress" disabled='disabled'/><br>
                    筹款期限: <input type="text" id="fundraisingtime" name="fundraisingtime" disabled='disabled'/><br>
                    借款描述: <textarea id="loandescribe" name="loandescribe" disabled='disabled'/></textarea><br>
                    提交时间: <input type="text" id="applytime" name="applytime" disabled='disabled'/><br>


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
            <form id="form_datass" method="post">
                <div class="modal-body">
                    <input type="hidden" name="companyid" id="companyids">

                    处理意见： <textarea id="loanresult" name="loanresult"></textarea><br>
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
        $('#tabletwo').bootstrapTable({
            url:'<%=request.getContextPath()%>/companyController/queryCompanyloanloan.do',
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
                    'contactname':$("#contactnames").val(),
                    'loanstate':$("#loanstates").val()
                }
            },

            columns:[[
                {field:'companyid',title:'编号',width:"75px",align:"center"},
                {field:'loantitle',title:'借款标题',width:"75px",align:"center"},
                {field:'companyname',title:'企业名称',width:"75px",align:"center"},
                {field:'registration',title:'注册号',width:"75px",align:"center"},
                {field:'contactname',title:'联系人',width:"75px",align:"center"},
                {field:'companyphone',title:'手机号',width:"75px",align:"center"},
                {field:'loanmoney',title:'借款金额',width:"75px",align:"center"},
                {field:'loandate',title:'借款期限',width:"75px",align:"center"},
                {field:'loantype',title:'借款类型',width:"75px",align:"center",
                    formatter: function (value, row, index) {
                        if (row.loantypeid == 1) {
                            return '抵押';
                        } else if (row.loantypeid == 2) {
                            return '实地认证';
                        } else if (row.loantypeid == 3) {
                            return '担保';
                        }
                    }},
                {field:'companycity',title:'公司所在城市',width:"75px",align:"center"},
                {field: 'fundraisingtime', title: '筹款期限', width: "75px", align: "center",
                    formatter: function (value, row, index) {
                        if (row.fundraisingtime == 1) {
                            return '1天';
                        } else if (row.fundraisingtime == 2) {
                            return '3天以内';
                        } else if (row.fundraisingtime == 3) {
                            return '7天以内';
                        } else if (row.fundraisingtime == 4) {
                            return '15天以内';
                        } else if (row.fundraisingtime == 5) {
                            return '30天以内';
                        }
                    }
                },
                {field:'loandescribe',title:'借款描述',width:"75px",align:"center"},
                {field:'applytime',title:'申请日期',width:"75px",align:"center"},
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
            result += "<button type='button' onclick='queryloanbutton("+row.companyid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";
        }
        if(row.loanstate == 2){
            result += "<button type='button' onclick='queryloanbutton("+row.companyid+")' class='btn btn-info' data-toggle='modal' data-target='#myModal'>详情</button>";
            result += "<button type='button' onclick='updateloanbutton("+row.companyid+")' class='btn btn-info' data-toggle='modal' data-target='#myModals'>审核</button>";
        }

        return result;
    }
    $("#souyisous").on("click",function(){
        $("#tabletwo").bootstrapTable("refresh",{pageNumber:1});
    })

    function queryloanbutton(companyid){

        $.ajax({
            url:"<%=request.getContextPath()%>/companyController/queryLoanById.do",
            type:"post",
            data:{"companyid":companyid},
            dataType:"json",
            success:function(result){


                $("#companyid").val(result.companyid);
                $("#loantitle").val(result.loantitle);
                $("#companyname").val(result.companyname);
                $("#registration").val(result.registration);
                $("#contactname").val(result.contactname);
                $("#companyphone").val(result.companyphone);
                $("#loanmoney").val(result.loanmoney);
                $("#loandate").val(result.loandate);
                $("#loantype").val(result.loantype);
                var b=result.loantype;
                if(b==1){
                    $("#loantype").val('抵押');
                }else if(b==2){
                    $("#loantype").val('实地认证');
                }else if(b==3){
                    $("#loantype").val('担保');
                }
                $("#companycity").val(result.companycity);
                $("#companyadress").val(result.companyadress);
                $("#fundraisingtime").val(result.fundraisingtime);
                var c=result.fundraisingtime;
                if(c==1){
                    $("#fundraisingtime").val('3天以内');
                }else if(c==2){
                    $("#fundraisingtime").val('7天以内');
                }else if(c==3){
                    $("#fundraisingtime").val('15天以内');
                }else if(c==4){
                    $("#fundraisingtime").val('30天以内');
                }else{
                    $("#fundraisingtime").val('3天以内');
                }
                $("#loandescribe").val(result.loandescribe);
                $("#applytime").val(result.applytime);

            },
            error:function(){
                alert(" 查询失败,请联系……。");
            }
        });
    }

//=======================修改======================================================================================
    function updateloanbutton(companyid){

        $("#companyids").val(companyid);
        $.ajax({
            url:"<%=request.getContextPath()%>/companyController/queryLoanById.do",
            type:"post",
            data:{"companyid":companyid},
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
            url:"<%=request.getContextPath()%>/companyController/updateLoan.do",
            /*/!*async: false,//同步，会阻塞操作*!/*/
            type: 'post',//PUT DELETE POST
            data: $("#form_datass").serialize(),
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

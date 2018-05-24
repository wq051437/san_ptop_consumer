<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/15
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号管理</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title  glyphicon glyphicon-search">账号管理</h3>
        </div>
        <form class="form-inline">
            <br>
            &nbsp;&nbsp;&nbsp;用户名&nbsp;<input type='text' name="usernamez" id="usernamez" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            联系电话&nbsp;<input type='text' name="userphonez" id="userphonez" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            邮箱&nbsp;<input type='text' name="useremilyz" id="useremilyz" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            业务员工号<input type='text' name="jobnumberz" id="jobnumberz" class="form-control"><br><br>
            &nbsp;&nbsp;&nbsp;注册时间&nbsp;
            <div class="form-group">
                <input type="text" class="form-control" id="registerdatestaryz" name="registerdatestaryz">&nbsp;
                至&nbsp;<input type="text" class="form-control" id="registerdateendz" name="registerdateendz">
            </div>&nbsp;注册来源
            <select class="form-control" name="registersourcez">
                <option value="">--请选择--</option>
                <option value="后台注册">后台注册</option>
                <option value="PC注册">PC注册</option>
                <option value="APP注册">APP注册</option>
                <option value="微信注册">微信注册</option>
            </select>&nbsp;&nbsp;&nbsp;用户类型
            <select class="form-control" name="usertypez">
                <option value="">--请选择--</option>
                <option value="个人">个人</option>
                <option value="企业">企业</option>
                <option value="机构">机构</option>
            </select>&nbsp;&nbsp;&nbsp;状态
            <select class="form-control" name="userstatez">
                <option value="">--请选择--</option>
                <option value="启用">启用</option>
                <option value="锁定">锁定</option>
                <option value="黑名单">黑名单</option>
            </select>&nbsp;&nbsp;&nbsp;
        </form>
        <button type="button" id="tiaojian" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="ExceportAccountButton" class="btn btn-primary glyphicon glyphicon-share-alt">导出</button>
        <button type="button" id="addgruserButton" class="btn btn-primary">新增个人账号</button>
        <button type="button" id="addqyuserButton" class="btn btn-primary">新增企业账号</button>
        <button type="button" id="addjguserButton" class="btn btn-primary">新增机构账号</button>
    </div>
    <div style="height: 50%">
        <table id="accountmanageTab"></table>
    </div>

    <script type="text/javascript">
        //条件查询
        $("#tiaojian").on("click",function(){
            $("#accountmanageTab").bootstrapTable("refresh",{query:{'username':$("#usernamez").val(),
                'userphone':$("[name='userphonez']").val(),
                'useremily':$("[name='useremilyz']").val(),
                'jobnumber':$("[name='jobnumberz']").val(),
                'registerdatestary':$("[name='registerdatestaryz']").val(),
                'registerdateend':$("[name='registerdateendz']").val(),
                'usertype':$("[name='usertypez']").val(),
                'userstate':$("[name='userstatez']").val(),}});
        })
        //分页查询账户
        $("#accountmanageTab").bootstrapTable({
            url:"<%=request.getContextPath()%>/wqAccountManageController/queryAccountManage.do",
            paginationDetailHAlign:"right",//总页数 和条数的显示位置
            paginationNextText:"下一页",
            paginationPreText:"上一页",
            paginationHAlign:"left",
            sidePagination:"server",//
            paginationLoop:false,//关闭分页的无限循环
            minimumCountColumns:1,//最小留下一个
            striped: true,//隔行变色
            pagination:true,//开启分页
            pageNumber:1,//当前页数
            pageSize:5,//每页条数
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",
            columns: [[
                {field:"userid",title:"序号",width:"5%",align:'center'},
                {field:"username",title:"用户名",width:"10%",align:'center'},
                {field:"userphone",title:"联系电话",width:"10%",align:'center'},
                {field:"useremily",title:"邮箱",width:"14%",align:'center'},
                {field:"userstate",title:"状态",width:"6%",align:'center'},
                {field:"registersource",title:"注册来源",width:"10%",align:'center'},
                {field:"registerdate",title:"注册时间",width:"10%",align:'center'},
                {field:"usertype",title:"用户类型",width:"10%",align:'center'},
                {field:"jobnumber",title:"业务员工号",width:"10%",align:'center'},
                {field:"caozuo",title:"操作",width:"15%",align:'center',formatter:actionFormatterz}
            ]]
        });
        function actionFormatterz(value,row,index){
            var buttonxl= "";
            if(row.userstate=="启用"){
                buttonxl += "<button type='button' onclick='lockButton("+row.userid+")' class='btn btn-danger'>锁定</button>";
                buttonxl += "<button type='button' onclick='blockButton("+row.userid+")' class='btn btn-info'>拉黑</button>";
            }
            if(row.userstate=="锁定"){
                buttonxl += "<button type='button' onclick='deblockingButton("+row.userid+")' class='btn btn-danger'>解锁</button>";
            }
            if(row.userstate=="黑名单"){
                buttonxl += "<button type='button' onclick='qxBlockButton("+row.userid+")' class='btn btn-info'>取消拉黑</button>";
            }
            return buttonxl;
        }
        //导出账户信息
        $("#ExceportAccountButton").on("click",function(){
            location.href = "<%=request.getContextPath()%>/wqAccountManageController/ExceportAccount.do";
        });
        //添加个人信息
        $("#addgruserButton").on("click",function () {
            BootstrapDialog.show({
                title:"新增个人账号信息",//标题
                message:$("<div></div>").load("<%=request.getContextPath()%>/tiao/wq/addgruser.jsp"),//弹框内容
                type:BootstrapDialog.TYPE_WARNING,//弹框的类型
                closable: true,
                draggable : true,
                buttons:[
                    {
                        label:"确定",
                        cssClass:"btn-success",
                        action:function(dialog){
                            $.ajax({
                                url:"<%=request.getContextPath()%>/wqAccountManageController/addGrUser.do",
                                type:"post",
                                data:$("#addGrUserForm").serialize(),
                                dataType:"text",
                                success:function(result){
                                    dialog.close();
                                    location.reload();
                                },
                                error:function () {
                                    alert("添加个人信息出错!");
                                }
                            })
                        }
                    }
                ]
            });
        });
        //锁定
        function lockButton(userid){
            var truthBeTold = window.confirm("你确定要锁定吗？");
            if (truthBeTold) {
                $.ajax({
                    url:"<%=request.getContextPath()%>/wqAccountManageController/lockAccount.do",
                    type:"post",
                    data:{"userid":userid},
                    dataType:"text",
                    success:function (resule) {
                        location.reload();
                    },
                    error:function () {
                        alert("锁定出错!");
                    }
                });
            }
        };
        //解锁
        function deblockingButton(userid){
            var truthBeTold = window.confirm("你确定要解锁吗？");
            if (truthBeTold) {
                $.ajax({
                    url:"<%=request.getContextPath()%>/wqAccountManageController/deblockingAccount.do",
                    type:"post",
                    data:{"userid":userid},
                    dataType:"text",
                    success:function (resule) {
                        location.reload();
                    },
                    error:function () {
                        alert("解锁出错!");
                    }
                });
            }
        };
        //拉黑
        function blockButton(userid){
            var truthBeTold = window.confirm("你确定要拉黑吗？");
            if (truthBeTold) {
                BootstrapDialog.show({
                    title:"拉黑",//标题
                    message:$("<div></div>").load("<%=request.getContextPath()%>/wqAccountManageController/backShowUsername.do?userid="+userid),//弹框内容
                    type:BootstrapDialog.TYPE_WARNING,//弹框的类型
                    closable: true,
                    draggable : true,
                    buttons:[
                        {
                            label:"确定",
                            cssClass:"btn-success",
                            action:function(dialog){
                                $.ajax({
                                    url:"<%=request.getContextPath()%>/wqAccountManageController/blockAccount.do",
                                    type:"post",
                                    data:$("#lhUserForm").serialize(),
                                    dataType:"text",
                                    success:function (resule) {
                                        dialog.close();
                                        location.reload();
                                    },
                                    error:function () {
                                        alert("拉黑出错!");
                                    }
                                });
                            }
                        }
                    ]
                });
            }
        };
        //取消拉黑
        function qxBlockButton(userid){
            var truthBeTold = window.confirm("你确定要取消拉黑吗？");
            if (truthBeTold) {
                $.ajax({
                    url:"<%=request.getContextPath()%>/wqAccountManageController/qxBlockAccount.do",
                    type:"post",
                    data:{"userid":userid},
                    dataType:"text",
                    success:function (resule) {
                        location.reload();
                    },
                    error:function () {
                        alert("取消拉黑出错!");
                    }
                });
            }
        };
        //新增企业用户
        $("#addqyuserButton").on("click",function(){
            location.href = "<%=request.getContextPath()%>/tiao/wq/addqy.jsp";
        });
        //新增机构用户
        $("#addjguserButton").on("click",function(){
            location.href = "<%=request.getContextPath()%>/tiao/wq/addjg.jsp";
        });

    </script>


    <script type="text/javascript">
        $("#registerdatestaryz").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#registerdateendz").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
    </script>

</body>
</html>

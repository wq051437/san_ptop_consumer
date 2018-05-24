<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/22
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>企业信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title  glyphicon glyphicon-search">企业信息</h3>
        </div>
        <form class="form-inline">
            <br>
            &nbsp;&nbsp;&nbsp;企业账号&nbsp;<input type='text' name="usernameq" id="usernameq" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            企业名称&nbsp;<input type='text' name="qynameq" id="qynameq" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            联系人姓名&nbsp;<input type='text' name="lxrnameq" id="lxrnameq" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            手机号码&nbsp;<input type='text' name="userphoneq" id="userphoneq" class="form-control"><br><br>
            &nbsp;注册时间&nbsp;
            <div class="form-group">
                <input type="text" class="form-control" id="registerdatestaryq" name="registerdatestaryq">&nbsp;
                至&nbsp;<input type="text" class="form-control" id="registerdateendq" name="registerdateendq">
            </div>&nbsp;状态
            <select class="form-control" name="userstateq">
                <option value="">--请选择--</option>
                <option value="启用">启用</option>
                <option value="锁定">锁定</option>
                <option value="黑名单">黑名单</option>
            </select>&nbsp;&nbsp;&nbsp;是否允许投资
            <select class="form-control" name="sfyxinvestq">
                <option value="">--请选择--</option>
                <option value="是">是</option>
                <option value="否">否</option>
            </select>
        </form>
        <button type="button" id="tiaojianq" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="ExceportQyButton" class="btn btn-primary glyphicon glyphicon-share-alt">导出</button>
    </div>
    <div style="height: 50%">
        <table id="qyTab"></table>
    </div>

    <script type="text/javascript">
        //条件查询
        $("#tiaojianq").on("click",function(){
            $("#qyTab").bootstrapTable("refresh",{query:{
                'username':$("#usernameq").val(),
                'qyname':$("#qynameq").val(),
                'lxrname':$("[name='lxrnameq']").val(),
                'userphone':$("[name='userphoneq']").val(),
                'registerdatestary':$("[name='registerdatestaryq']").val(),
                'registerdateend':$("[name='registerdateendq']").val(),
                'userstate':$("[name='userstateq']").val(),
                'sfyxinvest':$("[name='sfyxinvestq']").val()
            }});
        })
        //分页查询个人信息
        $("#qyTab").bootstrapTable({
            url:"<%=request.getContextPath()%>/wqQyNewsController/queryQyNews.do",
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
                {field:"qyid",title:"序号",width:50,align:'center'},
                {field:"username",title:"企业账号",width:50,align:'center'},
                {field:"qyname",title:"企业名称",width:100,align:'center'},
                {field:"lxrname",title:"联系人名称",width:100,align:'center'},
                {field:"userphone",title:"联系人电话",width:100,align:'center'},
                {field:"dobusiness",title:"营业执照/社会信用代码",width:100,align:'center'},
                {field:"registerdate",title:"注册时间",width:150,align:'center'},
                {field:"userstate",title:"状态",width:100,align:'center'},
                {field:"sfyxinvest",title:"是否允许投资",width:100,align:'center'},
                {field:"caozuoq",title:"操作",width:250,align:'center',formatter:actionFormatterq}
            ]]
        });
        function actionFormatterq(value,row,index){
            var buttonxl= "";
            //buttonxl += "<button type='button' onclick='lockButton("+row.userid+")' class='btn btn-danger'>查看</button>";
            //buttonxl += "<button type='button' onclick='updategruserButton("+row.grid+")' class='btn btn-info'>修改</button>";
            //buttonxl += "<button type='button' onclick='deblockingButton("+row.userid+")' class='btn btn-danger'>审核</button>";
            //buttonxl += "<button type='button' onclick='qxBlockButton("+row.userid+")' class='btn btn-info'>审核记录</button>";
            return buttonxl;
        }
        //导出企业信息
        $("#ExceportQyButton").on("click",function(){
            location.href = "/wqQyNewsController/ExceportQy.do";
        });

    </script>


    <script type="text/javascript">
        $("#registerdatestaryq").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#registerdateendq").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
    </script>

</body>
</html>

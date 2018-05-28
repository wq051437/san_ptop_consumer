<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/17
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title  glyphicon glyphicon-search">个人信息</h3>
        </div>
        <form class="form-inline">
            <br>
            &nbsp;&nbsp;&nbsp;用户名&nbsp;<input type='text' name="usernamep" id="usernamep" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            姓名&nbsp;<input type='text' name="grnamep" id="grnamep" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            手机号码&nbsp;<input type='text' name="userphonep" id="userphonep" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            邮箱&nbsp;<input type='text' name="useremilyp" id="useremilyp" class="form-control"><br><br>
            &nbsp;&nbsp;&nbsp;业务员工号&nbsp;<input type='text' name="jobnumberp" id="jobnumberp" class="form-control">&nbsp;注册时间&nbsp;
            <div class="form-group">
                <input type="text" class="form-control" id="registerdatestaryp" name="registerdatestaryp">&nbsp;
                至&nbsp;<input type="text" class="form-control" id="registerdateendp" name="registerdateendp">
            </div>&nbsp;注册来源
            <select class="form-control" name="registersourcep">
                <option value="">--请选择--</option>
                <option value="后台注册">后台注册</option>
                <option value="PC注册">PC注册</option>
                <option value="APP注册">APP注册</option>
                <option value="微信注册">微信注册</option>
            </select>&nbsp;&nbsp;&nbsp;状态
            <select class="form-control" name="userstatep">
                <option value="">--请选择--</option>
                <option value="启用">启用</option>
                <option value="锁定">锁定</option>
                <option value="黑名单">黑名单</option>
            </select>&nbsp;&nbsp;&nbsp;
        </form>
        <button type="button" id="tiaojianp" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="ExceportPeoplenewsButton" class="btn btn-primary glyphicon glyphicon-share-alt">导出</button>
    </div>
    <div style="height: 50%">
        <table id="peoplenewsTab"></table>
    </div>

    <script type="text/javascript">
        //条件查询
        $("#tiaojianp").on("click",function(){
            $("#peoplenewsTab").bootstrapTable("refresh",{query:{
                'username':$("#usernamep").val(),
                'grname':$("#grnamep").val(),
                'userphone':$("[name='userphonep']").val(),
                'useremily':$("[name='useremilyp']").val(),
                'jobnumber':$("[name='jobnumberp']").val(),
                'registerdatestary':$("[name='registerdatestaryp']").val(),
                'registerdateend':$("[name='registerdateendp']").val(),
                'registersource':$("[name='registersourcep']").val(),
                'userstate':$("[name='userstatep']").val()
            }});
        })
        //分页查询个人信息
        $("#peoplenewsTab").bootstrapTable({
            url:"<%=request.getContextPath()%>/wqPeopleNewsController/queryPeopleNews.do",
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
                {field:"grid",title:"序号",width:50,align:'center'},
                {field:"username",title:"用户名",width:50,align:'center'},
                {field:"grname",title:"姓名",width:100,align:'center'},
                {field:"userphone",title:"联系电话",width:100,align:'center'},
                {field:"gridcard",title:"身份证",width:100,align:'center'},
                {field:"useremily",title:"邮箱",width:100,align:'center'},
                {field:"userstate",title:"状态",width:100,align:'center'},
                {field:"jobnumber",title:"业务员工号",width:100,align:'center'},
                {field:"registersource",title:"注册来源",width:100,align:'center'},
                {field:"registerdate",title:"注册时间",width:150,align:'center'},
                {field:"caozuop",title:"操作",width:250,align:'center',formatter:actionFormatterp}
            ]]
        });
        function actionFormatterp(value,row,index){
            var buttonxl= "";
            buttonxl += "<button type='button' onclick='selectGrButton("+row.grid+")' class='btn btn-success'>查看</button>";
            buttonxl += "<button type='button' onclick='updategruserButton("+row.grid+")' class='btn btn-info'>修改</button>";
            /*buttonxl += "<button type='button' onclick='toExamineGrButton("+row.grid+")' class='btn btn-danger'>审核</button>";*/
            return buttonxl;
        }
        //导出个人信息
        $("#ExceportPeoplenewsButton").on("click",function(){
            location.href = "<%=request.getContextPath()%>/wqPeopleNewsController/ExceportPeopleNews.do";
        });
        //查看个人信息
        function selectGrButton(grid){
            location.href = "<%=request.getContextPath()%>/wqPeopleNewsController/selectJbPeopleNews.do?grid="+grid;
        }
        //审核个人信息
        function toExamineGrButton(grid){
            alert(grid);
        }
        //修改个人信息
        function updategruserButton(grid){
            BootstrapDialog.show({
                title:"修改个人信息",//标题
                message:$("<div></div>").load("<%=request.getContextPath()%>/wqPeopleNewsController/backShowPeopleNews.do?grid="+grid),//弹框内容
                type:BootstrapDialog.TYPE_WARNING,//弹框的类型
                closable: true,
                draggable : true,
                buttons:[
                    {
                        label:"确定",
                        cssClass:"btn-success",
                        action:function(dialog){
                            $.ajax({
                                url:"<%=request.getContextPath()%>/wqPeopleNewsController/updateGrUser.do",
                                type:"post",
                                data:$("#updateGrUserForm").serialize(),
                                dataType:"text",
                                success:function(result){
                                    dialog.close();
                                    location.reload();
                                },
                                error:function () {
                                    alert("修改个人信息出错!");
                                }
                            })
                        }
                    }
                ]
            });
        };

    </script>


    <script type="text/javascript">
        $("#registerdatestaryp").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#registerdateendp").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
    </script>

</body>
</html>

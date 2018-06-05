<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/24
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人用户详情</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title glyphicon glyphicon-file">用户详细信息</h3>
            <button type="button" id="selectGrInfoFh" class="btn btn-primary">返回</button>
        </div>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名：${grjbxx.username}
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;账户余额：${grjbxxc.capitalmoney}元
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;必要认证：未认证
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;借款负债：0.00元
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册时间：${grjbxx.registerdate}
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;净资产：0.00元<br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;理财资产：0.00元
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;可选认证：未认证
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;逾期次数：0
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;严重逾期次数：0
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业务员工号：${grjbxx.jobnumber}
    </div>

    <ul class="nav nav-tabs">
        <li><a href="javascript:grjbxinx()">基本信息</a></li>
        <li><a href="javascript:greducation(${grjbxx.userid})">个人学历信息</a></li>
        <li><a href="javascript:grwork(${grjbxx.userid})">个人工作信息</a></li>
        <li><a href="javascript:grroom(${grjbxx.userid})">房产信息</a></li>
        <li><a href="javascript:grcar(${grjbxx.userid})">车产信息</a></li>
        <li><a href="javascript:grloanrecord(${grjbxx.userid})">借款记录</a></li>
    </ul>

    <table id="grContentTab" style="display: none">
        <tr>
            <td align="right"><font color="red">*</font>用户名：</td>
            <td>${grjbxx.username}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>真实姓名：</td>
            <td>${grjbxxs.grname}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>身份证号：</td>
            <td>${grjbxxs.gridcard}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>手机号码：</td>
            <td>${grjbxx.userphone}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>邮箱地址：</td>
            <td>${grjbxx.useremily}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>性别：</td>
            <td>${grjbxxs.grsex}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>出生日期：</td>
            <td>${grjbxxs.grbirthday}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>拉黑原因：</td>
            <td>${grjbxx.lhcontent}</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>风险评估：</td>
            <td>暂无</td>
        </tr>
        <tr>
            <td align="right"><font color="red">*</font>评估剩余次数：</td>
            <td>暂无</td>
        </tr>
    </table>
    <div style="height: 50%" style="display: none" id="greducationTabDiv">
        <table id="greducationTab"></table>
    </div>
    <div style="height: 50%" style="display: none" id="grworkTabDiv">
        <table id="grworkTab"></table>
    </div>
    <div style="height: 50%" style="display: none" id="grroomTabDiv">
        <table id="grroomTab"></table>
    </div>
    <div style="height: 50%" style="display: none" id="grcarTabDiv">
        <table id="grcarTab"></table>
    </div>
    <%--借款记录--%>
    <div style="height: 50%" style="display: none" id="grloanrecordTabDiv">
        <br>
        <form class="form-inline">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;借款标题&nbsp;<input type='text' name="loantitlesj" id="loantitlesj" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            借款时间&nbsp;
            <div class="form-group">
                <input type="text" class="form-control" id="applyloandatestarysj" name="applyloandatestarysj">&nbsp;
                至&nbsp;<input type="text" class="form-control" id="applyloandateendsj" name="applyloandateendsj">
            </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;状态
            <select class="form-control" name="loanstatesj">
                <option value="">全部</option>
                <option value="1">已处理</option>
                <option value="2">未处理</option>
            </select>
            <button type="button" id="grloantiaojian" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        </form>
        <table id="grloanrecordTab"></table>
    </div>

    <script>
        //个人借款记录
        function grloanrecord(userid){
            //条件查询
            $("#grloantiaojian").on("click",function(){
                $("#grloanrecordTab").bootstrapTable("refresh",{query:{'loantitle':$("#loantitlesj").val(),
                    'applyloandatestary':$("[name='applyloandatestarysj']").val(),
                    'applyloandateend':$("[name='applyloandateendsj']").val(),
                    'loanstate':$("[name='loanstatesj']").val(),}});
            })
            $("#grloanrecordTab").bootstrapTable({
                url:"<%=request.getContextPath()%>/wqPeopleNewsController/queryGrLoanRecord.do?userid="+userid,
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
                    {field:"loanid",title:"序号",width:100,align:'center'},
                    {field:"loantitle",title:"借款标题",width:100,align:'center'},
                    {field:"moneyrate",title:"年化利率(%)",width:100,align:'center'},
                    {field:"loanmoney",title:"借款金额(元)",width:100,align:'center'},
                    {field:"loanmonth",title:"期限(月)",width:100,align:'center'},
                    {field:"applyloandate",title:"借款时间",width:100,align:'center'},
                    {field:"loanstate",title:"状态",width:100,align:'center',formatter:actionFormatterloanstate},
                    /*{field:"caozuop",title:"操作",width:100,align:'center',formatter:actionFormatterp}*/
                ]]
            });
            function actionFormatterloanstate(value,row,index){
                var loanstatepd= "";
                if(row.loanstate==1){
                    loanstatepd += "已处理";
                }
                if(row.loanstate==2){
                    loanstatepd += "未处理";
                }
                return loanstatepd;
            }
            $("#grContentTab").hide();
            $("#grworkTabDiv").hide();
            $("#greducationTabDiv").hide();
            $("#grroomTabDiv").hide();
            $("#grcarTabDiv").hide();
            $("#grloanrecordTabDiv").show();
        }
        //个人车产信息
        function grcar(userid){
            $("#grcarTab").bootstrapTable({
                url:"<%=request.getContextPath()%>/wqPeopleNewsController/queryGrCar.do?userid="+userid,
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
                    {field:"carid",title:"序号",width:100,align:'center'},
                    {field:"carbrand",title:"汽车品牌",width:100,align:'center'},
                    {field:"carnum",title:"车牌号",width:100,align:'center'},
                    {field:"buycaryear",title:"购车年份(年)",width:100,align:'center'},
                    {field:"buyprice",title:"购买价格(万元)",width:100,align:'center'},
                    {field:"assessmentprice",title:"评估价值(万元)",width:100,align:'center'},
                    /*{field:"caozuop",title:"操作",width:100,align:'center',formatter:actionFormatterp}*/
                ]]
            });
            function actionFormatterp(value,row,index){
                var buttonxl= "";
                //buttonxl += "<button type='button' onclick='updateGrWorkButton("+row.workid+")' class='btn btn-info'>修改</button>";
                return buttonxl;
            }
            $("#grContentTab").hide();
            $("#grworkTabDiv").hide();
            $("#greducationTabDiv").hide();
            $("#grroomTabDiv").hide();
            $("#grloanrecordTabDiv").hide();
            $("#grcarTabDiv").show();
        }
        //个人房产信息
        function grroom(userid){
            $("#grroomTab").bootstrapTable({
                url:"<%=request.getContextPath()%>/wqPeopleNewsController/queryGrRoom.do?userid="+userid,
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
                    {field:"roomid",title:"序号",width:100,align:'center'},
                    {field:"quartersname",title:"小区名称",width:100,align:'center'},
                    {field:"squaremeter",title:"建筑面积(平方米)",width:100,align:'center'},
                    {field:"roomprice",title:"购买价格(万元)",width:100,align:'center'},
                    {field:"roomaddress",title:"地址",width:100,align:'center'},
                    /*{field:"caozuop",title:"操作",width:100,align:'center',formatter:actionFormatterp}*/
                ]]
            });
            function actionFormatterp(value,row,index){
                var buttonxl= "";
                //buttonxl += "<button type='button' onclick='updateGrWorkButton("+row.workid+")' class='btn btn-info'>修改</button>";
                return buttonxl;
            }
            $("#grContentTab").hide();
            $("#grworkTabDiv").hide();
            $("#grcarTabDiv").hide();
            $("#grloanrecordTabDiv").hide();
            $("#greducationTabDiv").hide();
            $("#grroomTabDiv").show();
        }
        //个人工作信息
        function grwork(userid){
            $("#grworkTab").bootstrapTable({
                url:"<%=request.getContextPath()%>/wqPeopleNewsController/queryGrWork.do?userid="+userid,
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
                    {field:"workid",title:"序号",width:100,align:'center'},
                    {field:"workstate",title:"工作状态",width:100,align:'center'},
                    {field:"companyname",title:"单位名称",width:100,align:'center'},
                    {field:"positionname",title:"职位名称",width:100,align:'center'},
                    {field:"workaddress",title:"工作地址",width:100,align:'center'},
                    /*{field:"caozuop",title:"操作",width:100,align:'center',formatter:actionFormatterp}*/
                ]]
            });
            function actionFormatterp(value,row,index){
                var buttonxl= "";
                //buttonxl += "<button type='button' onclick='updateGrWorkButton("+row.workid+")' class='btn btn-info'>修改</button>";
                return buttonxl;
            }
            $("#grContentTab").hide();
            $("#grroomTabDiv").hide();
            $("#grcarTabDiv").hide();
            $("#greducationTabDiv").hide();
            $("#grloanrecordTabDiv").hide();
            $("#grworkTabDiv").show();
        }
        //个人学历
        function greducation(userid){
            $("#greducationTab").bootstrapTable({
                url:"<%=request.getContextPath()%>/wqPeopleNewsController/queryGrEducation.do?userid="+userid,
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
                    {field:"stuid",title:"序号",width:100,align:'center'},
                    {field:"finishschool",title:"毕业学校",width:100,align:'center'},
                    {field:"enrollmentyear",title:"入学年份(年)",width:100,align:'center'},
                    {field:"finishyear",title:"毕业年份(年)",width:100,align:'center'},
                    {field:"major",title:"专业",width:100,align:'center'},
                    {field:"schoolinfo",title:"在校情况简介",width:100,align:'center'},
                    /*{field:"caozuop",title:"操作",width:100,align:'center',formatter:actionFormatterp}*/
                ]]
            });
            function actionFormatterp(value,row,index){
                var buttonxl= "";
                //buttonxl += "<button type='button' onclick='updateGrEducationButton("+row.stuid+")' class='btn btn-info'>修改</button>";
                return buttonxl;
            }
            $("#grContentTab").hide();
            $("#grworkTabDiv").hide();
            $("#grcarTabDiv").hide();
            $("#grroomTabDiv").hide();
            $("#grloanrecordTabDiv").hide();
            $("#greducationTabDiv").show();
        }
        //个人基本信息
        function grjbxinx(grid){
            $("#grworkTabDiv").hide();
            $("#grcarTabDiv").hide();
            $("#greducationTabDiv").hide();
            $("#grloanrecordTabDiv").hide();
            $("#grroomTabDiv").hide();
            $("#grContentTab").show();
        }
        //返回个人信息页面
        $("#selectGrInfoFh").on("click",function(){
            location.href = "<%=request.getContextPath()%>/tiao/wq/peoplenews.jsp";
        });
        //修改个人工作信息
        function updateGrWorkButton(workid){
            alert(workid);
        }
        //修改个人学历信息
        function updateGrEducationButton(stuid){
            alert(stuid);
        }
    </script>
    <script type="text/javascript">
        $("#applyloandatestarysj").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#applyloandateendsj").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
    </script>

</body>
</html>

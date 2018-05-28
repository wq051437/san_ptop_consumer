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
        <li><a href="javascript:greducation()">个人学历信息</a></li>
        <li><a href="#">个人工作信息</a></li>
        <li><a href="#">房产信息</a></li>
        <li><a href="#">车产信息</a></li>
        <li><a href="#">借款记录</a></li>
        <li><a href="#">投资记录</a></li>
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
    <div style="height: 50%;display: none">
        <table id="greducationTab"></table>
    </div>

    <script>
        $(function(){})
        //个人学历
        /*function greducation(){
            $("#grContentTab").hide();
            $("#greducationTab").show();
        }*/
        //个人基本信息
        function grjbxinx(grid){
            $("#grContentTab").show();
        }
        //返回个人信息页面
        $("#selectGrInfoFh").on("click",function(){
            location.href = "<%=request.getContextPath()%>/tiao/wq/peoplenews.jsp";
        });
    </script>

</body>
</html>

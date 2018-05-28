<%--
  Created by IntelliJ IDEA.
  User: 左小山
  Date: 2018/5/25
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线充值</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<form id="formid2">
    <div style="background-color:ghostwhite">
        &nbsp;
        <center>
        <h3 style="color: #31b0d5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线充值</h3><hr>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <font size="4px">选择充值方式<font>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <a href=""><font color="red">查询未完成充值记录&gt;&gt;<font></a>
        <br><br>

      <%--微信支付--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="paycompany" value="1">
        <img src="<%=request.getContextPath()%>/css/weixin.jpg" height="70" width="150"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      <%--支付宝支付--%>
        <input type="radio" name="paycompany" value="2">
        <img src="<%=request.getContextPath()%>/css/zhifubao.jpg"  height="70" width="150"/><br><br>

          填写充值金额<br>
        <div style="background-color:seashell;width: 900px" ><br>
            <font size="5px" color="#ff8c00">可用金额：99,011.04元<br><br>
            充值金额：
            <div class="input-group">
                <input  type="hidden"  value="${sessionScope.quserid}" id="quserid" name="userid">

                <input type="text" class="form-control" placeholder="请输入金额（元）" name="rechargemoney">
            </div><br>
            充值手续费：0.00元
            <input  type="hidden" name="receivable">
            </font><br><br>
            <input type="button" id="czje"  class="btn06 sumbitForme btn btn-primary"  value="提  交"/><br><br>
        </div>
            <br><br><br>
        </center>
    </div>
</form>
</body>
<script type="text/javascript">
    //    新增**********************************************************************************
    $("#czje").on("click",function(){
        $.ajax({
            url:'<%=request.getContextPath()%>/zxsczController/addCZje.do',
            type:'post',
            data:$("#formid2").serialize(),
            dataType:'text',
            async:false,
            success:function(addFlag) {
                alert("新增成功!")
                //$("#formid").bootstrapTable('refresh');
                history.go(0)
                //$("#file-DingDan").bootstrapTable("refresh",{'pageNumber':1});
            },
            error:function(){
                alert("新增错误!")
            }
        })
    })

</script>
</html>

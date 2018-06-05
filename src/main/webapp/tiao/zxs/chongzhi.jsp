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
<form id="formid3">
    <div style="background-color:ghostwhite">
        &nbsp;
        <center>
            <h3 style="color: #31b0d5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线充值</h3><hr>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font size="4px">选择充值方式<font>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                <br><br>

                <%--微信支付--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="paycompany" value="微信支付" checked="checked" >
                <img src="<%=request.getContextPath()%>/css/weixin.jpg" height="70" width="150"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <%--支付宝支付--%>
                <input type="radio" name="paycompany" value="支付宝支付" >
                <img src="<%=request.getContextPath()%>/css/zhifubao.jpg"  height="70" width="150"/><br><br>

                填写充值金额<br>
                <div style="background-color:seashell;width: 900px" ><br>
                    <font size="5px" color="#ff8c00">可用金额：${qcapitalmoney}元<br><br>
                        充值金额：
                        <div class="input-group">
                            <input  type="hidden"  value="${sessionScope.quserid}" id="quserid" name="userid">
                            <input type="text" placeholder="请输入金额（元）" id="srje" onblur="srjessss()">
                        </div><br>

                        充值手续费： <span id="prices"></span>元
                        <input  type="hidden" name="receivable" id="prices1">
                        <input  type="hidden" name="received" id="prices2"><br>

                        实际到账： <span id="shiji"></span>元
                        <input type="hidden"  name="rechargemoney" id="shiji2">


                    </font><br><br>
                    <input type="button" id="czje"  class="btn06 sumbitForme btn btn-primary"  value="提  交"/><br><br>
                </div>
                <br><br><br>
        </center>
    </div>
</form>
</body>
<script type="text/javascript">

    $(function () {
        var quserids = $("#quserid").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/zxsczController/queryCapital.do",
            type:'post',
            data:{"userid":quserids},
            dataType:'text',
            async:false,
            success:function(addFlag) {
            },
            error:function(){
            }
        })
    })
    <%--function queryCapital(quserid) {--%>
    <%--Location.href = "<%=request.getContextPath()%>/zxsczController/queryCapital.do?userid="+quserid;--%>
    <%--}--%>
    function srjessss() {
        // 获取输入金额的值
        var srje = $("#srje").val();
        var price = eval(srje*0.005);
        $("#prices").html(price);
        $("#prices1").val(price);
        $("#prices2").val(price);
        var shijis = eval(srje-price);
        $("#shiji").html(shijis);
        $("#shiji2").val(shijis);
    }
</script>

<script type="text/javascript">

    //    新增**********************************************************************************
    $("#czje").on("click",function(){
        var rec = $("#shiji2").val();
        $.ajax({
            url:'<%=request.getContextPath()%>/zxsczController/addCZje.do?capitalmoney='+rec,
            type:'post',
            data:$("#formid3").serialize(),
            dataType:'text',
            async:false,
            success:function(addFlag) {
                alert("充值成功!")
                history.go(0)
            },
            error:function(){
                alert("充值错误!")
            }
        })
    })


</script>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/28
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改企业信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <form id="updateQyUserForm" class="form-inline">
        <input type="hidden" name="qyid" value="${qyManagerBean.qyid}">
        <table>
            <tr>
                <td align="right">企业名称：</td>
                <td>${qyManagerBean.qyname}</td>
            </tr>
            <tr>
                <td align="right">营业执照登记注册号：</td>
                <td>
                    <input type='text' name="dobusiness" value="${qyManagerBean.dobusiness}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">企业纳税号：</td>
                <td>
                    <input type='text' name="qypaytaxesnum" value="${qyManagerBean.qypaytaxesnum}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">注册年份：</td>
                <td>
                    <input type='text' name="zcyear" value="${qyManagerBean.zcyear}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">注册资金：</td>
                <td>
                    <input type='text' name="zcfund" value="${qyManagerBean.zcfund}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">行业：</td>
                <td>
                    <input type='text' name="industry" value="${qyManagerBean.industry}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">企业规模：</td>
                <td>
                    <input type='text' name="qyscale" value="${qyManagerBean.qyscale}" class="form-control">人
                </td>
            </tr>
            <tr>
                <td align="right">法人：</td>
                <td>
                    <input type='text' name="qyfr" value="${qyManagerBean.qyfr}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">法人身份证号：</td>
                <td>
                    <input type='text' name="fridcard" value="${qyManagerBean.fridcard}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">资产净值：</td>
                <td>
                    <input type='text' name="zcnetworth" value="${qyManagerBean.zcnetworth}" class="form-control">万元
                </td>
            </tr>
            <tr>
                <td align="right">上年度经营现金流入：</td>
                <td>
                    <input type='text' name="profit" value="${qyManagerBean.profit}" class="form-control">万元
                </td>
            </tr>
            <tr>
                <td align="right">贷款卡证书编号：</td>
                <td>
                    <input type='text' name="dkcertificate" value="${qyManagerBean.dkcertificate}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">企业信用证书编号：</td>
                <td>
                    <input type='text' name="xycertificate" value="${qyManagerBean.xycertificate}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">是否允许投资：</td>
                <td>
                    <input type="hidden" id="sfyxinvestqy" value="${qyManagerBean.sfyxinvest}">
                    <input type='radio' name="sfyxinvest" value="是">是
                    <input type='radio' name="sfyxinvest" value="否">否
                </td>
            </tr>
        </table>
    </form>

    <script>
        //是否允许投资回显
        var sfyxinvestqys = $("#sfyxinvestqy").val();
        var sfyxinvests = $("[name='sfyxinvest']");
        for (var j = 0; j < sfyxinvests.length; j++) {
            if(sfyxinvestqys==sfyxinvests[j].value){
                $(sfyxinvests[j]).prop("checked",true);
            }
        }
    </script>

</body>
</html>

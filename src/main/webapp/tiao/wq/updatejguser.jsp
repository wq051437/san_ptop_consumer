<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/27
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改机构信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <form id="updateJgUserForm" class="form-inline">
        <input type="hidden" name="jgid" value="${jgManagerBean.jgid}">
        <table>
            <tr>
                <td align="right">机构名称：</td>
                <td>${jgManagerBean.jgname}</td>
            </tr>
            <tr>
                <td align="right">营业执照登记注册号：</td>
                <td>
                    <input type='text' name="dobusiness" value="${jgManagerBean.dobusiness}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">机构纳税号：</td>
                <td>
                    <input type='text' name="jgpaytaxesnum" value="${jgManagerBean.jgpaytaxesnum}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">组织机构代码：</td>
                <td>
                    <input type='text' name="zzjgdm" value="${jgManagerBean.zzjgdm}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">注册年份：</td>
                <td>
                    <input type='text' name="zcyear" value="${jgManagerBean.zcyear}" class="form-control">年
                </td>
            </tr>
            <tr>
                <td align="right">注册资金：</td>
                <td>
                    <input type='text' name="zcfund" value="${jgManagerBean.zcfund}" class="form-control">万元
                </td>
            </tr>
            <tr>
                <td align="right">行业：</td>
                <td>
                    <input type='text' name="industry" value="${jgManagerBean.industry}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">机构规模：</td>
                <td>
                    <input type='text' name="jgscale" value="${jgManagerBean.jgscale}" class="form-control">人
                </td>
            </tr>
            <tr>
                <td align="right">法人：</td>
                <td>
                    <input type='text' name="jgfr" value="${jgManagerBean.jgfr}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">法人身份证号：</td>
                <td>
                    <input type='text' name="fridcard" value="${jgManagerBean.fridcard}" class="form-control">
                </td>
            </tr>
            <tr>
                <td align="right">资产净值：</td>
                <td>
                    <input type='text' name="zcnetworth" value="${jgManagerBean.zcnetworth}" class="form-control">万元
                </td>
            </tr>
            <tr>
                <td align="right">上年度经营现金流入：</td>
                <td>
                    <input type='text' name="profit" value="${jgManagerBean.profit}" class="form-control">万元
                </td>
            </tr>
            <tr>
                <td align="right">担保机构介绍：</td>
                <td>
                    <textarea name="jgreferral">${jgManagerBean.jgreferral}</textarea>
                </td>
            </tr>
            <tr>
                <td align="right">是否允许投资：</td>
                <td>
                    <input type="hidden" id="sfyxinvestjg" value="${jgManagerBean.sfyxinvest}">
                    <input type='radio' name="sfyxinvest" value="是">是
                    <input type='radio' name="sfyxinvest" value="否">否
                </td>
            </tr>
            <tr>
                <td align="right">是否允许购买不良债权：</td>
                <td>
                    <input type="hidden" id="sfyxbuyjg" value="${jgManagerBean.sfyxbuy}">
                    <input type='radio' name="sfyxbuy" value="是">是
                    <input type='radio' name="sfyxbuy" value="否">否
                </td>
            </tr>
        </table>
    </form>

    <script>
        //是否允许投资回显
        var sfyxinvestjgs = $("#sfyxinvestjg").val();
        var sfyxinvests = $("[name='sfyxinvest']");
        for (var j = 0; j < sfyxinvests.length; j++) {
            if(sfyxinvestjgs==sfyxinvests[j].value){
                $(sfyxinvests[j]).prop("checked",true);
            }
        }
        //是否允许购买不良债权回显
        var sfyxbuyjgs = $("#sfyxbuyjg").val();
        var sfyxbuys = $("[name='sfyxbuy']");
        for (var j = 0; j < sfyxbuys.length; j++) {
            if(sfyxbuyjgs==sfyxbuys[j].value){
                $(sfyxbuys[j]).prop("checked",true);
            }
        }
    </script>

</body>
</html>

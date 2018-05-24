<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/22
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户拉黑</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <form id="lhUserForm" class="form-inline">
        <input type="hidden" name="userid" value="${qUserBeanname.userid}">
        <table>
            <tr>
                <td>用户名</td>
                <td>${qUserBeanname.username}</td>
            </tr>
            <tr>
                <td>拉黑说明</td>
                <td>
                    <textarea name="lhcontent"></textarea>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>

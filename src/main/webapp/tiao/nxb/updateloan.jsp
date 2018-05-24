<%--
  Created by IntelliJ IDEA.
  User: 微星
  Date: 2018/5/21
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<form id="updateloanone">
    <input type="hidden" name="staffid" value="${Personalloan.loanid}">

    <%-- <span  id="sp">${deptstaff.deptid }</span> --%>
    处理结果:<input class="easyui-textbox" name="process" value="${Personalloan.process}">
             <textarea class="" name="process" value="${Personalloan.process}></textarea>
</form>
</body>
</html>

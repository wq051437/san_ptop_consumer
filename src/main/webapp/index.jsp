<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/14
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Date" import="java.util.Date" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>
<html>
<head>
    <title>后台管理系统</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<frameset rows="120,*,0" cols="*" framespacing="0" frameborder="no" border="0"   name="aa"><!--top-->
    <frame src="/header.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
    <!--center-->
   <%-- <frameset  cols="*"   >--%>
    <frame src="/left.jsp"  name="leftFrame"  scrolling="no"/>
    <!--center-->
    <frame src="/footer.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />

</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>

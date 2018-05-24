<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/15
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Date" import="java.util.Date" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>

<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="bootcommon.jsp"  flush="true"></jsp:include>

<body>
<nav class="list-group-item active"   >
    <div class="row" role="presentation" class="active">
        <div class="col-md-6">
            <%
                Date d = new Date();
                SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日  E");
                String now = df.format(d);
            %>
            <font  size="3px">
                <%=now %>
            </font></div>
        <div class="col-md-2"  ><span   class="glyphicon glyphicon-user">
            <font  size="4px">欢迎您,${ sessionScope.uu}
            </font></span>
        </div>
        <div class="col-md-2">
            <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=0" target="leftFrame">
                <font  size="3px" color="#f0f8ff"> <span class="glyphicon glyphicon-wrench" color="#f0f8ff">
               修改密码
            </span></font>
            </a>
        </div>
        <div class="col-md-2">
            <a id=HyperLink"  onclick="logout()" href="javascript:window.opener=null;window.close();" >
            <font  size="3px" color="#f0f8ff"> <span class="glyphicon glyphicon-off" color="#f0f8ff">
               安全退出
            </span>
            </font>
        </a></div>
    </div>
</nav>
<nav class="list-group-item active"   >
    <div class="row" role="presentation" class="active">
        <div class="col-md-1">
            <img src="<%=request.getContextPath()%>/css/timg.jpg"  height="60" width="100"/>
        </div>
        <div class="col-md-11">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=1" target="leftFrame">
                        <font size="3px" color="aqua">
                             <span  class="glyphicon glyphicon-home">首页</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=2"  target="leftFrame" >
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-user">会员管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a  href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=3"   target="leftFrame">
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-list-alt">业务管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a  href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=4" target="leftFrame" >
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-globe">宣传管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=5" target="leftFrame">
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-cog">系统管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=6" target="leftFrame">
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-yen">财务管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=7" target="leftFrame">
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-th">统计管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=8" target="leftFrame" >
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-plane">推广管理</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=9" target="leftFrame">
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-tags">基本设置</span>
                        </font>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/tiao/huiyuan.do?a=10" target="leftFrame">
                        <font size="3px" color="black">
                            <span  class="glyphicon glyphicon-phone">APP管理</span>
                        </font>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<script language="javascript" type="text/javascript">
    function logout(){
        top.location = "<%=request.getContextPath()%>/login.jsp";
        return false;
    }
</script>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/17
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增个人账号信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <form id="addGrUserForm" class="form-inline">
        <input type="hidden" name="userstate" value="启用">
        <input type="hidden" name="registersource" value="后台注册">
        <input type="hidden" name="usertype" value="后台注册">
        <table>
            <tr>
                <td>用户名</td>
                <td>
                    <input type='text' name="username" id="username"  class="form-control" placeholder="请填写用户名">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input type='password' name="userpass" id="userpass"  class="form-control" placeholder="请填写密码">
                </td>
            </tr>
            <tr>
                <td>姓名</td>
                <td>
                    <input type='text' name="grname" id="grname"  class="form-control" placeholder="请填写姓名">
                </td>
            </tr>
            <tr>
                <td>身份证号</td>
                <td>
                    <input type='text' name="gridcard" id="gridcard"  class="form-control" placeholder="请填写身份证号">
                </td>
            </tr>
            <tr>
                <td>手机号</td>
                <td>
                    <input type='text' name="userphone" id="userphone"  class="form-control" placeholder="请填写手机号">
                </td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>
                    <input type='text' name="useremily" id="useremily"  class="form-control" placeholder="请填写邮箱">
                </td>
            </tr>
            <tr>
                <td>业务员工号</td>
                <td>
                    <select class="form-control" name="jobnumber">
                        <option value="">--请选择--</option>
                        <option value="1710zxs">1710zxs</option>
                        <option value="1710bpl">1710bpl</option>
                        <option value="1710nxb">1710nxb</option>
                        <option value="1710wq">1710wq</option>
                        <option value="1710zyl">1710zyl</option>
                    </select>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/21
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <form id="updateGrUserForm" class="form-inline">
        <input type="hidden" name="userid" value="${qUserBean.userid}">
        <table>
            <tr>
                <td>用户ID</td>
                <td>${qUserBean.userid}</td>
            </tr>
            <tr>
                <td>用户名</td>
                <td>${qUserBean.username}</td>
            </tr>
            <tr>
                <td>姓名</td>
                <td>${grManagerBean.grname}</td>
            </tr>
            <tr>
                <td>身份证号</td>
                <td>${grManagerBean.gridcard}</td>
            </tr>
            <tr>
                <td>手机号</td>
                <td>
                    <input type='text' name="userphone" id="userphoneug" value="${qUserBean.userphone}" class="form-control" placeholder="请填写手机号">
                </td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>
                    <input type='text' name="useremily" id="useremilyug" value="${qUserBean.useremily}" class="form-control" placeholder="请填写邮箱">
                </td>
            </tr>
            <tr>
                <td>业务员工号</td>
                <td>
                    <select class="form-control" name="jobnumber">
                        <option value="">--请选择--</option>
                        <option value="1710zxs" ${qUserBean.jobnumber =='1710zxs'?'selected':''}>1710zxs</option>
                        <option value="1710bpl" ${qUserBean.jobnumber =='1710bpl'?'selected':''}>1710bpl</option>
                        <option value="1710nxb" ${qUserBean.jobnumber =='1710nxb'?'selected':''}>1710nxb</option>
                        <option value="1710wq" ${qUserBean.jobnumber =='1710wq'?'selected':''}>1710wq</option>
                        <option value="1710zyl" ${qUserBean.jobnumber =='1710zyl'?'selected':''}>1710zyl</option>
                    </select>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/15
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title  glyphicon glyphicon-search">放款管理</h3>
        </div>
        <form class="form-inline">
            <table class="table">
                <tr>
                    <td>公司名称</td>
                    <td>联系人</td>
                    <td>QQ</td>
                </tr>
                <tr>
                    <td>
                        <select style="width: 180px" class="form-control" name="clientid" id="clientids">
                            <option value="">请选择</option>
                        </select>
                    </td>
                    <td>
                        <input type='text' name="contactname" id="contactname" class="form-control" placeholder="联系人模糊匹配">
                    </td>
                    <td>
                        <input type='text' name="contactqq" id="contactqq" class="form-control" placeholder="QQ模糊匹配">
                    </td>
                </tr>
                <tr>
                    <td>录入时间开始</td>
                    <td>录入时间结束</td>
                    <td>手机</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="createdate1" class="datepicker" id="createdate1" placeholder="请选择">
                    </td>
                    <td>
                        <input type="text" name="createdate2" class="datepicker" id="createdate2" placeholder="请选择">
                    </td>
                    <td>
                        <input type='text' name="contactphone" id="contactphone" class="form-control" placeholder="手机模糊匹配">
                    </td>
                </tr>
                <tr>

                    <td colspan="4">
                        <div style="margin-left: 35%">
                            <button type="button" onclick='tiaojian()' class="btn btn-primary col-lg-3 glyphicon glyphicon-circle-arrow-right">查询</button>
                            <button type="reset" class="btn btn-primary col-lg-3 glyphicon glyphicon-refresh">重置</button>
                        </div>
                    </td>

                </tr>
            </table>
        </form>
    </div>

</body>
</html>

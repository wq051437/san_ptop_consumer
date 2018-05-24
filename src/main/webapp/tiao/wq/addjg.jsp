<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/23
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增机构用户</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">增加机构账号</h3>
        </div>
        <form id="addQyForm" class="form-inline">
            <input type="hidden" name="registersource" value="后台注册">
            <input type="hidden" name="usertype" value="企业">
            <br>
            <div style="margin-left: 20%">
                <table>
                    <tr>
                        <td align="right"><font color="red">*</font>机构名称：</td>
                        <td>
                            <input type='text' name="qyname" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>机构简称：</td>
                        <td>
                            <input type='text' name="username" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>营业执照登记注册号：</td>
                        <td>
                            <input type='text' name="dobusiness" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>机构纳税号：</td>
                        <td>
                            <input type='text' name="qypaytaxesnum" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>组织机构代码：</td>
                        <td>
                            <input type='text' name="zzjgdm" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>注册年份：</td>
                        <td>
                            <input type='text' name="zcyear" class="form-control">年
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>行业：</td>
                        <td>
                            <input type='text' name="industry" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>注册基金：</td>
                        <td>
                            <input type='text' name="zcfund" class="form-control">万元
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>法人：</td>
                        <td>
                            <input type='text' name="qyfr" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>机构规模：</td>
                        <td>
                            <input type='text' name="qyscale" class="form-control">人
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>法人身份证号：</td>
                        <td>
                            <input type='text' name="fridcard" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>资产净值：</td>
                        <td>
                            <input type='text' name="zcnetworth" class="form-control">万元
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>法人手机号码：</td>
                        <td>
                            <input type='text' name="frphone" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>上年度经营现金流入：</td>
                        <td>
                            <input type='text' name="profit" class="form-control">万元
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>机构联系人：</td>
                        <td>
                            <input type='text' name="lxrname" class="form-control">
                        </td>
                        <td align="right"><font color="red">*</font>法人邮箱地址：</td>
                        <td>
                            <input type='text' name="useremily" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>是否允许投资：</td>
                        <td>
                            <input type='radio' name="sfyxinvest" value="是">&nbsp;是&nbsp;&nbsp;&nbsp;
                            <input type='radio' name="sfyxinvest" value="否">&nbsp;否
                        </td>
                        <td align="right"><font color="red">*</font>联系人手机：</td>
                        <td>
                            <input type='text' name="userphone" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>担保机构介绍：</td>
                        <td colspan="3">
                            <textarea name=""></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>担保情况描述：</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="right"><font color="red">*</font>是否允许购买不良债权：</td>
                        <td colspan="3">
                            <input type='radio' name="sfyxbuy" value="是">&nbsp;是&nbsp;&nbsp;&nbsp;
                            <input type='radio' name="sfyxbuy" value="否">&nbsp;否
                        </td>
                    </tr>
                </table>
            </div>
        </form>
        <center>
            <button type="button" id="addjgButton" class="btn btn-primary">提交</button>
            <button type="button" id="qxjgButton" class="btn btn-primary">取消</button>
        </center>
    </div>


    <script>

        //取消新增机构用户
        $("#qxjgButton").on("click",function(){
            location.href = "<%=request.getContextPath()%>/tiao/wq/accountmanage.jsp";
        });
        //新增企业用户
        $("#addjgButton").on("click",function(){
            $.ajax({
                url:"<%=request.getContextPath()%>/wqAccountManageController/addQyUser.do",
                type:"post",
                data:$("#addQyForm").serialize(),
                dataType:"text",
                success:function(result){
                    location.href = "<%=request.getContextPath()%>/tiao/wq/accountmanage.jsp";
                },
                error:function () {
                    alert("添加企业信息出错!");
                }
            })
        });

    </script>

</body>
</html>

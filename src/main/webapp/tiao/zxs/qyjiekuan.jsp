<%--
  Created by IntelliJ IDEA.
  User: 左小山
  Date: 2018/5/21
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>企业借款</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>

<form method="post" id="formid2">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-10 column">
                <div class="ml30 lh28 pt10 mr30">
                    <h3>借款意向（企业）</h3><hr>
                    <h4 style="color: #003399">提示 !</h4><br>
                    <font color="#dc143c">提示</font>
                    1.由于业务原因，肥猪网贷目前只支持全国部分城市的借款业务；
                    2.请仔细填写您的真实信息，我们将与您取得联系；<br><br>
                    <div class="container" style="background-color: #94A6B0">
                        <h4> 借款意向填写</h4>
                    </div><br>
                </div>
            </div>
            <center>
                <table  width="600px">
                    <input  type="hidden"  value="${sessionScope.quserid}" name="userid">
                    <tr>
                        <td><h4>企业名称：</h4></td>
                        <td><input name="companyname" id="companynameid" type="text" class="form-control"  placeholder="32位之内"/></td>
                    </tr>
                    <tr>
                        <td><h4>注册号：</h4></td>
                        <td><input name="registration" id="registrationid" type="text" class="form-control" placeholder="企业注册号"/></td>
                    </tr>
                    <tr>
                        <td><h4>联系人：</h4></td>
                        <td><input name="contactname" id="contactnameid" type="text" class="form-control"  placeholder="3到10位之间"/></td>
                    </tr>
                    <tr>
                        <td><h4>借款标题：</h4></td>
                        <td><input name="loantitle" id="loantitleid" type="text" class="form-control"  placeholder="32位之内"/></td>
                    </tr>
                    <tr>
                        <td><h4>手机号：</h4></td>
                        <td><input name="companyphone" id="companyphoneid" type="text" class="form-control" placeholder="11位手机号"/></td>
                    </tr>
                    <tr>
                        <td><h4>公司地址：</h4></td>
                        <td><input name="companyadress" id="companyadressid" type="text" class="form-control"  placeholder="公司具体地址"/></td>
                    </tr>
                    <tr>
                        <td><h4>意向借款金额（元）：</h4></td>
                        <td><input name="loanmoney" type="text" id="loanmid" class="form-control" placeholder="单位/元"/></td>
                    </tr>
                    <tr>
                        <td><h4>借款期限（月）：</h4></td>
                        <td><input name="loandate" type="text" id="loandateid" class="form-control" placeholder="1-24个月"/></td>
                    </tr>
                    <tr>
                        <td><h4>借款类型：</h4></td>
                        <td>
                            <input type="checkbox" name="loantype" value=1 class="mr5"/>抵押
                            <input type="checkbox" name="loantype" value=2 class="ml20 mr5"/>实地认证
                            <input type="checkbox" name="loantype" value=3 class="ml20 mr5"/>担保
                        </td>
                    </tr>
                    <tr>
                        <td><h4>所在城市：</h4></td>
                        <td>
                            <select style="width: 180px" class="form-control" name="companycity" id="shengid2">
                                <option value="0">请选择省</option>
                            </select>
                            <select style="width: 180px" class="form-control" name="companycity" id="shiid2">
                                <option value="0">请选择市</option>
                            </select>
                            <select style="width: 180px" class="form-control" name="companycity" id="xianid2">
                                <option value="0">请选择县</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>预期筹款期限：</h4></td>
                        <td>
                            <select name="fundraisingtime" class="form-control" id="F092">
                                <option value=>请选择</option>
                                <option value=1>7天之内</option>
                                <option value=2>15天之内</option>
                                <option value=3>15-30天</option>
                                <option value=4>1-3个月</option>
                                <option value=5>其他期限</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>借款描述：</h4></td>
                        <td>
                            <textarea class="form-control" rows="3" name="loandescribe" placeholder="50个字内"></textarea>
                        </td>
                    </tr>

                </table><br>

            </center>
        </div>
    </div>
    <center>
        <ul>
            <li class="item">
                <div class="til">&nbsp;</div>
                <div class="con" >
                    <input name="iAgree" onclick="blockDiv2()" type="checkbox" id="iAgree2"/>&nbsp;<label for="iAgree2">我已阅读并同意</label>
                    <a target="_blank" href="/zxs/tiaokuan.jsp" class="highlight">《个人信息采集授权条款》</a>
                </div>
            <li/>

            <div  id="hiddenDiv2" style="display:none;">
                <input type="button" id="tj2"  class="btn06 sumbitForme btn btn-primary"  value="提  交"/>
            </div>
        </ul>
    </center>
</form>
</body>
<%--按钮隐藏************************************************************--%>
<script type="text/javascript">
    function blockDiv2(){
        var div = document.getElementById("hiddenDiv2").style.display;
        if(div=='none'){
            document.getElementById("hiddenDiv2").style.display='block';
        }else{
            document.getElementById("hiddenDiv2").style.display='none';
        }
    }
</script>
<script type="text/javascript">
    //查询地区***************************************************************************
    $.ajax({
        url:"<%=request.getContextPath()%>/zxsjkController/queryArea.do",
        type:"post",
        dataType:"json",
        success:function(area){
            var option = "<option>请选择省份</option>";
            for (var i = 0; i < area.length; i++) {
                if(area[i].parentid==0){
                    option += "<option value='"+area[i].codeid+"'>"+area[i].cityname+"</option>";
                }
            }
            $("#shengid2").html(option);

            $("#shengid2").on("change",function(){
                var option = "<option='0'>请选择城市</option>";
                for (var i = 0; i < area.length; i++) {
                    if(this.value==area[i].parentid){
                        option += "<option value='"+area[i].codeid+"'>"+area[i].cityname+"</option>";
                    }
                }
                $("#shiid2").html(option);
            });
            $("#shiid2").on("change",function(){
                var option = "<option='0'>请选择城县</option>";
                for (var i = 0; i < area.length; i++) {
                    if(this.value==area[i].parentid){
                        option += "<option value='"+area[i].codeid+"'>"+area[i].cityname+"</option>";
                    }
                }
                $("#xianid2").html(option);
            });
        },
        error:function(){
            alert("查询地区出错!");
        }
    });
    //    企业新增**********************************************************************************
    $("#tj2").on("click",function(){
        //企业名称验证------------------------------------------------------
        var a=document.getElementById("companynameid");
        a = a.value;
        if(a.length>32){
            alert("企业名称长度必须在32位之内！");
            return false;
        }
        if(a==''){
            alert("企业名称不能为空！");
            return false;
        }
        //注册号验证------------------------------------------------------
        var b=document.getElementById("registrationid");
        b = b.value;
        if(b==''){
            alert("注册号不能为空！");
            return false;
        }
        if(a==''){
            alert("企业名称不能为空！");
            return false;
        }
        //联系人验证------------------------------------------------------
        var n=document.getElementById("contactnameid");
        n = n.value;
        if(n.length<3||n.length>10 & n!=''){
            alert("联系人不能为空并且长度必须在3到10位之间！");
            return false;
        }
        //借款标题验证------------------------------------------------------
        var n=document.getElementById("loantitleid");
        n = n.value;
        if(n.length<3||n.length>10 & n!=''){
            alert("借款标题不能为空并且长度必须在3到10位之间！");
            return false;
        }
        //手机号验证------------------------------------------------------
        var p = document.getElementById("companyphoneid");
        p = p.value;
        if(p.length!=11 & p!=''){
            alert("手机号不能为空！必须为11位！");
            return false;
        }
        //公司地址验证------------------------------------------------------
        var c = document.getElementById("companyadressid");
        c=c.value;
        if(c==''){
            alert("公司地址不能为空！");
            return false;
        }
        //意向借款金额验证------------------------------------------------------
        var d = document.getElementById("loanmid");
        d=d.value;
        if(d==''){
            alert("金额不能为空！");
            return false;
        }
        //借款期限验证------------------------------------------------------
        var e = document.getElementById("loandateid");
        e=e.value;
        if(e==''){
            alert("借款期限不能为空！");
            return false;
        }
        $.ajax({
            url:'<%=request.getContextPath()%>/zxsjkController/addqyjiekuan.do',
            type:'post',
            data:$("#formid2").serialize(),
            dataType:'text',
            async:false,
            success:function(addFlag) {
                alert("新增成功!")
                //$("#formid").bootstrapTable('refresh');
                history.go(0)
                //$("#file-DingDan").bootstrapTable("refresh",{'pageNumber':1});
            },
            error:function(){
                alert("新增错误!")
            }
        })
    })

</script>

</html>

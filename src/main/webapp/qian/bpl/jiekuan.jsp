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
    <title>个人借款</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>

    <form method="post" id="formid">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-10 column">
                    <div class="ml30 lh28 pt10 mr30">
                        <h3>借款意向（个人）</h3><hr>
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
                    <tr>
                        <td><h4>联系人：</h4></td>
                        <td><input name="loanname" id="loannameid" type="text" class="form-control"  placeholder="3到10位之间"/></td>
                    </tr>
                   <tr>
                    <td><h4>手机号：</h4></td>
                    <td><input name="loanphone" id="loanphoneid" type="text" class="form-control" placeholder="11位手机号"/></td>
                    </tr>
                    <tr>
                    <td><h4>意向借款金额：</h4></td>
                    <td><input name="loanmoney" type="text" class="form-control" placeholder="单位/元"/></td>
                    </tr>
                    <tr>
                    <td><h4>借款期限：</h4></td>
                    <td><input name="loanmonth" type="text" class="form-control" placeholder="1-24个月"/></td>
                    </tr>
                   <tr>
                    <td><h4>借款类型：</h4></td>
                    <td>
                    <input type="checkbox" name="loantypeid" value=1 class="mr5"/>抵押
                    <input type="checkbox" name="loantypeid" value=2 class="ml20 mr5"/>实地认证
                    <input type="checkbox" name="loantypeid" value=3 class="ml20 mr5"/>担保
                    </td>
                    </tr>
                    <tr>
                         <td><h4>所在城市：</h4></td>
                         <td>
                             <select style="width: 180px" class="form-control" name="loanadress" id="shengid">
                                 <option value="0">请选择省</option>
                             </select>
                             <select style="width: 180px" class="form-control" name="loanadress" id="shiid">
                                 <option value="0">请选择市</option>
                             </select>
                             <select style="width: 180px" class="form-control" name="loanadress" id="xianid">
                                 <option value="0">请选择县</option>
                             </select>
                         </td>
                     </tr>
                  <tr>
                         <td><h4>预期筹款期限：</h4></td>
                         <td>
                             <select name="loandate" class="form-control" id="F09">
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
                        <input name="iAgree" onclick="blockDiv()" type="checkbox" id="iAgree"/>&nbsp;<label for="iAgree">我已阅读并同意</label>
                        <a target="_blank" href="/zxs/tiaokuan.jsp" class="highlight">《个人信息采集授权条款》</a>
                    </div>
                <li/>

                <div  id="hiddenDiv" style="display:none;">
                    <input type="button" id="tj"  class="btn06 sumbitForme btn btn-primary"  value="提  交"/>
                </div>
            </ul>
        </center>
    </form>
</body>
<%--按钮隐藏************************************************************--%>
<script type="text/javascript">
    function blockDiv(){
        var div = document.getElementById("hiddenDiv").style.display;
        if(div=='none'){
            document.getElementById("hiddenDiv").style.display='block';
        }else{
            document.getElementById("hiddenDiv").style.display='none';
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
            $("#shengid").html(option);

            $("#shengid").on("change",function(){
                var option = "<option='0'>请选择城市</option>";
                for (var i = 0; i < area.length; i++) {
                    if(this.value==area[i].parentid){
                        option += "<option value='"+area[i].codeid+"'>"+area[i].cityname+"</option>";
                    }
                }
                $("#shiid").html(option);
            });
            $("#shiid").on("change",function(){
                var option = "<option='0'>请选择城县</option>";
                for (var i = 0; i < area.length; i++) {
                    if(this.value==area[i].parentid){
                        option += "<option value='"+area[i].codeid+"'>"+area[i].cityname+"</option>";
                    }
                }
                $("#xianid").html(option);
            });
        },
        error:function(){
            alert("查询地区出错!");
        }
    });
//    新增**********************************************************************************
    $("#tj").on("click",function(){
        //用户名验证------------------------------------------------------
        var n=document.getElementById("loannameid");
        n = n.value;
        if(n.length<3||n.length>10){
            alert("用户名长度必须在3到10位之间！");
            return false;
        }
        //手机验证------------------------------------------------------
        var p = document.getElementById("loanphoneid");
        p=p.value;
        if(p.length!=11){
            alert("手机号必须为11位！");
            return false;
        }
    $.ajax({
        url:'<%=request.getContextPath()%>/zxsjkController/addjiekuan.do',
        type:'post',
        data:$("#formid").serialize(),
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

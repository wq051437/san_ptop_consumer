<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/21
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css/lun.css"/>

    <jsp:include page="bao.jsp"  flush="true"></jsp:include>
</head>
<body>
    <div class="row" style="background-color:ghostwhite">
        <div class="col-md-3">
            <img src="<%=request.getContextPath()%>/css/timg.jpg"  height="100" width="230"/>
        </div>
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <!-- Single button -->
            您好，
            <div class="btn-group">
                <button type="button"  class="btn btn-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${sessionScope.qname}<span class="caret" style="background: right"></span>
                    <input  type="hidden"  value="${sessionScope.qname}" id="qname">
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">充值</a></li>
                    <li><a href="#">提现</a></li>
                    <li><a href="#">资金管理</a></li>
                    <li><a href="#">理财管理</a></li>
                    <li><a href="#">借款管理</a></li>
                    <li><a href="#">安全退出</a></li>
                </ul>
            </div>
        </div>
      <br><br><br>
            <div class="col-md-1"></div>
            <div class="col-md-1"></div>
            <div class="col-md-1">
                   <a onclick="showye()">
                       <button type="button" class="btn btn-success">
                              首页
                       </button>
                   </a>
            </div>
            <div class="col-md-1">
                <div class="btn-group">
                    <button type="button" class="btn btn-success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       我要投资<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">投资项目</a></li>
                        <li><a href="#">债权转让</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-1">
                <div class="btn-group">
                    <button type="button" class="btn btn-success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        我要借款<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">信用贷</a></li>
                        <li><a  onclick="jiekuan()">个人借款</a></li>
                        <li><a href="#">企业借款</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-1">
                <a><button type="button" class="btn btn-success">信息披露</button></a>
            </div>
            <div class="col-md-1">
                <a onclick="zhenghao()"><button type="button" class="btn btn-success">我的账号</button></a>
            </div>
    </div><br>
<div style="display:none"  id="show">
    <div class="bigBox" id="bBox">
        <div class="smallBox" id="sBox">
            <img src="<%=request.getContextPath()%>/css/timg (4).jpg" height="350" width="980"/>
            <img src="<%=request.getContextPath()%>/css/timg (3).jpg"  height="350" width="890"/>
            <img src="<%=request.getContextPath()%>/css/timg (2).jpg"  height="350" width="890"/>
            <img src="<%=request.getContextPath()%>/css/timg (1).jpg"  height="350" width="890"/>
            <img src="<%=request.getContextPath()%>/css/timg (4).jpg"  height="350" width="890"/>
        </div>
        <a href="javascript:;" class="left ab" id="left"></a>
        <a href="javascript:;" class="right ab" id="right"></a>
    </div>
</div>
 <div  style="display:none"   id="zhanghao" >
     <div  class="container-fluid"  >
         <div class="row">
             <div class="col-lg-2">

                    <%--树列表++++++++++++++++++++++++++--%>
                 <div class="tree well">
                     <img src="<%=request.getContextPath()%>/css/timg (5).jpg"  height="100" width="160"   class="img-circle"/>
                     <div id="tree" ></div>
                 </div>
             </div>
             <div class="col-lg-10"  >
                 <!-- 标签页区域 -->
                 <div class="span10" id="mainFrameTabs2">
                     <%--<!-- Nav tabs -->--%>
                     <%--<ul class="nav nav-tabs" role="tablist">--%>
                         <%--<!-- 设置默认的首页标签页，设置noclose样式，则不会被关闭 -->--%>
                         <%--<li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>--%>
                     <%--</ul>--%>
                 <!-- Tab panes -->
                 <div class="tab-content"  >
                     <!-- 默认标签页（首页）的内容区域 -->
                     <div class="tab-pane active" id="bTabs_navTabsMainPage">
                         <div class="row" style="text-align:left;font-size: 15px;line-height: 40px;width: 900px;background-color:aliceblue">
                             ﾞ微笑面对一切挑战！
                             <script type="text/javascript">
                                 function display(clock){
                                     var now=new Date();   //创建Date对象
                                     var year=now.getFullYear(); //获取年份
                                     var month=now.getMonth(); //获取月份
                                     var date=now.getDate();  //获取日期
                                     var day=now.getDay();  //获取星期
                                     var hour=now.getHours(); //获取小时
                                     var minu=now.getMinutes(); //获取分钟
                                     var sec=now.getSeconds(); //获取秒钟
                                     month=month+1;
                                     var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
                                     var week=arr_week[day];  //获取中文的星期
                                     var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec; //组合系统时间
                                     clock.innerHTML="当前时间："+time; //显示系统时间
                                 }
                                 window.onload=function(){
                                     window.setInterval("display(clock)", 1000);
                                 }
                             </script>
                             <div id="clock" ></div>
                         </div><br>
                         <div class="container">
                             <div class="row clearfix">
                                 <div class="col-md-8 row" style="width: 570px;height: 400px;background-color:aliceblue">
                                     报表
                                 </div>
                                 <div class="col-md-8 row" style="width: 360px;height: 400px;background-color:aliceblue"><br>
                                         可用余额(元)：99,011.04<br><br>
                                         冻结金额(元)：0.00<hr style="border:0;background-color:#ff0000;height:1px;">
                                        <a href="">红包(元)：500.00</a><br><br>
                                        <a href="">加息券(张)：2</a><br><br>
                                        <a href="">体验金(元)：50000.00</a><hr style="border:0;background-color:#ff0000;height:1px;">
                                     <input type="button"  class="btn06 sumbitForme btn btn-primary"  value="充值"/>
                                     <input type="button"  class="btn06 sumbitForme btn btn-warning"  value="提现"/>
                                     <input type="button"  class="btn06 sumbitForme btn btn-default"  value="还款"/>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 </div>
             </div>
         </div>
     </div>
 </div>


    <div style="display:none"  id="show2">
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
    </div>
<script>
    $(function(){
        $('#show').show();
    })
    function  showye(){
      location.reload();
    }
    function  zhenghao(){

     if($("#，").val()!==null&&$("#qname").val()!==""){
         $('#show').hide();
         $('#zhanghao').show();
     }else{
         top.location = "<%=request.getContextPath()%>/qian/bpl/login.jsp";
         return false;
     }
    }

    function  jiekuan(){
        $('#show').hide();
        $('#zhanghao').hide();
     $("#show2").show();
    }
</script>
<script>
    function getTree() {
        var data="";
        $.ajax({
            url:"<%=request.getContextPath()%>/qtreeController/treelist.do",
            type:"get",
            async:false,
            success:function(result){
                data=eval("("+result+")");
            }
        })
        return data;
    }
    $('#tree').treeview({
        data: getTree(),
        highlightSelected:true,
        levels:1,
        onNodeSelected:function(event, data) {
            $('#mainFrameTabs2').bTabsAdd(data.id,data.text,data.url);
        }
    });
    $('#mainFrameTabs2').bTabs({
        'resize' : function(){
            $('#mainFrameTabs2').height(600);
        }
    });
</script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css/js/lun.js"></script>



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
</body>
</html>

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
    <title>肥猪理财</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css/lun.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/js/exporting.js"></script>

    <jsp:include page="bootcommon.jsp"  flush="true"></jsp:include>
    <style>
        #show{
            width: 1390px;
            height: 200px;
            border: 1px solid gray;
            margin: 0 auto;
            position: relative;
            overflow: hidden;
        }
        #div1 img{
            position: absolute;
        }
    </style>
</head>
<body>
<div class="row" style="background-color:ghostwhite">
    <div class="col-md-3">
        <img src="<%=request.getContextPath()%>/css/timg.jpg"  height="100" width="250"/>
    </div>
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <!-- Single button -->
        您好，
        <div class="btn-group">
            <button type="button"      class="btn btn-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                ${sessionScope.qname}<span class="caret"></span>
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
    <%--<div class="col-md-1">
        <form class="form-inline">
            <table class="table">
                <tr>
                    <td>搜索公司
                        <input type="text" name="" class="form-control" id="qyname" placeholder="请输入公司名称，如：马上有钱公司">
                        <input type="hidden" name="pageNow" id="pageIndexId" value="1"/>
                        &lt;%&ndash;</form>&ndash;%&gt;
                        <button type="button" id="search_button" class="btn btn-primary col-lg-3 glyphicon glyphicon-circle-arrow-right">查询</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>--%>
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
                <li><a onclick="qyjiekuan()">企业借款</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-1">
        <a>
            <button type="button" class="btn btn-success">
                信息披露
            </button>
        </a>
    </div>
    <div class="col-md-1">
        <a onclick="zhenghao()">
            <button type="button" class="btn btn-success">
                我的账号
            </button>
        </a>
    </div>
</div>
<div style="display:none"  id="show">
    <%--<div class="bigBox" id="bBox">--%>
    <%--<div class="smallBox" id="sBox">--%>
    <img src="<%=request.getContextPath()%>/css/zzz.bmp"  height="200" width="1390"/>
    <img src="<%=request.getContextPath()%>/css/zzz.bmp" height="200" width="1390"/>
    <img src="<%=request.getContextPath()%>/css/zzz.bmp" height="200" width="1390"/>
    <img src="<%=request.getContextPath()%>/css/zzz.bmp"  height="200" width="1390"/>
    <img src="<%=request.getContextPath()%>/css/zzz.bmp"  height="200" width="1390"/>
    <%--<img src="<%=request.getContextPath()%>/css/timg (1).jpg"  height="200" width="1000"/>--%>
    <%--</div>--%>
    <a href="javascript:;" class="left ab" id="left"></a>
    <a href="javascript:;" class="right ab" id="right"></a>
    <%--</div>--%>
</div><br><br><br><br>
<div style="display:none"  id="show5">
    <div class="container">
        <h4>❤你关心的财富资料</h4><hr>
        <div class="row clearfix">
            <div class="col-md-3 column">
                <a href="http://www.zhicheng.com/n/20170227/125455.html">【知识】理财前必须搞懂的10个问题 否则理财必亏无疑</a>
                <img src="<%=request.getContextPath()%>/css/lc.jpg"  height="150" width="230"/>
            </div>
            <div class="col-md-3 column">
                <a href="https://jingyan.baidu.com/article/37bce2be124acc1002f3a2a4.html">理财——李嘉诚教你五年内买车买房</a><br><br>
                <img src="<%=request.getContextPath()%>/css/tr.jpg"  height="150" width="230"/>
            </div>
            <div class="col-md-3 column">
                <a href="https://www.wdzj.com/jhzt/wdlczs/">理财小知识 个人理财小知识 网贷专题 网贷之家</a>
                <img src="<%=request.getContextPath()%>/css/er.jpg"  height="150" width="230"/>
            </div>
            <div class="col-md-3 column"  style=" border-left:solid 1px green;">
                <%--<marquee behavior="scroll ">--%>
                <%--${sessionScope.quserid}--%>
                <%--${sessionScope.quserid}--%>
                <%--${sessionScope.quserid}--%>
                <%--</marquee>--%>
                <video width="320" height="240" controls="controls">
                    <source src="/css/jieshao.mp4" type="audio/mp4">
                </video>
            </div>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th width="7%"></th>
                    <th>
                        <font color="blue">项目名称</font>
                    </th>
                    <th width="10%">
                        <font color="blue">年化利率</font>
                    </th>
                    <th width="10%">
                        <font color="blue">借款期限</font>
                    </th>
                    <th width="18%">
                        <font color="blue">借款金额</font>
                    </th>
                    <th width="18%">
                        <font color="blue">进度</font>
                    </th>
                    <th width="15%">
                        <font color="blue">操作</font>
                    </th>
                </tr>
            </thead>
            <tbody id="investTab"></tbody>
        </table>
    </div>
    <br><br>
    <div id="link">
        <center>
            <div class="link_box_main"><script type="text/javascript" src="/Public/myjs/index_link.js" charset="utf-8"></script>
                <p class="link_text" >
                <h4 style="color: #a9302a">~~~友情链接~~~</h4><script type="text/javascript" src="/Public/myjs/link.js" charset="utf-8"></script>
                <hr width="70%">
                <a href="https://www.tiantou.com" target="_blank" style="color: #a9302a">理财产品排行</a>
                <a href="http://www.pcben.com" target="_blank" style="color: #a9302a">网上贷款</a>
                <a href="http://www.eweb.net.cn" target="_blank" style="color: #a9302a">股票</a>
                <a href="http://www.jiedianqian.com/" target="_blank" style="color: #a9302a">贷款平台</a>
                <a href="http://www.zhongyi9999.com" target="_blank" style="color: #a9302a">中亿财经网</a>
                <a href="http://www.xfkou.com/" target="_blank" style="color: #a9302a">理财师</a>
                <a href="http://www.sibinwave.com" target="_blank" style="color: #a9302a">波浪理论</a>
                <a href="http://money.123.com.cn/" target="_blank" style="color: #a9302a">理财规划</a>
                <a href="http://www.51kaxun.com" target="_blank" style="color: #a9302a">信用卡申请</a>
                <a href="http://www.tou18.cn/" target="_blank" style="color: #a9302a">今日股市行情</a>
                <a href="http://www.51wangdai.com/" target="_blank" style="color: #a9302a">51网贷</a>
                <a href="https://www.okcoin.cn" target="_blank" style="color: #a9302a">比特币</a>
                <a href="http://www.fx168.com/" target="_blank" style="color: #a9302a">外汇</a>
                <a href="http://www.pcben.com" target="_blank" style="color: #a9302a">小额贷款</a>
                <a href="http://www.dajiabao.com" target="_blank" style="color: #a9302a">保险购买</a>
                <a href="http://www.wangdai110.com" target="_blank" style="color: #a9302a">网贷110</a>
                <a href="https://www.itouzi.com" target="_blank" style="color: #a9302a">P2P理财</a>
                <a href="https://www.yetu.net" target="_blank" style="color: #a9302a">2018网贷口子</a>
                <a href="http://www.3456.cn" target="_blank" style="color: #a9302a">信息发布平台</a>
                </p>
            </div>
        </center>
    </div>
    <hr>
</div>
<div  style="display:none"   id="zhanghao" >
    <div  class="container-fluid"  >
        <div class="row">
            <div class="col-lg-2">
                <div class="tree well">
                    <img src="<%=request.getContextPath()%>/css/timg (5).jpg"  height="100" width="160"   class="img-circle"/>
                    <div id="tree" ></div>
                </div>
            </div>
            <div class="col-lg-10"  >
                <!-- 标签页区域 -->
                <div class="span10" id="mainFrameTabs2">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <!-- 设置默认的首页标签页，设置noclose样式，则不会被关闭 -->
                        <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content"  >
                        <!-- 默认标签页（首页）的内容区域 -->
                        <div class="tab-pane active" id="bTabs_navTabsMainPage">
                            <div class="row" style="text-align:left;font-size: 15px;line-height: 40px;width: 900px;background-color:aliceblue">
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
                                <div id="clock" style="text-align:center"></div>
                            </div><br>
                            <div class="container">
                                <div class="row clearfix">
                                    <div class="col-md-8 row" style="width: 570px;height: 400px">
                                        <div id="containerYe" style="min-width: 200px; height: 300px; max-width: 600px; margin: 0 auto;"></div>
                                    </div>
                                    <div class="col-md-8 row" style="width: 360px;height: 400px;background-color:aliceblue"><br>
                                        可用余额(元)：${qcapitalmoney}<br><br>
                                        冻结金额(元)0.00<hr style="border:0;background-color:#ff0000;height:1px;">
                                        <a href="">红包(元)：0.00</a><br><br>
                                        <a href="">加息券(张)：0</a><br><br>
                                        <a href="">体验金(元)：50000.00</a><hr style="border:0;background-color:#ff0000;height:1px;">
                                        <input type="button" id="chongzhi"  class="btn06 sumbitForme btn btn-primary"  value="充值"/>
                                        <input type="button"  class="btn06 sumbitForme btn btn-warning"  value="提现"/>
                                        <input type="button"  class="btn06 sumbitForme btn btn-default"  value="还款"/>
                                    </div>
                                </div>
                            </div>
                            <div style="text-align: center;font-size: 20px;line-height: 20px;">
                                <div class="page-header">
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
                        <input  type="hidden"  value="${sessionScope.quserid}" name="userid">
                        <input  type="hidden"  value="${sessionScope.qname}" name="pusername">


                        <tr>
                            <td><h4>借款标题：</h4></td>
                            <td><input name="loantitle" id="loantitleid" type="text" class="form-control"  placeholder="32位之内"/></td>
                        </tr>
                        <tr>
                            <td><h4>联系人：</h4></td>
                            <td><input name="loanname" id="loannameid" type="text" class="form-control"  placeholder="10位之内"/></td>
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
<div style="display:none"  id="show3">
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
                            <td><input name="contactname" id="contactnameid" type="text" class="form-control"  placeholder="10位之内"/></td>
                        </tr>
                        <tr>
                            <td><h4>借款标题：</h4></td>
                            <td><input name="loantitle" id="loantitleid2" type="text" class="form-control"  placeholder="32位之内"/></td>
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
</div>
<div style="display:none"  id="show4">
    <form id="formid3">
        <div style="background-color:ghostwhite">
            &nbsp;
            <center>
                <h3 style="color: #31b0d5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线充值</h3><hr>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <font size="4px">选择充值方式<font>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br><br>
                    <%--微信支付--%>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="paycompany" value="微信支付" checked="checked" >
                    <img src="<%=request.getContextPath()%>/css/weixin.jpg" height="70" width="150"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--支付宝支付--%>
                    <input type="radio" name="paycompany" value="支付宝支付" >
                    <img src="<%=request.getContextPath()%>/css/zhifubao.jpg"  height="70" width="150"/><br><br>
                    填写充值金额<br>
                    <div style="background-color:seashell;width: 900px" ><br>
                        <font size="5px" color="#ff8c00">可用金额：${qcapitalmoney}元<br><br>
                            充值金额：
                            <div class="input-group">
                                <input  type="hidden"  value="${sessionScope.quserid}" id="quserid" name="userid">
                                <input type="text" placeholder="请输入金额（元）" id="srje" onblur="srjessss()">
                            </div><br>
                            充值手续费： <span id="prices"></span>元
                            <input  type="hidden" name="receivable" id="prices1">
                            <input  type="hidden" name="received" id="prices2"><br>
                            实际到账： <span id="shiji"></span>元
                            <input type="hidden"  name="rechargemoney" id="shiji2">
                        </font><br><br>
                        <input type="button" id="czje"  class="btn06 sumbitForme btn btn-primary"  value="提  交"/><br><br>
                    </div>
                    <br><br><br>
            </center>
        </div>
    </form>
</div>
    <%--立即投资--%>
    <div style="display: none" id="ljtz">
        <div style="margin-left: 20%">
            <div>${investById.investtitle}</div>
            <div style="border-bottom:solid 1px black; height:1px; width: 50%;margin-top: 1%"></div>
            <div style="margin-top: 1%;float: left;width: 20%; height: 30%"><img src="/css/lc.jpg" width="100%" height="100%"></div>
            <div style="margin-left: 21%;margin-top: 1%">
                <ul>
                    <li>项目规模：${investById.investmoney} 元</li>
                    <li>年化利率：${investById.investrate}%</li>
                    <li>投资期限：${investById.investterm} 个月</li>
                    <li>
                        <div class='progress'style="width: 20%" id="tzjdt"></div>
                    </li>
                    <li>发布日期：${investById.lendtime}</li>
                    <li>保障方式：本金全额担保</li>
                    <li>还款方式：等额本金</li>
                    <li>投资人条件：风险承受等级“谨慎型及以上”</li>
                </ul>
            </div>
            <div style="border-bottom:solid 1px black; height:1px; width: 50%;margin-top: 1%"></div>
            <div style="float: left;margin-left: 11%;margin-top: 1%">
                <ul>
                    <li id="xmsy"></li>
                    <li id="maxkt"></li>
                    <li>
                        可用金额：${qcapitalmoney} 元
                        <input type="hidden" value="${qcapitalmoney}" id="qcapitalmoneyid">
                    </li>
                    <li id="tjje">
                        投资金额：<input type="text" name="qiantz">元
                        <input type="hidden" name="qiantzid" id="investids">
                    </li>
                    <li id="qrButton">
                        <button type='button' onclick='qrtjButton()' class='btn btn-success'>确认提交</button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
<script>
    function qrtjButton(){
        var qcapitalmoneyid = $("#qcapitalmoneyid").val();
        var qiantz = $("[name='qiantz']").val();
        var qiantzid = $("[name='qiantzid']").val();
        if(qcapitalmoneyid !=0.00 || qiantz<=qcapitalmoneyid){
            $.ajax({
                url:"<%=request.getContextPath()%>/wqHighchartsController/addInvestRecord.do",
                type:"post",
                data:{"qiantz":qiantz,"qiantzid":qiantzid},
                dataType:"text",
                success:function(result){
                    alert("投资成功!");
                    location.reload();
                },
                error:function () {
                    alert("投资项目出错!");
                }
            });
        }else{
            alert("您的余额不够，请您及时充值 !");
        }
    }
</script>
<script type="text/javascript">
    $(function () {
        var quserids = $("#quserid").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/zxsczController/queryCapital.do",
            type:'post',
            data:{"userid":quserids},
            dataType:'text',
            async:false,
            success:function(addFlag) {
            },
            error:function(){
            }
        })
    })
    <%--function queryCapital(quserid) {--%>
    <%--Location.href = "<%=request.getContextPath()%>/zxsczController/queryCapital.do?userid="+quserid;--%>
    <%--}--%>
    function srjessss() {
        // 获取输入金额的值
        var srje = $("#srje").val();
        var price = eval(srje*0.005);
        $("#prices").html(price);
        $("#prices1").val(price);
        $("#prices2").val(price);
        var shijis = eval(srje-price);
        $("#shiji").html(shijis);
        $("#shiji2").val(shijis);
    }
</script>
<script type="text/javascript">
    //    新增**********************************************************************************
    $("#czje").on("click",function(){
        var rec = $("#shiji2").val();
        $.ajax({
            url:'<%=request.getContextPath()%>/zxsczController/addCZje.do?capitalmoney='+rec,
            type:'post',
            data:$("#formid2").serialize(),
            dataType:'text',
            async:false,
            success:function(addFlag) {
                alert("充值成功!")
                history.go(0)
            },
            error:function(){
                alert("充值错误!")
            }
        })
    })
</script>
<script>
    $(function(){
        $('#show').show();
        $("#show5").show();
    })
    function  showye(){
        location.reload();
    }
    function  zhenghao(){
        if($("#qname").val()!==null&&$("#qname").val()!==""){
            $('#show').hide();
            $('#show5').hide();
            $('#zhanghao').show();
            $("#show2").hide();
            $("#show3").hide();
            $("#show4").hide();
            $("#ljtz").hide();
        }else{
            top.location = "<%=request.getContextPath()%>/qian/bpl/login.jsp";
            return false;
        }
    }
    function  jiekuan(){
        $('#show').hide();
        $('#zhanghao').hide();
        $("#show2").show();
        $("#show5").hide();
        $("#ljtz").hide();
    }
    function  qyjiekuan(){
        $('#show').hide();
        $('#zhanghao').hide();
        $("#show2").hide();
        $("#show3").show();
        $("#show5").hide();
        $("#ljtz").hide();
    }
    $("#chongzhi").on("click",function(){
        $('#show').hide();
        $('#zhanghao').hide();
        $("#show2").hide();
        $("#show3").hide();
        $("#show4").show();
        $("#show5").hide();
        $("#ljtz").hide();

    })
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
                $("#show5").hide();
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
<%--个人按钮隐藏************************************************************--%>
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
<%--企业按钮隐藏************************************************************--%>
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
        if(n.length>10){
            alert("用户名长度必须10位之内！");
            return false;
        }
        //借款标题验证
        var a=document.getElementById("loantitleid");
        a = a.value;
        if(a.length>32){
            alert("借款标题长度必须在32位之内！");
            return false;
        }
        if(a==''){
            alert("借款标题不能为空！");
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
        if(n.length>10 & n!=''){
            alert("联系人不能为空并且长度必须在310位之内！");
            return false;
        }
        //借款标题验证------------------------------------------------------
        var n=document.getElementById("loantitleid2");
        n = n.value;
        if(n.length>32 & n!=''){
            alert("借款标题不能为空并且长度必须在32位之内！");
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
    //报表*************************************
    $(function () {
        var quserids = $("#quserid").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/zxsczController/queryCapitalaaa.do",
            type:"post",
            data:{"userid":quserids},
            dataType:"json",
            success:function(result){
                var a=[];
                for (var i = 0; i < result.length; i++) {
                    a[i]=['余额',result[i].capitalmoney];
                }
                Highcharty(a);
            },
            error:function(){
                alert("余额统计出错");
            }
        });
        function Highcharty(a) {
            var chart = Highcharts.chart('containerYe', {
                title: {
                    text: '占比率',
                    align: 'center',
                    verticalAlign: 'middle',
                    y: 50
                },
                tooltip: {
                    headerFormat: '{series.name}<br>',
                    pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        dataLabels: {
                            enabled: true,
                            distance: -50,
                            style: {
                                fontWeight: 'bold',
                                color: 'white',
                                textShadow: '0px 1px 2px black'
                            }
                        },
                        startAngle: -90, // 圆环的开始角度
                        endAngle: 90,    // 圆环的结束角度
                        center: ['50%', '75%']
                    }
                },
                series: [{
                    type: 'pie',
                    name: '可用余额',
                    innerSize: '50%',
                    data: [
                        ['账户余额', 45.0],
                        ['借款负债', 26.8],
                        ['理财资产', 8.5]
                    ]
                }]
            });
        }
    })
    //投资  investTab
    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/wqHighchartsController/queryInvest.do",
            type:"post",
            dataType:"json",
            success:function(result){
                var tabtz = "";
                for(var i=0;i<result.length;i++){//
                    var jd = eval(result[i].investrecordmaney/result[i].investmoney*100).toFixed(2);
                    tabtz += "<tr>" +
                             "<td class='tr'>" +
                                "<span class='pr10'>" +
                                    "<i class='icon xin1-icon'></i>" +
                                    "<i class='icon bao-icon'></i>" +
                                "</span>" +
                             "</td>"+
                             "<td class='td-title tl'>" +
                                "<div class='tititle-containertle'>" +
                                    "<a title='"+result[i].investtitle+"' href='#'>"+result[i].investtitle+"</a>" +
                                "</div>" +
                             "</td>" +
                             "<td>" +
                                "<div class='f20 gray3'>"+result[i].investrate+"%</div>" +
                             "</td>" +
                             "<td>" +
                                "<div class='f20 gray3'>"+result[i].investterm+"个月</div>" +
                             "</td>" +
                             "<td>" +
                                "<div class='f20 gray3'>"+result[i].investmoney+"元</div>" +
                             "</td>" +
                             "<td>" +
                                "<div class='progress'>" +
                                    "<div class='progress-bar progress-bar-danger' role='progressbar' aria-valuenow='60' " +
                                    "aria-valuemin='0' aria-valuemax='100' style='width: "+jd+"%;'>" +
                                        "<font>"+jd+"%</font>" +
                                    "</div>" +
                                "</div>" +
                             "</td>" +
                             "<td>";
                    if(result[i].lendstate==1){
                        tabtz += "待发布</td></tr>";
                    }if(jd==100.00){
                        tabtz += "待放款</td></tr>";
                    }else{
                        tabtz += "<a href='javascript:touzi("+result[i].investid+")' class='btn-border-blue'>立即投资</a></td></tr>";
                    }
                }
                $("#investTab").html(tabtz);
            },
            error:function () {
                alert("查询投资出错!");
            }
        });
    });
    function touzi(investid){
        if($("#qname").val()=="" || $("#qname").val()==null){
            alert("请您先进行登录!");
            location.href = "<%=request.getContextPath()%>/qian/bpl/login.jsp";
        }else{
            $.ajax({
                url:"<%=request.getContextPath()%>/wqHighchartsController/queryInvestById.do",
                type:"post",
                data:{"investid":investid},
                dataType:"json",
                success:function(result){
                    for(var i=0;i<result.length;i++){
                        $("#investids").val(result[i].investid);
                        var jd = eval(result[i].suminvestrecordmaney/result[i].investmoney*100).toFixed(2);
                        $("#tzjdt").html("<div class='progress-bar progress-bar-danger' role='progressbar' aria-valuenow='60'aria-valuemin='0' aria-valuemax='100' style='width: "+jd+"%;'><font>"+jd+"%</font></div>")
                        var maxq = eval(result[i].investmoney-result[i].suminvestrecordmaney);
                        $("#maxkt").html("最大可投资金额："+maxq+" 元");
                        $("#xmsy").html("项目剩余可投资金额："+maxq+" 元");
                        if(maxq==0){
                            $("#qrButton").hide();
                            $("#tjje").hide();
                        }
                    }
                },
                error:function(){
                    alert("根据ID查询投资信息出错!");
                }
            });
            $('#show').hide();
            $('#zhanghao').hide();
            $("#show2").hide();
            $("#show3").hide();
            $("#show4").hide();
            $("#show5").hide();
            $("#ljtz").show();
            //alert("此功能待改善,请谅解!");
        }
    }
    $("#search_button").on("click",function(){
        searchName = $("#qyname").val();
        pageNows = $("#pageIndexId").val();
        if(searchName !=""){
            $.ajax({
                url:"<%=request.getContextPath()%>/solr/getsolrList.do",
                data:{"searchName":searchName,"pageNow":pageNows},
                type:"post",
                async:false,
                dataType:"json",
                success:function(result){
                    if(result.pageList==""){
                        var str = "没有找到您搜索的职位,请换一个试试";
                        $("#hotList").html(str);
                    }else{
                        //替换之前的职位展示
                        var data = result.pageList;
                        var str="";
                        for (var i=0 ;i<data.length;i++){
                            str+="<li class='clearfix'><div class='hot_pos_l'><div class='mb10'>企业:<b><a href='#' target='_blank'>"+data[i].qyname+"</a></b></li>";
                        }
                        str +="<center><input type='button' value='首页' onclick='homePage()'><input type='button' value='上一页' onclick='perPage("+result.pageNow+")'><input type='button' value='下一页' onclick='nextPage("+result.pageNow+")'><input type='button' value='尾页' onclick='lastPage("+result.pageCount+")'></center>";
                        $("#hotList").html(str);
                    }
                },
                error:function () {
                    alert("报错");
                }
            })
        }else{
            location.reload();
        }
    })
</script>
</body>
</html>

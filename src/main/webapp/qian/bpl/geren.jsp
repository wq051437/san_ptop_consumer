<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/21
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootcommon.jsp"  flush="true"></jsp:include>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/uploadify/uploadify.css">
    <script src="<%=request.getContextPath() %>/uploadify/jquery.uploadify.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/uploadify/jquery.uploadify.js" type="text/javascript"></script>
</head>
<body>
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#home" data-toggle="tab">个人基本信息</a>
    </li>
    <li>
        <a href="#order2" data-toggle="tab">个人学历信息</a>
    </li>
    <li>
        <a href="#order3" data-toggle="tab">个人工作信息</a>
    </li>
    <li>
        <a href="#order4" data-toggle="tab">房产信息</a>
    </li>
    <li>
        <a href="#order5" data-toggle="tab">车产信息</a>
    </li>
</ul>

<div class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <div style="padding:10px;">
            <div class="list-group">
                <div class="row">
                    <div class="col-md-2" id="zhao"></div>
                    <div class="col-md-2">
                        <input type="hidden" name="imageurl" id="imageurl"/>
                        <input type="file" id="file" name="image"/>
                        <div id="show"></div><br/>
                    </div>
                    <div class="col-md-8">
                    </div>
                    <div class="col-md-12">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <td><font  size="5px">用户名</font></td>
                                <td id="ming"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td> <font  size="5px">实名认证</font></td>
                                <td  id="shiming"></td>
                                <td  id="shiming2"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div   style="display:none"  id="">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="in" class="col-sm-2 control-label">原密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="" placeholder="。。。"   onblur="shubiao();">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="pa" class="col-sm-2 control-label">新密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="" placeholder="。。。"    >
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="pa2" class="col-sm-2 control-label">重复新密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="" placeholder="。。。"   onblur="shubiao2();">

                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input  type="button" id=""  class="btn btn-default"   value="确认"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td> <font  size="5px">登录密码</font></td>
                                <td id="mima"></td>
                                <td  id="shezhi"><a onclick="mima()"  >设置</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div   style="display:none"  id="xiugai">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="in" class="col-sm-2 control-label">原密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="in" placeholder="。。。"   onblur="shubiao();">
                                                    <span id="messageqy"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="pa" class="col-sm-2 control-label">新密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="pa" placeholder="。。。"    >
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="pa2" class="col-sm-2 control-label">重复新密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="pa2" placeholder="。。。"   onblur="shubiao2();">
                                                    <span id="messageqy1"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input  type="button" id="queren"  class="btn btn-default"   value="确认"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td> <font  size="5px">绑定邮箱</font></td>
                                <td id="youxiang"></td>
                                <td id="shezhi4"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td> <font  size="5px">绑定手机</font></td>
                                <td id="shouji"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td> <font  size="5px">交易密码</font></td>
                                <td  id="jiaoyi"></td>
                                <td  id="shezhi2"><a onclick="mima2()"  >设置</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div   style="display:none"  id="xiugai2">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="inpu" class="col-sm-2 control-label">原密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="inpu" placeholder="。。。"   onblur="onBlur();">
                                                    <span id="mess"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpa" class="col-sm-2 control-label">新密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="inputpa" placeholder="。。。"    >
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputpa2" class="col-sm-2 control-label">重复新密码</label>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" id="inputpa2" placeholder="。。。"   onblur="onBlur2();">
                                                    <span id="message"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input  type="button" id="xiu"  class="btn btn-default"   value="确认"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="tab-pane fade" id="order2">
        <div style="padding:10px;">
            <div class="list-group">
                <button type="button" class="btn btn-primary btn-lg"   data-toggle="modal" data-target="#myModal6">
                    新建
                </button>
                <div  id="educationlist">
                </div>
            </div>
        </div>
    </div>

    <div class="tab-pane fade" id="order3">
        <div style="padding:10px;">
            <div class="list-group">
                <button type="button" class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#myModal4"   >
                    新建
                </button>
                <div  id="work">
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="order4">
        <div style="padding:10px;">
            <div class="list-group">
                <button type="button" class="btn btn-primary btn-lg"   data-toggle="modal" data-target="#myModal2"  >
                    新建
                </button>
                <div  id="room">
                </div>
            </div>
        </div>
    </div>

    <div class="tab-pane fade" id="order5">
        <div style="padding:10px;">
            <div class="list-group">
                <button type="button" class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#myModal7"  >
                    新建
                </button>
                <div  id="car">
                </div>
            </div>
        </div>
    </div>
</div>

<%--车产新增--%>
<div   class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="carlist" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">车产新增</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">汽车品牌</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="pipai"   name="carbrand" onblur="onblurpipai();"  >
                        </div>
                    </div>
                    <br>
                    <center> <span id="co"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">车牌号码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="haom"   name="carnum"   onblur="onblurhaoma();" >
                        </div>
                    </div>
                    <br>
                    <center> <span id="co2"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">购车年份</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="nianfen"   name="buycaryear"  onblur="onblurnianfen();"  > 年
                        </div>
                    </div>
                    <br>
                    <center> <span id="co3"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">购买价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="carprice"   name="buyprice" onblur="onblurcarprice();" >万元
                        </div>
                    </div>
                    <br>
                    <center> <span id="co4"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="tito" class="col-sm-4 control-label">评估价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="pg"   name="assessmentprice" onblur="onblurpinggu();"   >万元
                        </div>
                    </div>
                    <br>
                    <center> <span id="co5"></span></center>
                    <br>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"  onclick="savecarlist()" >新增</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--车产修改--%>
<div   class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="updatecar" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">车产修改</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden"  name="carid"   id="cid"/>
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">汽车品牌</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="pipai2"   name="carbrand"   >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">车牌号码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="haom2"   name="carnum"    >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">购车年份</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="nianfen2"   name="buycaryear"    > 年
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">购买价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="carprice2"   name="buyprice"  >万元
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tito" class="col-sm-4 control-label">评估价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="pg2"   name="assessmentprice"   >万元
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"  onclick="xiugaicarlist()" >修改</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--新增学历--%>
<div   class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="schoollist" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">新增学历</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">毕业院校</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="xiao"   name="finishschool" onblur="onblurxiao();"  >
                        </div>
                    </div>
                    <br>
                    <center> <span id="kong"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">入学年份</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="ru"   name="enrollmentyear"   onblur="onblurru();" >年
                        </div>
                    </div>
                    <br>
                    <center> <span id="kong2"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">毕业年份</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="bi"   name="finishyear"  onblur="onblurbi();"  > 年
                        </div>
                    </div>
                    <br>
                    <center> <span id="kong3"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">专业</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="ye"   name="major" onblur="onblurye();" >
                        </div>
                    </div>
                    <br>
                    <center> <span id="kong5"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="tito" class="col-sm-4 control-label">在校情况简介</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="tito"   name="schoolinfo" onblur="onblurtito();"   >
                        </div>
                    </div>
                    <br>
                    <center> <span id="kong4"></span></center>
                    <br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"  onclick="tijiao()" >提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>

                </div>

            </div>
        </form>
    </div>
</div>

<%--修改学历页面--%>
<div   class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="updateschool" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">修改学历页面</h4>
                </div>
                <div class="modal-body">
                    <input  type="hidden" id="upid" name="stuid"/>
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">毕业院校</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="xiao2"   name="finishschool" onblur="onblurxiao();"  >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">入学年份</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="ru2"   name="enrollmentyear"   onblur="onblurru();" >年
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">毕业年份</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="bi2"   name="finishyear"  onblur="onblurbi();"  > 年
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">专业</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="ye2"   name="major" onblur="onblurye();" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tito" class="col-sm-4 control-label">在校情况简介</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="tito2"   name="schoolinfo" onblur="onblurtito();"   >
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"  onclick="tijiao2()" >修改</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<%--新增工作经历--%>
<div   class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="worklist" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">新增工作经历</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">工作状态</label>
                        <div class="col-sm-8">
                            <select class="form-control" name="workstate"   id="state" >
                                <option value='在职'>---在职----</option>
                                <option value='离职'>---离职----</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">单位名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="qyname"   name="companyname"   onblur="onblurdanweiname();" >
                        </div>
                    </div>
                    <br>
                    <center> <span id="wo2"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">职业</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="zwname"   name="positionname"  onblur="onblurzhiye();"  >
                        </div>
                    </div>
                    <br>
                    <center> <span id="wo3"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">工作城市</label>
                        <div class="col-sm-8">
                            <select  class="form-control" name="workaddress"   id="addres" >
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"  onclick="tijiao3()" >提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<%--修改工作--%>
<div   class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="updatework" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">修改工作简历</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden"  name="workid"  id="worid"/>
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">工作状态</label>
                        <div class="col-sm-8">
                            <select class="form-control" name="workstate"   id="state2" >

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">单位名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="qyname2"   name="companyname"   onblur="onblurdanweiname();" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">职业</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="zwname2"   name="positionname"  onblur="onblurzhiye();"  >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">工作城市</label>
                        <div class="col-sm-8">
                            <select  class="form-control" name="workaddress"   id="addres2" >
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"  onclick="tijiao4()" >提交</button>

                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<%--新增房产信息--%>
<div   class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="roomlist" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">新增房产</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">小区名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="quname"   name="quartersname"   onblur="onblurxiaoquname();" >
                        </div>
                    </div>
                    <br>
                    <center> <span id="ro"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">建筑面积</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="jzmianji"   name="squaremeter"   onblur="onblurjzmjname();" >平方米
                        </div>
                    </div>
                    <br>
                    <center> <span id="ro2"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">购买价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="price"   name="roomprice"  onblur="onblurprice();"  >万元
                        </div>
                    </div>
                    <br>
                    <center> <span id="ro3"></span></center>
                    <br>
                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">地址</label>
                        <div class="col-sm-8">
                            <select  class="form-control" name="roomaddress"   id="url" >
                            </select>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="tijiao5()">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>


<%--修改房产--%>
<div   class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <form  method="post" class="form-horizontal" id="updateroom" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">修改房产</h4>
                </div>
                <div class="modal-body">
                    <input  type="hidden" name="roomid" id="roid"/>
                    <div class="form-group">
                        <label for="xiao" class="col-sm-4 control-label">小区名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="quname2"   name="quartersname"   >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ru" class="col-sm-4 control-label">建筑面积</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="jzmianji2"   name="squaremeter"    >平方米
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="bi" class="col-sm-4 control-label">购买价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="price2"   name="roomprice"  >万元
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="ye" class="col-sm-4 control-label">地址</label>
                        <div class="col-sm-8">
                            <select  class="form-control" name="roomaddress"   id="url2" >
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="roomupdate">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--个人学历--%>
<script>
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/queryaddresslist.do",
            type: "post",
            dataType: "json",
            success: function (results) {
                var   xiala="";
                for(var  i=0;i<results.length;i++){
                    xiala+="<option value="+results[i].cityname+">"+results[i].cityname+"</option>"  ;
                }
                $("#addres").html(xiala);
                $("#url").html(xiala);
            }
        })
    })
    $("#educationlist").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/quserController/queryeducationlistlist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /* height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        showColumns:true,//显示选择展示列的按钮
        showRefresh:true,//刷新按钮
        detailFormatter:function(index,row){
            //格式化详细页
            return '<a href="#">'+row.bname+'</a>';
        },
        //searchAlign:"left",//搜索框的显示位置
        paginationHAlign:"left",//分页按钮的显示位置
        paginationDetailHAlign:"right",//总页数 和条数的显示位置
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        clickToSelect:true,
        toolbar:"#button",
        sidePagination:"server",
        method:"post",
        contentType:"application/x-www-form-urlencoded",
        columns: [
            {checkbox: true},
            {title:'序号',field: 'stuid',width:"200px",align:"center"},
            {title:'毕业院校',field: 'finishschool',width:"200px",align:"center"},
            {title:'入学年份',field: 'enrollmentyear',width:"200px",align:"center"},
            {title:'毕业年份',field: 'finishyear',width:"200px",align:"center"},
            {title:'专业',field: 'major',width:"200px",align:"center"},
            {title:'在校情况简介',field: 'schoolinfo',width:"200px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return  '<button class="btn btn-primary btn-sm"   data-toggle="modal" data-target="#myModal5"    onclick="xiugai(\'' + row.stuid + '\')">修改</button>';
                }
            },
        ],
    })
    $("#work").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/quserController/queryworklist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /* height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        showColumns:true,//显示选择展示列的按钮
        showRefresh:true,//刷新按钮
        detailFormatter:function(index,row){
            //格式化详细页
            return '<a href="#">'+row.bname+'</a>';
        },
        //searchAlign:"left",//搜索框的显示位置
        paginationHAlign:"left",//分页按钮的显示位置
        paginationDetailHAlign:"right",//总页数 和条数的显示位置
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        clickToSelect:true,
        toolbar:"#button",
        sidePagination:"server",
        method:"post",
        contentType:"application/x-www-form-urlencoded",
        columns: [
            {checkbox: true},
            {title:'序号',field: 'workid',width:"200px",align:"center"},
            {title:'工作状态',field: 'workstate',width:"200px",align:"center"},
            {title:'单位名称',field: 'companyname',width:"200px",align:"center"},
            {title:'职位名称',field: 'positionname',width:"200px",align:"center"},
            {title:'工作地址',field: 'workaddress',width:"200px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return  '<button class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#myModal3"   onclick="xiugaiwork(\'' + row.workid + '\')">修改</button>';
                }
            },
        ],
    })

    $("#room").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/quserController/queryroomlist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /* height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        showColumns:true,//显示选择展示列的按钮
        showRefresh:true,//刷新按钮
        detailFormatter:function(index,row){
            //格式化详细页
            return '<a href="#">'+row.bname+'</a>';
        },
        //searchAlign:"left",//搜索框的显示位置
        paginationHAlign:"left",//分页按钮的显示位置
        paginationDetailHAlign:"right",//总页数 和条数的显示位置
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        clickToSelect:true,
        toolbar:"#button",
        sidePagination:"server",
        method:"post",
        contentType:"application/x-www-form-urlencoded",
        columns: [
            {checkbox: true},
            {title:'序号',field: 'roomid',width:"200px",align:"center"},
            {title:'小区名称',field: 'quartersname',width:"200px",align:"center"},
            {title:'建筑面积(平方米)',field: 'squaremeter',width:"200px",align:"center"},
            {title:'购买价格(万元)',field: 'roomprice',width:"200px",align:"center"},
            {title:'地址',field: 'roomaddress',width:"200px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return  '<button class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#myModal"    onclick="xiugairoom(\'' + row.roomid + '\')">修改</button>';
                }
            },
        ],
    })
    $("#car").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/quserController/querycarlist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /* height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        showColumns:true,//显示选择展示列的按钮
        showRefresh:true,//刷新按钮
        detailFormatter:function(index,row){
            //格式化详细页
            return '<a href="#">'+row.bname+'</a>';
        },
        //searchAlign:"left",//搜索框的显示位置
        paginationHAlign:"left",//分页按钮的显示位置
        paginationDetailHAlign:"right",//总页数 和条数的显示位置
        paginationPreText:"上一页",
        paginationNextText:"下一页",
        clickToSelect:true,
        toolbar:"#button",
        sidePagination:"server",
        method:"post",
        contentType:"application/x-www-form-urlencoded",
        columns: [
            {checkbox: true},
            {title:'序号',field: 'carid',width:"200px",align:"center"},
            {title:'汽车品牌',field: 'carbrand',width:"200px",align:"center"},
            {title:'车牌号码',field: 'carnum',width:"200px",align:"center"},
            {title:'购车年份(年)',field: 'buycaryear',width:"200px",align:"center"},
            {title:'购买价格(万元)',field: 'buyprice',width:"200px",align:"center"},
            {title:'评估价值(万元)',field: 'assessmentprice',width:"200px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return  '<button class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#myModal8"    onclick="xiugaicar(\'' + row.carid + '\')">修改</button>';
                }
            },
        ],
    })
    function   xiugai(stuid){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/queryupdatelist.do",
            type: "post",
            data: {"stuid":stuid},
            dataType: "json",
            success: function (results) {
                for(var  i=0;i<results.length;i++){
                    $("#upid").val(results[i].stuid);
                    $("#xiao2").val(results[i].finishschool);
                    $("#ru2").val(results[i].enrollmentyear);
                    $("#bi2").val(results[i].finishyear);
                    $("#ye2").val(results[i].major);
                    $("#tito2").val(results[i].schoolinfo);
                }
            }
        })
    }



    function xiugaiwork(workid){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/queryupdateworklist.do",
            type: "post",
            data: {"workid":workid},
            dataType: "json",
            success: function (results) {
                var  add=null;
                for(var  i=0;i<results.length;i++){
                    $("#worid").val(results[i].workid)
                    if(results[i].workstate=="在职"){
                        $("#state2").html("<option value='在职'  selected>---在职----</option>"+
                            " <option value='离职'>---离职----</option>")
                    }
                    if(results[i].workstate=="离职"){
                        $("#state2").html("<option value='在职'  >---在职----</option>"+
                            " <option value='离职'   selected>---离职----</option>")
                    }
                    $("#qyname2").val(results[i].companyname);
                    $("#zwname2").val(results[i].positionname);
                    add= results[i].workaddress;
                }
                $.ajax({
                    url: "<%=request.getContextPath()%>/quserController/queryaddresslist.do",
                    type: "post",
                    dataType: "json",
                    success: function (results) {
                        var   xiala="";
                        for(var  i=0;i<results.length;i++){
                            if(add==results[i].cityname){
                                xiala+="<option value="+results[i].cityname+"  selected >"+results[i].cityname+"</option>"  ;
                            }
                            xiala+="<option value="+results[i].cityname+">"+results[i].cityname+"</option>"  ;
                        }
                        $("#addres2").html(xiala)
                    }
                })
            }
        })
    }
    function  xiugairoom(roomid){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/queryupdateroomlist.do",
            type: "post",
            data: {"roomid":roomid},
            dataType: "json",
            success: function (results) {
                var add=null;
                for(var  i=0;i<results.length;i++){
                    $("#quname2").val(results[i].quartersname);
                    $("#roid").val(results[i].roomid);
                    $("#jzmianji2").val(results[i].squaremeter);
                    $("#price2").val(results[i].roomprice);
                    add= results[i].roomaddress;
                }
                $.ajax({
                    url: "<%=request.getContextPath()%>/quserController/queryaddresslist.do",
                    type: "post",
                    dataType: "json",
                    success: function (results) {
                        var   xiala="";
                        for(var  i=0;i<results.length;i++){
                            if(add==results[i].cityname){
                                xiala+="<option value="+results[i].cityname+"  selected >"+results[i].cityname+"</option>"  ;
                            }
                            xiala+="<option value="+results[i].cityname+">"+results[i].cityname+"</option>"  ;
                        }
                        $("#url2").html(xiala)
                    }
                })
            }
        })
    }

    function   xiugaicar(carid){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/queryupdatecarlist.do",
            type: "post",
            data: {"carid":carid},
            dataType: "json",
            success: function (results) {
                for(var  i=0;i<results.length;i++){
                    $("#pipai2").val(results[i].carbrand);
                    $("#haom2").val(results[i].carnum);
                    $("#nianfen2").val(results[i].buycaryear);
                    $("#carprice2").val(results[i].buyprice);
                    $("#pg2").val(results[i].assessmentprice);
                    $("#cid").val(results[i].carid);
                }
            }
        })
    }
</script>
<script>
    function onblurxiao(){
        var  xiao= $("#xiao").val();
        if(xiao!=""){
            $("#kong").html("");
        }else {
            $("#kong").html("<font color='red'>不能为空！</font>");
        }
    }
    function onblurru() {
        var  xiao= $("#ru").val();
        if(xiao!=""){
            $("#kong2").html("");
        }else {
            $("#kong2").html("<font color='red'>不能为空！</font>");
        }
    }
    function   onblurbi(){
        var  xiao= $("#bi").val();
        if(xiao!=""){
            $("#kong3").html("");
        }else {
            $("#kong3").html("<font color='red'>不能为空！</font>");
        }
    }
    function onblurtito() {
        var  xiao= $("#tito").val();
        if(xiao!=""){
            $("#kong4").html("");
        }else {
            $("#kong4").html("<font color='red'>不能为空！</font>");
        }
    }
    function  onblurye(){
        var  xiao= $("#ye").val();
        if(xiao!=""){
            $("#kong5").html("");
        }else {
            $("#kong5").html("<font color='red'>不能为空！</font>");
        }
    }
    function  tijiao(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/addeducationlist.do",
            type: "post",
            data: $("#schoollist").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }
    function   tijiao2(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updateeducationlist.do",
            type: "post",
            data: $("#updateschool").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }
</script>

<script>
    function  onblurdanweiname() {
        var  xiao= $("#qyname").val();
        if(xiao!=""){
            $("#wo2").html("");
        }else {
            $("#wo2").html("<font color='red'>不能为空！</font>");
        }
    }
    function    onblurzhiye(){
        var  xiao= $("#zwname").val();
        if(xiao!=""){
            $("#wo3").html("");
        }else {
            $("#wo3").html("<font color='red'>不能为空！</font>");
        }
    }

    function   tijiao3() {
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/addworklist.do",
            type: "post",
            data: $("#worklist").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }

    function  tijiao4(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updateworklist.do",
            type: "post",
            data: $("#updatework").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }
</script>
<script>
    function  onblurxiaoquname(){
        var  xiao= $("#quname").val();
        if(xiao!=""){
            $("#ro").html("");
        }else {
            $("#ro").html("<font color='red'>不能为空！</font>");
        }
    }
    function  onblurjzmjname(){
        var  xiao= $("#jzmianji").val();
        if(xiao!=""){
            $("#ro2").html("");
        }else {
            $("#ro2").html("<font color='red'>不能为空！</font>");
        }
    }

    function  onblurprice(){
        var  xiao= $("#price").val();
        if(xiao!=""){
            $("#ro2").html("");
        }else {
            $("#ro2").html("<font color='red'>不能为空！</font>");
        }
    }

    function  tijiao5(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/addroomlist.do",
            type: "post",
            data: $("#roomlist").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }


    $("#roomupdate").click(function(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updateroomlist.do",
            type: "post",
            data: $("#updateroom").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    })
</script>

<script>
    function onblurpipai() {
        var  xiao= $("#pipai").val();
        if(xiao!=""){
            $("#co").html("");
        }else {
            $("#co").html("<font color='red'>不能为空！</font>");
        }
    }
    function   onblurhaoma () {
        var  xiao= $("#haom").val();
        if(xiao!=""){
            $("#co2").html("");
        }else {
            $("#co2").html("<font color='red'>不能为空！</font>");
        }
    }
    function  onblurnianfen(){
        var  xiao= $("#nianfen").val();
        if(xiao!=""){
            $("#co3").html("");
        }else {
            $("#co3").html("<font color='red'>不能为空！</font>");
        }
    }
    function   onblurcarprice() {
        var  xiao= $("#carprice").val();
        if(xiao!=""){
            $("#co4").html("");
        }else {
            $("#co4").html("<font color='red'>不能为空！</font>");
        }
    }
    function   onblurpinggu(){
        var  xiao= $("#pg").val();
        if(xiao!=""){
            $("#co5").html("");
        }else {
            $("#co5").html("<font color='red'>不能为空！</font>");
        }
    }
    function  savecarlist(){
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/addcarlist.do",
            type: "post",
            data: $("#carlist").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }

    function  xiugaicarlist(){updatecar
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updatecarlist.do",
            type: "post",
            data: $("#updatecar").serialize(),
            dataType: "json",
            success: function (results) {
                alert("成功！")
                location.reload();
            }
        })
    }
</script>



<script>
    var  userpa=null;
    var  userjiaoyi=null;
    $(function(){

        $.ajax({
            url:"<%=request.getContextPath()%>/quserController/gerenxinxi.do",
            type:"post",
            dataType:"json",
            success:function(results){
                for(var  i=0;i<results[0].length;i++){
                    $("#ming").html("<font  size='4px'>"+results[0][i].username+"</font>");
                    userpa=  results[0][i].userpass;
                    userjiaoyi=  results[0][i].jiaoyimima;
                    if(results[0][i].userpass!=null){
                        $("#mima").html("已设置");
                    }else{
                        $("#mima").html("请设置你的密码");
                    }
                    $("#shouji").html("<font  size='4px'>"+results[0][i].userphone+"</font>");
                    if(results[0][i].useremily!=null){
                        $("#youxiang").html("<font  size='4px'>"+results[0][i].useremily+"</font>");
                    }else{
                        $("#shezhi4").html("<font  size='4px'><a onclick=''  >设置</a></font>")
                    }
                    if(results[0][i].jiaoyimima!=null){
                        $("#jiaoyi").html("已设置");
                    }else{
                        $("#jiaoyi").html("请设置你的交易密码");
                    }


                }
                if(results[1]==""){
                    $("#shiming").html("<font  size='4px'><a onclick=''  >设置</a></font>");
                    $("#shiming2").html("<font  size='4px'><a onclick=''  >设置</a></font>");
                    $("#zhao").html("<img src='<%=request.getContextPath()%>/css/timg (5).jpg'  height='150' width='200'   class='img-circle'/>")
                }
                for(var i=0;i<results[1].length;i++){
                    if(results[1][i].gridcard!=null){
                        $("#shiming").html("<font  size='4px'>"+results[1][i].gridcard+"</font>");
                    }else{
                        $("#shiming").html("<font  size='4px'><a onclick=''  >设置</a></font>");
                    }
                    if(results[1][i].grname!=null){
                        $("#shiming2").html("<font  size='4px'>"+results[1][i].grname+"</font>");
                    }else{
                        $("#shiming2").html("<font  size='4px'><a onclick=''  >设置</a></font>");
                    }
                    if(results[1][i].grphoto==null){
                        $("#zhao").html("<img src='<%=request.getContextPath()%>/css/timg (5).jpg'  height='150' width='200'   class='img-circle'/>")
                    }else  {
                        $("#zhao").html("<img src='"+results[1][i].grphoto+"'  height='150' width='200'   class='img-circle'/>")
                    }
                }
            }
        })
    })
</script>
<script>
    function  mima(){
        var  aa= document.getElementById('shezhi');;
        if(aa.innerText=="设置"){
            $("#xiugai").show();
            $("#shezhi").html("<a onclick='mima()' >取消设置</a>");
        }else{
            $("#xiugai").hide();
            $("#shezhi").html("<a onclick='mima()' >设置</a>");
        }
    }
    function mima2() {
        var  aa= document.getElementById('shezhi2');;
        if(aa.innerText=="设置"){
            $("#xiugai2").show();
            $("#shezhi2").html("<a onclick='mima2()' >取消设置</a>");
        }else{
            $("#xiugai2").hide();
            $("#shezhi2").html("<a onclick='mima2()' >设置</a>");
        }
    }
</script>
<script>
    function    shubiao(){
        var   passw=  $("#in").val();
        if(userpa==passw){
            $("#messageqy").html("");
        }else  {
            $("#messageqy").html("<font color='red'>密码与原密码不符</font>");
        }
    }
    function  shubiao2(){
        var   passw2=  $("#pa").val();
        var   passw3=  $("#pa2").val();
        if(passw2==passw3){
            $("#messageqy1").html("");

        }else{
            $("#messageqy1").html("<font color='red'>与上述密码不符</font>");
        }
    }
    $("#queren").on("click",function(){
        var   passw2=  $("#pa").val();
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updatemima.do",
            type: "post",
            data: {"userpass":passw2},
            dataType: "json",
            success: function (results) {
                alert("修改成功，请重新登录！")
                top.location = "<%=request.getContextPath()%>/qian/bpl/login.jsp";
            }
        })
    })
</script>

<script>
    function   onBlur(){
        var   passw=  $("#inpu").val();
        if(userjiaoyi==passw){
            $("#mess").html("");
        }else{
            $("#mess").html("<font color='red'>密码与原密码不符</font>");
        }
    }
    function  onBlur2() {
        var   passw=  $("#inputpa").val();
        var   passw2=  $("#inputpa2").val();
        if(passw==passw2&&passw!=userpa){
            $("#message").html("");
        }else if(passw==userpa){
            $("#message").html("<font color='red'>为保证你的用户交易安全，用户密码与交易密码不能相同！</font>");
        }else{
            $("#message").html("<font color='red'>与上述密码不符</font>");
        }
    }

    $("#xiu").on("click",function(){
        var   passw2=  $("#inputpa").val();
        $.ajax({
            url: "<%=request.getContextPath()%>/quserController/updatejiaoyimima.do",
            type: "post",
            data: {"jiaoyi":passw2},
            dataType: "json",
            success: function (results) {
                alert("修改成功")
                location.reload();
            }
        })
    })
</script>
<script>
    $('#file').uploadify({
        'swf'      : '<%=request.getContextPath() %>/uploadify/uploadify.swf',
        /* 上传的controller地址  */
        'uploader' : '<%=request.getContextPath() %>/quserController/uploadfile.do',
        //'fileExt':          '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
        'fileTypeExts'  :   '*.gif;*.jpg;*.png;*.bmp',  //允许上传的文件格式
        'multi'             :   false,   //是否开启多文件上传
        'debug'           :   false,
        'method'            :   'post', //提交方式
        'fileObjName':'image',    //服务器 接收的文件名称
        'buttonText':'上传头像',		 //按钮值
        'onUploadSuccess' : function(file,data) {
            //参数data服务端输出返回的信息
            var html = '<img src='+data+' width="100" height="100">';
            $("#show").append(html);
            $("[name='imageurl']").val(data);
            location.reload();
        },
    });
</script>
</body>
</html>

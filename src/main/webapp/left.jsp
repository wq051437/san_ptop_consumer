<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/16
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bTabs-master/b.tabs.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bTabs-master/b.tabs.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" type="text/css"/>

</head>
<body>
<div  id="p2"  style="display:none">
    &nbsp;  &nbsp;
    <div class="row">
       <%-- <div class="col-md-1">      </div>--%>
        <div class="col-md-3">
            <nav class="list-group-item active"   >
                <font  size="6px">
                     <span  class="glyphicon glyphicon-user">+
                      今日 新增用户数 [<span  id="one"></span>](人)
                     </span>
                 </font>
            </nav>
        </div>
        <div class="col-md-3">
            <nav class="list-group-item list-group-item-info"   >
              <font  size="6px">
                     <span  class="glyphicon glyphicon-user">↑
                      今日 登录用户数 [<span  id="two"></span>](人)
                     </span>
               </font>
           </nav>
        </div>
        <div class="col-md-3">
            <nav class="list-group-item list-group-item-danger"   >
               <font  size="6px">
                     <span  class="glyphicon glyphicon-repeat">
                      历史 总用户数 [<span  id="three"></span>](人)
                     </span>
               </font>
            </nav>
        </div>
        <div class="col-md-3">
            <nav class="list-group-item list-group-item-warning"   >
                <font  size="6px">
                     <span  class="glyphicon glyphicon-time">
                         当前 在线 人数[<span  id="four"></span>](人)
                     </span>
                </font>
            </nav>
        </div>
      <%--  <div class="col-md-2">      </div>--%>

    </div>
    <br>
    <div class="row">
        <div class="col-md-1">
             <nav class="list-group-item active"   >
                <font  size="7px">
                    待办事项<span  class="glyphicon glyphicon-list-alt"></span>
                </font>
            </nav>
         </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                  待审核借款项目[](个数)
            </font>
        </div>

        <div class="col-md-5">
            <font  size="5px" color="black">
                待处理的个人借款意向[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                待发布的借款项目[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                待处理的企业借款意向[](数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
            待放款的借款项目[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
            待审核的认证信息[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                提现初审[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                提现复审[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                线下充值审核[](个数)
            </font>
        </div>
        <div class="col-md-5">
            <font  size="5px" color="black">
                债权转让审核[](个数)
            </font>
        </div>
    </div>
</div>








<div id="p3"   style="display:none">
    <form class="form-horizontal">
        <div class="form-group">
            <label for="inputEmail" class="col-sm-2 control-label">原密码</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" id="inputEmail" placeholder="。。。"   onblur="inputOnBlur();">
                <span id="messageqy"></span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword1" class="col-sm-2 control-label">新密码</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" id="inputPassword1" placeholder="。。。"    >
                <span id="messageqy1"></span>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword2" class="col-sm-2 control-label">重复新密码</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" id="inputPassword2" placeholder="。。。"   onblur="inputOnBlur2();">
                <span id="messageqy2"></span>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input  type="button" id="updateButton"  class="btn btn-default"   value="确认"/>
                <button type="button"  id="fanhui"   class="btn btn-default">返回</button>
            </div>
        </div>
    </form>
</div>

<div  class="container-fluid" style="display:none" id="p1">
    <div class="row">
        <div class="col-lg-2">
            <div id="tree"></div>
        </div>
        <div class="col-lg-10"  >
            <!-- 标签页区域 -->
            <div class="span10" id="mainFrameTabs">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <!-- 设置默认的首页标签页，设置noclose样式，则不会被关闭 -->
                    <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- 默认标签页（首页）的内容区域 -->
                    <div class="tab-pane active" id="bTabs_navTabsMainPage">
                        <div class="page-header">
                            <h2 style="font-size: 31.5px;text-align: center;font-weight: normal;">欢迎使用</h2>
                        </div>
                        <div style="text-align: center;font-size: 20px;line-height: 20px;">
                            <img src="<%=request.getContextPath()%>/css/timg.jpg"  height="350" width="700"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function getTree() {
        var data="";
        $.ajax({
            url:"<%=request.getContextPath()%>/treeController/treelist.do?a="+${ sessionScope.a},
            type:"get",
            async:false,
            success:function(result){
                data=eval("("+result+")");
            }
        })
        return data;
    }
    $('#tree').treeview({
        levels:1,
        data: getTree(),
        expandIcon:'glyphicon glyphicon-hand-up', //有子节点的图标
        emptyIcon: 'glyphicon glyphicon-hand-down',    //没有子节点的节点图标
        collapseIcon:"glyphicon glyphicon-hand-right",
        onNodeSelected:function(event, data) {
            $('#mainFrameTabs').bTabsAdd(data.id,data.text,data.url);
        }
    });
    $('#mainFrameTabs').bTabs({
        'resize' : function(){
            //这里只是个样例，具体的情况需要计算
            $('#mainFrameTabs').height(700);
        }
    });
</script>
<script type="text/javascript">
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath()%>/userController/queryrenshu.do",
            type: "post",
            dataType:"json",
            success:function(results) {
                $("#one").html(results[0]);
                $("#two").html(results[2]);
                $("#three").html(results[1]);
                $("#four").html(results[2]);
            }
        });
        $('#p2').show();
        $('#p1').hide();
     var  aa=   ${ sessionScope.a};
        if(aa==1){
            $('#p1').hide();
            $('#p3').hide();
            $('#p2').show();
        }else if(aa==0){
            $('#p2').hide();
            $('#p1').hide();
            $('#p3').show();
        }else{
            $('#p2').hide();
            $('#p1').show();
            $('#p3').hide();
        }
    })
</script>
<script type="text/javascript">
    $("#fanhui").on("click",function(){
        $('#p1').hide();
        $('#p3').hide();
        $('#p2').show();
    })
    function inputOnBlur() {
        var   passw=  $("#inputEmail").val();
        $.ajax({
            url: "<%=request.getContextPath()%>/userController/panduanmima.do",
            type: "post",
            data: {"passw": passw},
            dataType:"json",
            success:function(results) {
                if(results==1){
                    $("#messageqy").html("");
                }else{
                    $("#messageqy").html("<font color='red'>密码与原密码不符</font>");
                }
            }
        })
    }
    $("#updateButton").on("click",function(){
        var yzpass = /^(([A-Z])+|([a-z]+)|(\d+)){6}$/;
        var   passwo=  $("#inputPassword1").val();
        if(!yzpass.test(passwo)){
            $("#messageqy1").html("<font color='red'>新密码格式不正确,至少六位</font>");
        }else{
            $("#messageqy1").html("");
        }
        var   passwo3=  $("#inputPassword1").val();
        var   passwo2=  $("#inputPassword2").val();
        if (passwo3==passwo2){
            $("#messageqy2").html("");
        }else {
            $("#messageqy2").html("<font color='red'>与上述密码不符</font>");
        }
        $.ajax({
            url: "<%=request.getContextPath()%>/userController/updatemima.do",
            type: "post",
            data: {"passwo3": passwo3},
            dataType: "json",
            success: function (results) {
                alert("修改成功！,请重新登录")
                top.location = "<%=request.getContextPath()%>/login.jsp";
            }
        })
    })
    function   inputOnBlur2(){
        var   passwo=  $("#inputPassword1").val();
        var   passwo2=  $("#inputPassword2").val();
        if (passwo==passwo2){
            $("#messageqy2").html("");
        }else {
            $("#messageqy2").html("<font color='red'>与上述密码不符</font>");
        }
    }
</script>

</body>
</html>

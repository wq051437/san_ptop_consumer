<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/17
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title  glyphicon glyphicon-yen">待还款列表</h3>
    </div>
    &nbsp;
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <font size="3px" color="#696969">
                待还本金总额 [${sessionScope.b}] 元
            </font>
        </div>
        <div class="col-md-4">
            <font size="3px" color="#696969">
                逾期待还总额 [${sessionScope.b2}] 元
            </font>
        </div>
        <div class="col-md-3">
            <font size="3px" color="#696969">
                严重逾期待还总额 [${sessionScope.b3}] 元
            </font>
        </div>
    </div>
    &nbsp;
</div>
<div class="panel panel-primary"  id="tiao1"  style="display:none">
    &nbsp;
    <form class="form-inline">
        <div class="form-group">
            <label for="pusername">用户名</label>
            <input type="text" class="form-control" id="pusername"  >
        </div>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
            <label for="loantitle">借款标题</label>
            <input type="text" class="form-control" id="loantitle" >
        </div>
        <br><br>
        处理日期
        <div class="form-group">
            <input type="text" class="form-control" id="starttime" name="starttime">&nbsp;
            至&nbsp;<input type="text" class="form-control" id="endtime" name="endtime">
        </div>
        <button type="button" id="tiaocha"   class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="xianshangshou" class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#myModal2"  onclick="onlinelist() "   >线上催收</button>
        <button type="reset" class="btn btn-primary glyphicon glyphicon-refresh">重置</button>
    </form>
</div>
<div class="panel panel-primary"  id="tiao2"  style="display:none">
    &nbsp;
    <form class="form-inline">
        <div class="form-group">
            <label for="pusername2">用户名</label>
            <input type="text" class="form-control" id="pusername2" >
        </div>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
            <label for="loantitle2">借款标题</label>
            <input type="text" class="form-control" id="loantitle2" >
        </div>
        <button type="button" id="tiaocha2" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="xianshangshou2" class="btn btn-primary"    data-toggle="modal" data-target="#myModal2"  onclick="onlinelist() "   >线上催收</button>
        <button type="reset" class="btn btn-primary glyphicon glyphicon-refresh">重置</button>
    </form>
</div>
<div class="panel panel-primary"  id="tiao3"  style="display:none">
    &nbsp;
    <form class="form-inline">
        <div class="form-group">
            <label for="pusername3">用户名</label>
            <input type="text" class="form-control" id="pusername3" >
        </div>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
            <label for="loantitle3">借款标题</label>
            <input type="text" class="form-control" id="loantitle3" >
        </div>
        <button type="button" id="tiaocha3" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="xianshangshou3" class="btn btn-primary" data-toggle="modal" data-target="#myModal2"  onclick="onlinelist() "       >线上催收</button>
        <button type="reset" class="btn btn-primary glyphicon glyphicon-refresh">重置</button>
    </form>
</div>
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#home" onclick="home()" data-toggle="tab">近30天待还款</a>
    </li>
    <li><a href="#order" onclick="order()"  data-toggle="tab">逾期待还款</a>
    </li>
    <li><a href="#order2"  onclick="order2()" data-toggle="tab">严重逾期待还款</a>
    </li>
</ul>
<div class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <div style="padding:10px;">
            <div class="list-group">
                <div id="repayments">
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="order">
        <div style="padding:10px;">
            <div class="list-group">
                <div id="repayments2"></div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="order2">
        <div style="padding:10px;">
            <div class="list-group">
                <div id="repayments3"></div>
            </div>
        </div>
    </div>
</div>

<!--线下催收 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form  method="post" id="fromlist" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">线下催收</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="userid"  id="uid"  />
                    用户名  ： <span  id="name"> </span><br>
                    姓名    : <span  id="xname"> </span><br>
                    <div id="wrap">
                        催收方式 :  <input type="radio" name="collectiontype"   value="电话">电话
                        <input type="radio" name="collectiontype"   value="现场">现场
                        <input type="radio" name="collectiontype"   value="法律">法律
                        <br>
                        <span id="mess4"></span>
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">催收人:</span>
                        <input type="text" class="form-control"   id="cuishouren" name="collectionname"   onblur="onblurren();" >
                    </div>
                    <br>
                    <span id="mess"></span>
                    <div class="input-group">
                        <span class="input-group-addon">  催收时间:  </span>
                        <input type="text" class="form-control" id="shoutime" name="collectiontime"   onblur="onblurren2();" >
                    </div>
                    <br>
                    <span id="mess2"></span>
                    <div class="input-group">
                        <span class="input-group-addon">  结果概要:  </span>
                        <input type="text" class="form-control" placeholder=""  id="gaikuo"  name="collectiontext"  onblur="onblurren3();"  >
                    </div>
                    <br>
                    <span id="mess3"></span>
                    <br>
                    <button type="button" class="btn btn-primary" onclick="addcollectionlist()">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                </div>
                <div class="modal-footer">
                    <div id="underline"></div>
                </div>
            </div>
        </form>
    </div>
</div>

<!--线上催收 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form  method="post" id="fromlist2" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">线上催收</h4>
                </div>
                <div class="modal-body">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#duan" data-toggle="tab">短信</a>
                        </li>
                        <li><a href="#you" data-toggle="tab">邮箱</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="duan">
                            <form    method="post"  id="formlist2" >
                                <div style="padding:10px;">
                                    <div class="list-group">

                                        <input type="hidden" name="userid"  id="ui"  />
                                        发送用户 : <span id="hu"> </span><br>
                                        电话:  <span id="hua" name="onlinephoto"></span>
                                        <div class="input-group">
                                            <span class="input-group-addon">  标题  </span>
                                            <input type="text" class="form-control" placeholder=""  id="tito"  name="onlinetito"   >
                                        </div>
                                        <br>
                                        <span id="m2"></span> <br>
                                        <div class="input-group">
                                            <span class="input-group-addon">  内容  </span>
                                            <textarea name=""  id="gai"  name="onlinetext"   ></textarea>
                                        </div>
                                        <br>
                                        <span id="m"></span> <br>
                                        <button type="button" class="btn btn-primary" onclick="addcollectionlist2()">确定</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="you">
                            <div style="padding:10px;">
                                <div class="list-group">
                                    <input type="hidden" name="userid"  id="ui2"  />
                                    发送用户 : <span id="hu2"> </span><br>
                                    邮箱:  <span id="youx"  name="onlinemailbox"></span>
                                    <div class="input-group">
                                        <span class="input-group-addon">  标题 </span>
                                        <input type="text" class="form-control" placeholder=""  id="ti"  name="onlinetito"   >
                                    </div>
                                    <br>
                                    <span id="me"></span> <br>
                                    <div class="input-group">
                                        <span class="input-group-addon">  内容  </span>
                                        <textarea name=""  id="ga"  name="onlinetext"   ></textarea>
                                    </div>
                                    <br>
                                    <span id="me2"></span> <br>
                                    <button type="button" class="btn btn-primary" onclick="addcollectionlist3()">确定</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
    $("#repayments").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/repaymentsController/repaymentslist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        //pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /*  height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        //showColumns:true,//显示选择展示列的按钮
        //showRefresh:true,//刷新按钮
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
            {title:'序号',field: 'loanid',width:"180px",align:"center"},
            {title:'借款标题',field: 'loantitle',width:"180px",align:"center"},
            {title:'用户名',field: 'pusername',width:"180px",align:"center"},
            {title:'借款金额(元)',field: 'loanmoney',width:"180px",align:"center"},
            {title:'处理日期',field: 'handletime',width:"180px",align:"center"},
            {title:'还款期数(月)',field: 'loanmonth',width:"180px",align:"center"},
            {title:'还款日期',field: 'repaymenttime',width:"180px",align:"center"},
            {title:'剩余还款天数',field: 'surplusday',width:"180px",align:"center",
            },
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return '<button type="button" class="btn  btn-warning "   onclick="infoGrButton('+row.userid+')">个人资料</button>&nbsp;&nbsp;&nbsp;'+
                        '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="addchaUnderline(\'' + row.userid + '\',\''+row.loanid+'\')">线下催收</button>';
                }
            },
        ],
    })
    $("#repayments2").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/repaymentsController/repaymentslist2.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        //pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /*  height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        //showColumns:true,//显示选择展示列的按钮
        //showRefresh:true,//刷新按钮
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
            {title:'序号',field: 'loanid',width:"180px",align:"center"},
            {title:'借款标题',field: 'loantitle',width:"180px",align:"center"},
            {title:'用户名',field: 'pusername',width:"180px",align:"center"},
            {title:'借款金额(元)',field: 'loanmoney',width:"180px",align:"center"},
            {title:'处理日期',field: 'handletime',width:"180px",align:"center"},
            {title:'还款期数(月)',field: 'loanmonth',width:"180px",align:"center"},
            {title:'还款日期',field: 'repaymenttime',width:"180px",align:"center"},
            {title:'超过还款天数',field: 'surplusday',width:"180px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return '<button type="button" class="btn  btn-warning " onclick="infoGrButton('+row.userid+')">个人资料</button>&nbsp;&nbsp;&nbsp;'+
                        '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="addchaUnderline(\'' + row.userid + '\',\''+row.loanid+'\')">线下催收</button>';
                }
            },
        ],
    })

    $("#repayments3").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/repaymentsController/repaymentslist3.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        //pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /*   height:300,//高度*/
        undefinedText:"--",//有数据为空时 显示的内容
        striped:true,//斑马线
        //search:true,
        strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
        //showFooter:true,//表格底部角
        //showColumns:true,//显示选择展示列的按钮
        //showRefresh:true,//刷新按钮
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
            {title:'序号',field: 'loanid',width:"180px",align:"center"},
            {title:'借款标题',field: 'loantitle',width:"180px",align:"center"},
            {title:'用户名',field: 'pusername',width:"180px",align:"center"},
            {title:'借款金额(元)',field: 'loanmoney',width:"180px",align:"center"},
            {title:'处理日期',field: 'handletime',width:"180px",align:"center"},
            {title:'还款期数(月)',field: 'loanmonth',width:"180px",align:"center"},
            {title:'还款日期',field: 'repaymenttime',width:"180px",align:"center"},
            {title:'超过还款天数',field: 'surplusday',width:"180px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return '<button  type="button" class="btn  btn-warning " onclick="infoGrButton('+row.userid+')">个人资料</button>&nbsp;&nbsp;&nbsp;'+
                        '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="addchaUnderline(\'' + row.userid + '\',\''+row.loanid+'\')">线下催收</button>';
                }
            },
        ],
    })
</script>
<script>
    //查询个人信息
    function infoGrButton(userid){
        location.href = "<%=request.getContextPath()%>/wqPeopleNewsController/selectJbPeopleNews.do?userid="+userid;
    }
    //条件查询one
    $("#tiaocha").on("click",function(){
        $("#repayments").bootstrapTable('refresh',
            {query:{
                pusername:$("#pusername").val(),
                loantitle:$("#loantitle").val(),
                starttime:$("#starttime").val(),
                endtime:$("#endtime").val(),
            }});
    })
    //条件查询two
    $("#tiaocha2").on("click",function(){
        $("#repayments2").bootstrapTable('refresh',
            {query:{
                pusername:$("#pusername2").val(),
                loantitle:$("#loantitle2").val(),
            }});
    })
    //条件查询three
    $("#tiaocha3").on("click",function(){
        $("#repayments3").bootstrapTable('refresh',
            {query:{
                pusername:$("#pusername3").val(),
                loantitle:$("#loantitle3").val(),
            }});
    })
</script>

<%--线下--%>
<script>

    function  addchaUnderline(userid,loanid){
        $("#uid").val(userid)
        $.ajax({
            url: "<%=request.getContextPath()%>/repaymentsController/querylistgeren.do",
            type: "post",
            data: {"userid":userid},
            dataType: "json",
            success: function (results) {
                for(var  i=0;i<results.length;i++){
                    $("#name").html(results[i].username)
                    $("#xname").html(results[i].grname)
                }
            }
        })
        $('#underline').bootstrapTable('destroy');
        $("#underline").bootstrapTable({  // 对应table标签的id
            url: "<%=request.getContextPath()%>/collectionController/querycollectionlist.do?loanid="+loanid, // 获取表格数据的url
            pagination:true,//显示分页条
            pageNumber:1,//初始化 页数
            pageSize:10,//初始化 条数
            //pageList:[5,10],//初始化 可选择的条数
            paginationLoop:false,//关闭分页的无限循环
            //height:300,//高度
            undefinedText:"--",//有数据为空时 显示的内容
            striped:true,//斑马线
            //search:true,
            strictSearch:true,//设置精确匹配 true 设置模糊匹配  false 默认模糊匹配false
            //showFooter:true,//表格底部角
            //showColumns:true,//显示选择展示列的按钮
            //showRefresh:true,//刷新按钮
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
                {title:'序号',field: 'collectionid',width:"180px",align:"center"},
                {title:'催收时间',field: 'collectiontime',width:"180px",align:"center"},
                {title:'催收方式',field: 'collectiontype',width:"180px",align:"center"},
                {title:'催收人',field: 'collectionname',width:"180px",align:"center"},
                {title:'结果概括',field: 'collectiontext',width:"180px",align:"center"},
            ],
        })

    }
    function  onblurren(){
        var   cuishouren=  $("#cuishouren").val();
        if(cuishouren==""){
            $("#mess").html("<font color='red'>不能为空！</font>");
        }else{
            $("#mess").html("");
        }
    }
    function  onblurren2(){
        var   shoutime=  $("#shoutime").val();
        if(shoutime!=""){
            $("#mess2").html("");
        }else{
            $("#mess2").html("<font color='red'>不能为空！</font>");
        }
    }
    function  onblurren3(){
        var   gaikuo=  $("#gaikuo").val();
        if(gaikuo!=""){
            $("#mess3").html("");
        }else{
            $("#mess3").html("<font color='red'>不能为空！</font>");
        }
    }
    function   addcollectionlist(){
        var val=$('input:radio[name="collectiontype"]:checked').val();
        console.log(val);
        if(val==undefined){
            $("#mess4").html("<font color='red'>不能为空！</font>");
        }else {
            $("#mess4").html("");
            $.ajax({
                url: "<%=request.getContextPath()%>/collectionController/addunclinelist.do",
                type: "post",
                data: $("#fromlist").serialize(),
                dataType: "json",
                success: function (results) {
                    alert("成功！")
                    location.reload();
                }
            })
        }
    }
</script>
<%--线上 短信--%>
<script>
    function  onlinelist(){
        var userid=null;
        var a=[];
        var pp= $("#repayments").bootstrapTable("getSelections");
        var pp2= $("#repayments2").bootstrapTable("getSelections");
        var pp3= $("#repayments3").bootstrapTable("getSelections");
        //one
        for (var i = 0; i < pp.length; i++) {
            a.push(pp[i].loanid)
            $("#hu").html(pp[i].pusername);
            $("#hu2").html(pp[i].pusername);
            $("#hua").html(pp[i].loanphone);
            userid=pp[i].userid;
        }
        //two
        for (var i = 0; i < pp2.length; i++) {
            a.push(pp2[i].loanid)
            $("#hu").html(pp2[i].pusername);
            $("#hu2").html(pp2[i].pusername);
            $("#hua").html(pp2[i].loanphone);
            userid=pp2[i].userid;
        }
        //san
        for (var i = 0; i < pp3.length; i++) {
            a.push(pp3[i].loanid)
            $("#hu").html(pp3[i].pusername);
            $("#hu2").html(pp3[i].pusername);
            $("#hua").html(pp3[i].loanphone);
            userid=pp3[i].userid;
        }
        $("#ui").val(userid)
        $("#ui2").val(userid)
        if(a!=""){
            $.ajax({
                url: "<%=request.getContextPath()%>/collectionController/addchaxuqiu.do",
                type: "post",
                data: {"userid":userid},
                dataType: "json",
                success: function (results) {
                    for(var i=0;i<results.length;i++){
                        $("#youx").html(results[i].useremily);
                    }
                }
            })
        }
        if(a==""){
            var truthBeTold = window.confirm("请先选择催收人？");
            if (truthBeTold) {
                $('#myModal2').modal({backdrop:false})
            }else{
                $('#myModal2').modal({backdrop:false})
            }
        }else {
        }
    }

    function   addcollectionlist2(){
        var   gaikuo=  $("#gai").val();
        var   tito=  $("#tito").val();
        if(tito!=""){
            $("#m2").html("");
        }else {
            $("#m2").html("<font color='red'>不能为空！</font>");
        }
        if(gaikuo!=""){
            $("#m").html("");
            $.ajax({
                url: "<%=request.getContextPath()%>/collectionController/addunclinelist2.do",
                type: "post",
                data:{"userid":$("#ui").val(),"onlinetext":$("#gai").val(),"onlinetito":$("#tito").val(),"onlinephoto":$("#hua").text()},
                dataType: "json",
                success: function (results) {
                    alert("成功！")
                    location.reload();
                }
            })
        }else {
            $("#m").html("<font color='red'>不能为空！</font>");
        }
    }
</script>
<%--线上邮箱--%>
<script>
    function   addcollectionlist3(){
        var   gaikuo=  $("#ga").val();
        var   tito=  $("#ti").val();
        if(tito!=""){
            $("#me").html("");
        }else {
            $("#me").html("<font color='red'>不能为空！</font>");
        }
        if(gaikuo!=""){
            $("#me2").html("");
            $.ajax({
                url: "<%=request.getContextPath()%>/collectionController/addonclinelist.do",
                type: "post",
                data:{"userid":$("#ui2").val(),"onlinetext":$("#ga").val(),"onlinetito":$("#ti").val(),"onlinemailbox":$("#youx").text()},
                dataType: "json",
                success: function (results) {
                    alert("成功！")
                    location.reload();
                }
            })
        }else {
            $("#me2").html("<font color='red'>不能为空！</font>");
        }
    }
</script>
<script type="text/javascript">
    $(function(){
        $("#tiao1").show();
    })
    function  home(){
        $("#tiao1").show();
        $("#tiao2").hide();
        $("#tiao3").hide();
    }
    function  order(){
        $("#tiao1").hide();
        $("#tiao3").hide();
        $("#tiao2").show();
    }
    function order2() {
        $("#tiao1").hide();
        $("#tiao2").hide();
        $("#tiao3").show();
    }
    $("#starttime").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
    $("#endtime").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
    $("#shoutime").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
</script>
</body>
</html>

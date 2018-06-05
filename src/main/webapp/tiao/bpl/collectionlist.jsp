<%--
  Created by IntelliJ IDEA.
  User: new鹏
  Date: 2018/5/29
  Time: 21:21
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
        <h3 class="panel-title  glyphicon glyphicon-yen">催收记录</h3>
    </div>
    &nbsp;
    <div class="row">
        <div class="col-md-1"></div>
        <form class="form-inline">
        <div class="col-md-3">
                <div class="form-group">
                    <label for="a">借款者</label>
                    <input type="text" class="form-control" id="a" placeholder="">
                </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label >催收方式</label>
                    <select class="form-control" name="collectiontype"   id="collectiontype" >
                        <option value='全部'>---全部----</option>
                        <option value='法律'>---法律----</option>
                        <option value='现场'>---现场----</option>
                        <option value='电话'>---电话----</option>
                        <option value='短信'>---短信----</option>
                        <option value='邮件'>---邮件----</option>
                    </select>
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                催收日期  <input type="text" class="form-control" id="starttimess" name="starttimes">&nbsp;
                至&nbsp;<input type="text" class="form-control" id="endtimess" name="endtimes">
            </div>
        </div>
        <div  class="col-md-6"> </div>
        <div  class="col-md-6">
            <button type="button" id="soushuo"   class="btn btn-primary glyphicon glyphicon-search">查询</button>
            <button type="reset" class="btn btn-primary glyphicon glyphicon-refresh">重置</button>
        </div>
        </form>
    </div>
    &nbsp;
</div>
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#home"  data-toggle="tab">线下催收</a>
    </li>
    <li><a href="#order"  data-toggle="tab">线上催收</a>
    </li>
</ul>
<div class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <div style="padding:10px;">
            <div class="list-group">
                <div id="underline"></div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="order">
        <div style="padding:10px;">
            <div class="list-group">
                <div id="online"></div>
            </div>
        </div>
    </div>
</div>

<%--线下催款详情--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form  method="post" id="fromlist2" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">催收详情</h4>
                </div>
                <div class="modal-body">
                    借款者:<span  id="ckz">  </span>  <br>
                    催收方式:<span id="csfs">  </span><br>
                    催收人:  <span id="csr"></span><br>
                    催收时间 :<span id="cssj"></span><br>
                    结果概要:<span  id="jggy"> </span><br>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--线上催款详情--%>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form  method="post" id="" >
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="form-signin-heading">催收详情</h4>
                </div>
                <div class="modal-body">
                    借款者:<span  id="ckz2">  </span>  <br>
                    催收方式:<span id="csfs2">  </span><br>
                    催收人:  <span id="csr2"></span><br>
                    催收时间 :<span id="cssj2"></span><br>
                    标题:<span  id="bt"> </span><br>
                    内容:<span  id="nr"> </span><br>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </form>
    </div>
</div>




<script>
    $("#underline").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/collectionController/queryunderlinelist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        //pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
       /* height:300,//高度*/
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
            {title:'序号',field: 'collectionid',width:"200px",align:"center"},
            {title:'借款者',field: 'username',width:"200px",align:"center"},
            {title:'催收方式',field: 'collectiontype',width:"200px",align:"center"},
            {title:'催收人',field: 'collectionname',width:"200px",align:"center"},
            {title:'催收时间',field: 'collectiontime',width:"200px",align:"center"},
            {title:'结果概要',field: 'collectiontext',width:"200px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return '<button type="button" class="btn  btn-warning "   onclick="zsGrButton('+row.userid+')">个人资料</button>&nbsp;&nbsp;&nbsp;'+
                        '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="detailsUnderline(\'' + row.collectionid + '\')">催款详情</button>';
                }
            },
        ],
    })
    $("#online").bootstrapTable({// 对应table标签的id
        url: "<%=request.getContextPath()%>/collectionController/queryonlinelist.do", // 获取表格数据的url
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:10,//初始化 条数
        //pageList:[5,10],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        /* height:300,//高度*/
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
            {title:'序号',field: 'onlineid',width:"200px",align:"center"},
            {title:'借款者',field: 'username',width:"200px",align:"center"},
            {title:'催收方式',field: 'onlinetype',width:"200px",align:"center"},
            {title:'催收人',field: 'onlinename',width:"200px",align:"center"},
            {title:'催收时间',field: 'onlinetime',width:"200px",align:"center"},
            {title:'标题',field: 'onlinetito',width:"200px",align:"center"},
            {title:'操作',width:"400px",align:"center",
                formatter:function(value,row,index){
                    return '<button type="button" class="btn  btn-warning "  onclick="zsGrButton('+row.userid+')" >个人资料</button>&nbsp;&nbsp;&nbsp;'+
                        '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal2" onclick="detailsonline(\'' + row.onlineid + '\')">催款详情</button>';
                }
            },
        ],
    })

</script>

<script>
    //查询个人信息
    function zsGrButton(userid){
        location.href = "<%=request.getContextPath()%>/wqPeopleNewsController/selectJbPeopleNews.do?userid="+userid;
    }

    $("#soushuo").on("click",function(){
        $("#underline").bootstrapTable('refresh',
            {query:{
                username:$("#a").val(),
                collectiontype:$("#collectiontype").val(),
                starttimess:$("#starttimess").val(),
                endtimess:$("#endtimess").val(),
            }});
        $("#online").bootstrapTable('refresh',
            {query:{
                username:$("#a").val(),
                collectiontype:$("#collectiontype").val(),
                starttimess:$("#starttimess").val(),
                endtimess:$("#endtimess").val(),
            }});
    })


</script>

<script>
    function   detailsUnderline(collectionid){
        $.ajax({
            url: "<%=request.getContextPath()%>/collectionController/querydetailsUnderline.do",
            type: "post",
            data: {"collectionid": collectionid},
            dataType: "json",
            success: function (results) {
                for(var i=0;i<results.length;i++){
                    $("#ckz").html(results[i].username);
                    $("#csfs").html(results[i].collectiontype);
                    $("#csr").html(results[i].collectionname);
                    $("#cssj").html(results[i].collectiontime);
                    $("#jggy").html(results[i].collectiontext);
                }
            }
        })
    }

    function  detailsonline(onlineid){
        $.ajax({
            url: "<%=request.getContextPath()%>/collectionController/querydetailsonline.do",
            type: "post",
            data: {"onlineid": onlineid},
            dataType: "json",
            success: function (results) {
                for(var i=0;i<results.length;i++){
                    $("#ckz2").html(results[i].username);
                    $("#csfs2").html(results[i].onlinetype);
                    $("#csr2").html(results[i].onlinename);
                    $("#cssj2").html(results[i].onlinetime);
                    $("#bt").html(results[i].onlinetito);
                    $("#nr").html(results[i].onlinetext);
                }
            }
        })
    }


</script>



<script>
    $("#starttimess").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
    $("#endtimess").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
</script>
</body>
</html>

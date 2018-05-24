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
                  待还本金总额 [] 元
              </font>
        </div>
        <div class="col-md-4">
            <font size="3px" color="#696969">
                逾期待还总额 [] 元
            </font>
        </div>
        <div class="col-md-3">
            <font size="3px" color="#696969">
                严重逾期待还总额 [] 元
            </font>
        </div>
    </div>
    &nbsp;
</div>
<div class="panel panel-primary"  id="tiao1"  style="display:none">
    &nbsp;
         <form class="form-inline">
             <div class="form-group">
                 <label for="name">用户名</label>
                 <input type="text" class="form-control" id="name" >
             </div>
             &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <div class="form-group">
                 <label for="exampleInputEmail">借款标题</label>
                 <input type="text" class="form-control" id="exampleInputEmail" >
             </div>
             <br><br>
             下一还款日
             <div class="form-group">
                 <input type="text" class="form-control" id="aa" name="aa">&nbsp;
                 至&nbsp;<input type="text" class="form-control" id="bb" name="bb">
             </div>
             <button type="button" id="tiaocha" class="btn btn-primary glyphicon glyphicon-search">查询</button>
             <button type="button" id="daochulist" class="btn btn-primary glyphicon glyphicon-share-alt">导出</button>
             <button type="button" id="xianshangshou" class="btn btn-primary">线上催收</button>
         </form>
</div>
<div class="panel panel-primary"  id="tiao2"  style="display:none">
    &nbsp;
    <form class="form-inline">
        <div class="form-group">
            <label for="name2">用户名</label>
            <input type="text" class="form-control" id="name2" >
        </div>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
            <label for="exampleInputEmail2">借款标题</label>
            <input type="text" class="form-control" id="exampleInputEmail2" >
        </div>
        <br><br>
        催收记录
        <select class="form-control" name="jobnumber">
            <option value="">全部</option>
            <option value="">无</option>
            <option value=>有</option>
        </select>
        <button type="button" id="tiaocha2" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="daochulist2" class="btn btn-primary glyphicon glyphicon-share-alt">导出</button>
        <button type="button" id="xianshangshou2" class="btn btn-primary">线上催收</button>
    </form>
</div>
<div class="panel panel-primary"  id="tiao3"  style="display:none">
    &nbsp;
    <form class="form-inline">
        <div class="form-group">
            <label for="name3">用户名</label>
            <input type="text" class="form-control" id="name3" >
        </div>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
            <label for="exampleInputEmail3">借款标题</label>
            <input type="text" class="form-control" id="exampleInputEmail3" >
        </div>
        <button type="button" id="tiaocha3" class="btn btn-primary glyphicon glyphicon-search">查询</button>
        <button type="button" id="daochulist3" class="btn btn-primary glyphicon glyphicon-share-alt">导出</button>
        <button type="button" id="xianshangshou3" class="btn btn-primary">线上催收</button>
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
            <div class="list-group" style="height: 40%">
                <div id="repayments" ></div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="order">
        <div style="padding:10px;">
            <div class="list-group" style="height: 40%">
                <div id="repayments2"></div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="order2">
        <div style="padding:10px;">
            <div class="list-group" style="height: 40%">
                <div id="repayments3"></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
                $("#repayments").bootstrapTable({// 对应table标签的id
                url: "<%=request.getContextPath()%>/repaymentsController/repaymentslist.do", // 获取表格数据的url
                pagination:true,//显示分页条
                pageNumber:1,//初始化 页数
                pageSize:3,//初始化 条数
                //pageList:[3,6,9],//初始化 可选择的条数
                paginationLoop:false,//关闭分页的无限循环
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
                {title:'序号',field: 'loanid',width:"20%",align:"center"},
                {title:'借款标题',field: 'loandescribe',width:"20%",align:"center"},
                {title:'用户名',field: 'pusername',width:"20%",align:"center"},
                {title:'借款金额(元)',field: 'loanmoney',width:"20%",align:"center"},
                {title:'操作',width:"20%",align:"center",
                formatter:function(value,row,index){
                return '<button class="btn btn-primary btn-sm" onclick="stopJob(\'' + row.jobid + '\')">个人资料</button>&nbsp;&nbsp;&nbsp;'+
                '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal2" onclick="addcha(\'' + row.jobid + '\')">线下催收</button>';
                                          }
                         },
                   ],
                })
                $("#repayments2").bootstrapTable({// 对应table标签的id
                    url: "<%=request.getContextPath()%>/repaymentsController/repaymentslist2.do", // 获取表格数据的url
                    pagination:true,//显示分页条
                    pageNumber:1,//初始化 页数
                    pageSize:3,//初始化 条数
                    //pageList:[3,6,9],//初始化 可选择的条数
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
                        {checkbox: true},
                        {title:'序号',field: 'loanid',width:"180px",align:"center"},
                        {title:'借款标题',field: 'loandescribe',width:"180px",align:"center"},
                        {title:'用户名',field: 'pusername',width:"180px",align:"center"},
                        {title:'借款金额(元)',field: 'loanmoney',width:"180px",align:"center"},
                        {title:'操作',width:"200px",align:"center",
                            formatter:function(value,row,index){
                                return '<button class="btn btn-primary btn-sm" onclick="stopJob(\'' + row.jobid + '\')">个人资料</button>&nbsp;&nbsp;&nbsp;'+
                                    '<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal2" onclick="addcha(\'' + row.jobid + '\')">线下催收</button>';
                            }
                        },
                    ],
                })
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
    $("#aa").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
    $("#bb").datetimepicker({
        format: "yyyy-mm-dd",//显示格式
        language: 'zh-CN',//显示中文
        autoclose: true,//选中自动关闭
        todayBtn: true,//显示今日按钮
    });
</script>
</body>
</html>

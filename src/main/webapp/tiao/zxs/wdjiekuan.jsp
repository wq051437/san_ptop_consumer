<%--
  Created by IntelliJ IDEA.
  User: 左小山
  Date: 2018/5/23
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的借款</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body><br><br>
<div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column" >
            借款总金额(元)<br/> <span class="orange f22" style="color: #a9302a">8520.00</span>
        </div>
        <div class="col-md-2 column">
            逾期金额(元)<br/>0.00
        </div>
        <div class="col-md-2 column">
            待还金额(元)<br/>520.00
        </div>
        <div class="col-md-6 column">
            近30天应还金额(元)<br/>520.00
        </div>
    </div>
</div><hr>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" style="height: 350px">
            <input type='button' class='btn btn-info' onclick="hkjiejuan()"   value="还款中的借款">
            <input type='button' class='btn btn-info' onclick="yhqjiejuan()" value="已还清的借款">
            <input type='button' class='btn btn-info' onclick="yzrjiejuan()"  value="已转让的借款">
            <hr>
            <table id="hkjiejuanid"></table>
            <table id="yhqjiejuanid"></table>
            <table id="yzrjiejuanid"></table>
        </div>
    </div>
</div>

</div>
</body>
<script type="text/javascript">
//还款中的借款*****************************************************************************
    function hkjiejuan(){
        $('#yhqjiejuanid').bootstrapTable('destroy');
        $('#yzrjiejuanid').bootstrapTable('destroy');
        $('#hkjiejuanid').bootstrapTable({
        url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
        striped: true,//隔行变色
        showColumns:true,//是否显示 内容列下拉框
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        //search:true,//是否显示搜索框
        clickToSelect: true, //是否启用点击选中行
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        pagination:true,//开启分页
        paginationLoop:false,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:4,//每页条数
        pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        columns:[[
                {field:'xuhaoid',title:'序号',width:100,align:"center"},
                {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
                {field:'jiekuantitle',title:'借款金额(元)',width:100,align:"center"},
                {field:'annualinterestrate',title:'年化利率(%)',width:100,align:"center"},
                {field:'deadline',title:'期限',width:100,align:"center"},
                {field:'amountofclaim',title:'还款总额(元)',width:100,align:"center"},
                {field:'investtime',title:'下次还款日期',width:100,align:"center"},
                {field:'act',title:'操作',width:100,
                    formatter: function(value,row,index){
                        console.info(row.colorid);
                        return "<input type='button' value='还款' class='btn btn-info'  onclick=''>";

                    }
                },
                ]]
        });
    }
//已还清的借款*****************************************************************************
function yhqjiejuan(){
    $('#hkjiejuanid').bootstrapTable('destroy');
    $('#yzrjiejuanid').bootstrapTable('destroy');
    $('#yhqjiejuanid').bootstrapTable({
        url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
        striped: true,//隔行变色
        showColumns:true,//是否显示 内容列下拉框
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        //search:true,//是否显示搜索框
        clickToSelect: true, //是否启用点击选中行
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        pagination:true,//开启分页
        paginationLoop:false,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:4,//每页条数
        pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        columns:[[
            {field:'xuhaoid',title:'序号',width:100,align:"center"},
            {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
            {field:'jiekuantitle',title:'借款金额(元)',width:100,align:"center"},
            {field:'annualinterestrate',title:'年化利率(%)',width:100,align:"center"},
            {field:'deadline',title:'期限',width:100,align:"center"},
            {field:'amountofclaim',title:'还款总额(元)',width:100,align:"center"},
            {field:'investtime',title:'还清日期',width:100,align:"center"},
            {field:'act',title:'操作',width:100,align:"center",
                formatter: function(value,row,index){
                    console.info(row.colorid);
                    return "<input type='button' value='还款' class='btn btn-info'  onclick=''>";

                }
            },
        ]]
    });
}
//已转让的借款*****************************************************************************
function yzrjiejuan(){
    $('#hkjiejuanid').bootstrapTable('destroy');
    $('#yhqjiejuanid').bootstrapTable('destroy');
    $('#yzrjiejuanid').bootstrapTable({
        url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
        striped: true,//隔行变色
        showColumns:true,//是否显示 内容列下拉框
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        //search:true,//是否显示搜索框
        clickToSelect: true, //是否启用点击选中行
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        pagination:true,//开启分页
        paginationLoop:false,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:4,//每页条数
        pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        columns:[[
            {field:'xuhaoid',title:'序号',width:100,align:"center"},
            {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
            {field:'jiekuantitle',title:'借款金额(元)',width:100,align:"center"},
            {field:'annualinterestrate',title:'年化利率(%)',width:100,align:"center"},
            {field:'deadline',title:'转让期限',width:100,align:"center"},
            {field:'amountofclaim',title:'转让总额(元)',width:100,align:"center"},
            {field:'investtime',title:'转让日期',width:100,align:"center"}
//            {field:'act',title:'操作',width:100,
//                formatter: function(value,row,index){
//                    console.info(row.colorid);
//                    return "<input type='button' value='还款' class='btn btn-info'  onclick=''>";
//
//                }
//            },
        ]]
    });
}
</script>
</html>

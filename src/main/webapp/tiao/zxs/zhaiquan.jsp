<%--
  Created by IntelliJ IDEA.
  User: 左小山
  Date: 2018/5/16
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>债权管理</title>
    <jsp:include page="bao.jsp"   flush="true"></jsp:include>
</head>
<body>
<br><br>
<%--投资人条件查************************************************************************--%>
<%--<div style="width:1200px; height:250px;">--%>
    <div class="panel panel-primary" id="demo1">
        <div class="panel-heading">
            <span class="glyphicon glyphicon-search"></span>债权管理
        </div>
        <div class="panel-body">
            <div class="col-md-2">
                投资人
                <input type="text" name="username" id="usernameid" class="form-control">
            </div>
            <div class="col-md-2">
                借款标题
                <input type="text" name="jiekuantitle" id="jiekuantitleid" class="form-control">
            </div>
            <%--<div class="col-md-2">--%>
                <%--投资时间--%>
                <%--<input type="text" class="form-control" id="startDatetiaojian1" name="investtime" placeholder="请选择">--%>
            <%--</div>--%>
            <%--<div class="col-md-2">--%>
                <%--至结束时间--%>
                <%--<input type="text" class="form-control" id="endDatetiaojian1" name="investtime" placeholder="请选择">--%>
            <%--</div>--%>
            <div class="col-md-2">
                投资人类型
                <select class="form-control" id="claimtypeid" name="claimtype">
                    <option value="">- - 全部 - -
                    <option value="1">个人
                    <option value="2">企业
                    <option value="3">机构
                </select>
            </div><br><br><br>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-success" type="button" id="tiaojian">
                    搜索
                    <span class="glyphicon glyphicon-arrow-right"></span> </button>
            </div>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-primary" type="reset" id="">
                    导出
                    <span class="glyphicon glyphicon-refresh"></span> </button>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
    <%--回款中条件查************************************************************************--%>

    <div class="panel panel-primary" id="demo2">
        <div class="panel-heading">
            <span class="glyphicon glyphicon-search"></span>债权管理
        </div>
        <div class="panel-body">
            <div class="col-md-2">
                债权ID
                <input type="text" name="username"  class="form-control">
            </div>
            <div class="col-md-2">
                债权人
                <input type="text" name="jiekuantitle"  class="form-control">
            </div>
            <div class="col-md-2">
                借款标题
                <input type="text" name="jiekuantitle"  class="form-control">
            </div>
            <div class="col-md-2">
                投资时间
                <input type="text" class="form-control" id="startDatetiaojian2"  name="startDate" placeholder="请选择">
            </div>
            <div class="col-md-2">
                至结束时间
                <input type="text" class="form-control" id="endDatetiaojian2" name="endDate" placeholder="请选择">
            </div>
            <div class="col-md-2">
                债权人类型
                <select class="form-control">
                    <option value="">- - 全部 - -
                    <option value="1">个人
                    <option value="2">企业
                    <option value="3">机构
                </select>
            </div><br><br><br>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-success" type="button" id="tiaojian2">
                    搜索
                    <span class="glyphicon glyphicon-arrow-right"></span> </button>
            </div>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-primary" type="reset" >
                    导出
                    <span class="glyphicon glyphicon-refresh"></span> </button>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
    <%--已结清条件查************************************************************************--%>

    <div class="panel panel-primary" id="demo3">
        <div class="panel-heading">
            <span class="glyphicon glyphicon-search"></span>债权管理
        </div>
        <div class="panel-body">
            <div class="col-md-2">
                债权ID
                <input type="text" name="username"  class="form-control">
            </div>
            <div class="col-md-2">
                债权人
                <input type="text" name="jiekuantitle"  class="form-control">
            </div>
            <div class="col-md-2">
                借款标题
                <input type="text" name="jiekuantitle"  class="form-control">
            </div>
            <div class="col-md-2">
                结清时间
                <input type="text" class="form-control" id="startDatetiaojian3"  name="startDate" placeholder="请选择">
            </div>
            <div class="col-md-2">
                至结清时间
                <input type="text" class="form-control" id="endDatetiaojian3"  name="endDate" placeholder="请选择">
            </div>
            <div class="col-md-2">
                债权人类型
                <select class="form-control">
                    <option value="">- - 全部 - -
                    <option value="1">个人
                    <option value="2">企业
                    <option value="3">机构
                </select>
            </div>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-success" type="button" id="tiaojian3">
                    搜索
                    <span class="glyphicon glyphicon-arrow-right"></span> </button>
            </div>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-primary" type="reset" >
                    导出
                    <span class="glyphicon glyphicon-refresh"></span> </button>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
    <%--已转出条件查************************************************************************--%>

    <div class="panel panel-primary" id="demo4">
        <div class="panel-heading">
            <span class="glyphicon glyphicon-search"></span>债权管理
        </div>
        <div class="panel-body">
            <div class="col-md-2">
                债权ID
                <input type="text" name="username"  class="form-control">
            </div>
            <div class="col-md-2">
                借款标题
                <input type="text" name="jiekuantitle"  class="form-control">
            </div>
            <div class="col-md-2">
                投资时间
                <input type="text" class="form-control" id="startDatetiaojian4" name="startDate" placeholder="请选择">
            </div>
            <div class="col-md-2">
                至投资时间
                <input type="text" class="form-control" id="endDatetiaojian4" name="endDate" placeholder="请选择">
            </div>
            <div class="col-md-2">
                卖出者类型
                <select class="form-control">
                    <option value="">- - 全部 - -
                    <option value="1">个人
                    <option value="2">企业
                    <option value="3">机构
                </select>
            </div>
            <div class="col-md-2">
                买入者类型
                <select class="form-control">
                    <option value="">- - 全部 - -
                    <option value="1">个人
                    <option value="2">企业
                    <option value="3">机构
                </select>
            </div>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-success" type="button" id="tiaojian4">
                    搜索
                    <span class="glyphicon glyphicon-arrow-right"></span> </button>
            </div>
            <div class="col-md-1">
                <button class="btn btn-large btn-block btn-primary" type="reset" >
                    导出
                    <span class="glyphicon glyphicon-refresh"></span> </button>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
<%--</div>--%>



<%--<div style="width:1200px; height:270px;">--%>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <input type='button' class='btn btn-info active' onclick="search()"  style='width:70px; height:30px;' value="投资中">
            <input type='button' class='btn btn-info active' onclick="huikuanzhong()"  style='width:70px; height:30px;' value="回款中">
            <input type='button' class='btn btn-info active' onclick="yijieqing()"  style='width:70px; height:30px;' value="已结清">
            <input type='button' class='btn btn-info active' onclick="yizhuanchu()"  style='width:70px; height:30px;' value="已转出">
        </div>
    </div>

    <div style="height: 37%">
        <table id="zxstable"></table>
        <table id="zxshuikuanzhong" ></table>
        <table id="zxsyijieqing" ></table>
        <table id="zxsyizhuanchu" ></table>
    </div>

<%--</div>--%>
<script type="text/javascript">
    $(function(){
        $("#demo2").hide();//隐藏div
        $("#demo3").hide();//隐藏div
        $("#demo4").hide();//隐藏div
        search()
    })
    //投资中*****************************************************************************
    function search(){
        $("#demo1").show();//显示div
        $("#demo2").hide();//隐藏div
        $("#demo3").hide();//隐藏div
        $("#demo4").hide();//隐藏div
        $('#zxshuikuanzhong').bootstrapTable('destroy');
        $('#zxsyijieqing').bootstrapTable('destroy');
        $('#zxsyizhuanchu').bootstrapTable('destroy');
        $('#zxstable').bootstrapTable({
            url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
            striped: true,//隔行变色
            //showColumns:true,//是否显示 内容列下拉框
            //showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            //showRefresh:true,//显示刷新按钮
            //showToggle:true,//显示切换视图
            //search:true,//是否显示搜索框
            clickToSelect: true, //是否启用点击选中行
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            pagination:true,//开启分页
            paginationLoop:false,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:4,//每页条数
            //pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            queryParams:function(){
                return {
                    'jiekuantitle':$("#jiekuantitleid").val(),
                    'username':$("#usernameid").val(),
                    'startDate':$("#startDatetiaojian1").val(),
                    'endDate':$("#endDatetiaojian1").val(),
                    'claimtype':$("#claimtypeid").val()
                }
            },
            columns:[[
                {field:'xuhaoid',title:'序号',width:100,align:"center"},
                {field:'biaoid',title:'标的ID',width:100,align:"center"},
                {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
                {field:'username',title:'投资人',width:100,align:"center"},
                {field:'',title:'投资人类型',width:100,align:"center",
                    formatter:function(value,row,index){
                       if(row.claimtype ==1){
                           return '个人';
                       }else if(row.claimtype ==2){
                           return '企业';
                       }else if(row.claimtype ==3){
                           return '机构';
                       }
                    }
                },
                {field:'annualinterestrate',title:'年化利率(%)',width:100,align:"center"},
                {field:'deadline',title:'期限',width:100,align:"center"},
                {field:'amountofclaim',title:'持有债权金额(元)',width:100,align:"center"},
                {field:'investtime',title:'投资时间',width:100,align:"center"}
            ]]
        });
    }
    $("#tiaojian").on("click",function(){
        $("#zxstable").bootstrapTable("refresh",{pageNumber:1});
    })
//回款中*************************************************************************************************
    function huikuanzhong(){
        $("#demo1").hide();//隐藏div
        $("#demo2").show();//显示div
        $("#demo3").hide();//隐藏div
        $("#demo4").hide();//隐藏div
        $('#zxstable').bootstrapTable('destroy');
        $('#zxsyijieqing').bootstrapTable('destroy');
        $('#zxsyizhuanchu').bootstrapTable('destroy');
        $('#zxshuikuanzhong').bootstrapTable({
            url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
            striped: true,//隔行变色
            //showColumns:true,//是否显示 内容列下拉框
            //showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            //showRefresh:true,//显示刷新按钮
            //showToggle:true,//显示切换视图
           // search:true,//是否显示搜索框
            clickToSelect: true, //是否启用点击选中行
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            pagination:true,//开启分页
            paginationLoop:false,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:4,//每页条数
            //pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            columns:[[
                {field:'xuhaoid',title:'序号',width:100,align:"center"},
                {field:'claimid',title:'债权ID',width:100,align:"center"},
                {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
                {field:'username',title:'债权人',width:100,align:"center"},
                {field:'',title:'债权人类型',width:100,align:"center",
                    formatter:function(value,row,index){
                        if(row.claimtype ==1){
                            return '个人';
                        }else if(row.claimtype ==2){
                            return '企业';
                        }else if(row.claimtype ==3){
                            return '机构';
                        }
                    }
                },
                {field:'annualinterestrate',title:'年化利率',width:100,align:"center"},
                {field:'deadline',title:'期限',width:100,align:"center"},
                {field:'amountofclaim',title:'持有债权金额(元)',width:100,align:"center"},
                {field:'investtime',title:'投资时间',width:100,align:"center"}
            ]]
        });
    }
    //已结清***********************************************************************************************
    function yijieqing(){
        $("#demo1").hide();//隐藏div
        $("#demo2").hide();//隐藏div
        $("#demo3").show();//显示div
        $("#demo4").hide();//隐藏div
        $('#zxstable').bootstrapTable('destroy');
        $('#zxshuikuanzhong').bootstrapTable('destroy');
        $('#zxsyizhuanchu').bootstrapTable('destroy');
        $('#zxsyijieqing').bootstrapTable({
            url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
            striped: true,//隔行变色
            //showColumns:true,//是否显示内容列下拉框
            //showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            //showRefresh:true,//显示刷新按钮
            //showToggle:true,//显示切换视图
            //search:true,//是否显示搜索框
            clickToSelect: true, //是否启用点击选中行
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            pagination:true,//开启分页
            paginationLoop:false,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:4,//每页条数
            //pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。

            columns:[[
                {field:'xuhaoid',title:'序号',width:100,align:"center"},
                {field:'biaoid',title:'债权ID',width:100,align:"center"},
                {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
                {field:'username',title:'债权人',width:100,align:"center"},
                {field:'',title:'债权人类型',width:100,align:"center",
                    formatter:function(value,row,index){
                        if(row.claimtype ==1){
                            return '个人';
                        }else if(row.claimtype ==2){
                            return '企业';
                        }else if(row.claimtype ==3){
                            return '机构';
                        }
                    }
                },
                {field:'annualinterestrate',title:'年化利率',width:100,align:"center"},
                {field:'deadline',title:'期限',width:100,align:"center"},
                {field:'amountofclaim',title:'原始债权金额(元)',width:100,align:"center"},
                {field:'investtime',title:'结清时间',width:100,align:"center"}
            ]]
        });
    }

    //已转出***********************************************************************************************
    function yizhuanchu(){
        $("#demo1").hide();//隐藏div
        $("#demo2").hide();//隐藏div
        $("#demo3").hide();//隐藏div
        $("#demo4").show();//显示div
        $('#zxstable').bootstrapTable('destroy');
        $('#zxshuikuanzhong').bootstrapTable('destroy');
        $('#zxsyijieqing').bootstrapTable('destroy');
        $('#zxsyizhuanchu').bootstrapTable({
            url:'<%=request.getContextPath()%>/creditorController/queryCreditorPage.do',
            striped: true,//隔行变色
            //showColumns:true,//是否显示 内容列下拉框
            //showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
           // showRefresh:true,//显示刷新按钮
            //showToggle:true,//显示切换视图
           // search:true,//是否显示搜索框
            clickToSelect: true, //是否启用点击选中行
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            pagination:true,//开启分页
            paginationLoop:false,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:4,//每页条数
           // pageList:[2,3,4,5,6,7],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。

            columns:[[
                {field:'xuhaoid',title:'序号',width:100,align:"center"},
                {field:'biaoid',title:'债权ID',width:100,align:"center"},
                {field:'jiekuantitle',title:'借款标题',width:100,align:"center"},
                {field:'username',title:'卖出者',width:100,align:"center"},
                {field:'',title:'卖出者类型',width:100,align:"center",
                    formatter:function(value,row,index){
                        if(row.claimtype ==1){
                            return '个人';
                        }else if(row.claimtype ==2){
                            return '企业';
                        }else if(row.claimtype ==3){
                            return '机构';
                        }
                    }
                },
                {field:'mairuname',title:'买入者',width:100,align:"center"},
                {field:'',title:'买入者类型',width:100,align:"center",
                    formatter:function(value,row,index){
                        if(row.claimtype ==1){
                            return '个人';
                        }else if(row.claimtype ==2){
                            return '企业';
                        }else if(row.claimtype ==3){
                            return '机构';
                        }
                    }
                },
                {field:'annualinterestrate',title:'年化利率',width:100,align:"center"},
                {field:'deadline',title:'期限',width:100,align:"center"},
                {field:'amountofclaim',title:'债权价值(元)',width:100,align:"center"},
                {field:'amountofclaim',title:'转让价格(元)',width:100,align:"center"},
                {field:'investtime',title:'投资时间',width:100,align:"center"}
            ]]
        });
    }



    //时间**************************************************************************************************
    $(function(){
        $("#startDatetiaojian1").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#endDatetiaojian1").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#startDatetiaojian2").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#endDatetiaojian2").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#startDatetiaojian3").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#endDatetiaojian3").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#startDatetiaojian4").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        $("#endDatetiaojian4").datetimepicker({
            format: "yyyy-mm-dd",//显示格式
            language: 'zh-CN',//显示中文
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
    })
</script>
</body>
</html>

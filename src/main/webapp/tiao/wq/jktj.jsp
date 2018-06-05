<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/31
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>借款统计</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/js/exporting.js"></script>
</head>
<body>

    <div id="containerlk" style="min-width:400px;height:400px"></div>


    <script>

        $.ajax({
            url:"<%=request.getContextPath()%>/wqHighchartsController/highchartsJkTj.do",
            type:"post",
            dataType:"json",
            success:function(result){
                for (var i = 0; i < result.length; i++) {
                    //总借款
                    var zloanmoney = result[i].zloanmoney;
                    //总还款
                    var zhkmoney = result[i].zhkmoney;
                    var zwhmoney = eval(zloanmoney-result[i].zhkmoney);
                    //总利息
                    var zlx = eval(zloanmoney*0.1);
                    //未还款利息
                    var zhklx = result[i].zhklx;
                    var zwhlx = eval(zlx-result[i].zhklx);
                }
                //总借款与总利息和
                var zlxandzjk = eval(zlx+zloanmoney);
                var zloanmoneys = eval(zloanmoney/zlxandzjk*100);
                var zlxs = eval(zlx/zlxandzjk*100);
                //还款未还款
                var zhkmoneys = eval(zhkmoney/zlxandzjk*100);
                var zwhmoneys = eval(zwhmoney/zlxandzjk*100);
                //还利息未还利息
                var zhklxs = eval(zhklx/zlxandzjk*100);
                var zwhlxs = eval(zwhlx/zlxandzjk*100);
                //统计图
                Highchartj(zloanmoneys,zlxs,zhkmoneys,zwhmoneys,zhklxs,zwhlxs);
            },
            error:function(){
                alert("借款统计出错");
            }
        });

        function Highchartj(zloanmoneys,zlxs,zhkmoneys,zwhmoneys,zhklxs,zwhlxs){//[50,30]
            var colors = Highcharts.getOptions().colors,
                categories = ['借款金额', '利息'],
                data = [{
                    y: zloanmoneys,
                    color: colors[0],
                    drilldown: {
                        name: '借款金额',
                        categories: ['已还款', '未还款'],
                        data: [zhkmoneys,zwhmoneys],
                        color: colors[0]
                    }
                }, {
                    y: zlxs,
                    color: colors[2],
                    drilldown: {
                        name: '利息',
                        categories: ['已还', '未还'],
                        data: [zhklxs,zwhlxs],
                        color: colors[2]
                    }
                }],
                browserData = [],
                versionsData = [],
                i,
                j,
                dataLen = data.length,
                drillDataLen,
                brightness;
            // 构建数据数组
            for (i = 0; i < dataLen; i += 1) {
                // 添加浏览器数据
                browserData.push({
                    name: categories[i],
                    y: data[i].y,
                    color: data[i].color
                });
                // 添加版本数据
                drillDataLen = data[i].drilldown.data.length;
                for (j = 0; j < drillDataLen; j += 1) {
                    brightness = 0.2 - (j / drillDataLen) / 5;
                    versionsData.push({
                        name: data[i].drilldown.categories[j],
                        y: data[i].drilldown.data[j],
                        color: Highcharts.Color(data[i].color).brighten(brightness).get()
                    });
                }
            }
            // 创建图表
            var chart = Highcharts.chart('containerlk', {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: '借款统计'
                },
                subtitle: {
                    text: '内环为款项占比，外环为已还未还'
                },
                yAxis: {
                    title: {
                        text: '总百分比市场份额'
                    }
                },
                plotOptions: {
                    pie: {
                        shadow: false,
                        center: ['50%', '50%']
                    }
                },
                tooltip: {
                    valueSuffix: '%'
                },
                series: [{
                    name: '金额',
                    data: browserData,
                    size: '60%', // 指定饼图大小
                    dataLabels: {
                        formatter: function () {
                            return this.y > 5 ? this.point.name : null;
                        },
                        color: 'white',
                        distance: -30
                    }
                }, {
                    name: '版本',
                    data: versionsData,
                    size: '80%',  // 指定大小
                    innerSize: '60%', // 指定内环大小
                    dataLabels: {
                        formatter: function () {
                            // 大于1则显示
                            return this.y > 1 ? '<b>' + this.point.name + ':</b> ' + this.y + '%'  : null;
                        }
                    }
                }]
            });
        }

    </script>

</body>
</html>

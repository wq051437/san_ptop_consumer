<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/30
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>余额统计</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/js/exporting.js"></script>
</head>
<body>

    <div id="containerYe" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto;"></div>

    <script>

        $.ajax({
            url:"<%=request.getContextPath()%>/wqHighchartsController/highchartsYeTj.do",
            type:"post",
            dataType:"json",
            success:function(result){
                var arr=[];
                for (var i = 0; i < result.length; i++) {
                    arr[i]=[result[i].usertype,result[i].capitalmoney];
                }
                Highcharty(arr)
            },
            error:function(){
                alert("余额统计出错");
            }
        });
        function Highcharty(arr) {
            var chart = Highcharts.chart('containerYe', {
                title: {
                    text: '余额<br>占比',
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
                    name: '余额占比',
                    innerSize: '50%',
                    data: arr
                }]
            });
        }
    </script>

</body>
</html>

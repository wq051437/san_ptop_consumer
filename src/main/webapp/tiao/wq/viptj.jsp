<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/30
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员统计</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/js/exporting.js"></script>
</head>
<body>

    <div id="containerVip" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto;"></div>


    <script type="text/javascript">

        $.ajax({
            url:"<%=request.getContextPath()%>/wqHighchartsController/highchartsVipTj.do",
            type:"post",
            dataType:"json",
            success:function(result){
                var arr=[];
                for (var i = 0; i < result.length; i++) {
                    arr[i]=[result[i].usertype,result[i].usercount];
                }
                Highchartv(arr)
            },
            error:function(){
                alert("会员统计出错");
            }
        });

        function Highchartv(arr){
            var chart = Highcharts.chart('containerVip', {
                title: {
                    text: '会员统计'
                },
                tooltip: {
                    headerFormat: '{series.name}<br>',
                    pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true // 设置饼图是否在图例中显示
                    }
                },
                series: [{
                    type: 'pie',
                    name: '用户量占比',
                    data: arr
                }]
            });
        }

    </script>

</body>
</html>

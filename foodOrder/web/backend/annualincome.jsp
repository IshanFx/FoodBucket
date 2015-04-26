<%-- 
    Document   : annualincome
    Created on : Apr 3, 2015, 9:33:50 AM
    Author     : IshanFX
--%>

<%@page import="java.util.Map"%>
<%@page import="com.foodbucket.reportModel.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    </head>
    <body>
        
        <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                <% Report report = new Report();
                    Map<Integer,Double> mapList =  report.getAnnualIncomeReport(); %>
                <thead>
                <tr>
                    <th>Year </th>
                    <th>Income</th>                                                                
                </tr>
                </thead>
                <tbody>
                <% for(Map.Entry<Integer,Double> incomeList : mapList.entrySet() ){ %>
                <tr>
                    <td><%=incomeList.getKey() %> </td>
                    <td><%=incomeList.getValue() %></td>                                                                
                </tr>
                <% } %>
                </tbody>
                </table>
        </div>
        
       <!-- <div id="morris-bar-chart2">
            
        </div> -->
        <div id="morris-line-chart">
            
        </div>
         
    <script>
        function linechart(){
             Morris.Line({
        // ID of the element in which to draw the chart.
        element: 'morris-line-chart',
        // Chart data records -- each entry in this array corresponds to a point on
        // the chart.
        data: [
        <% for(Map.Entry<Integer,Double> incomeList2 : mapList.entrySet() ){ %>   
                {
            d: '<%=incomeList2.getKey().toString() %>',
            visits: <%=incomeList2.getValue() %>
        },
                <% } %>
            ],
        // The name of the data record attribute that contains x-visitss.
        xkey: 'd',
        // A list of names of data record attributes that contain y-visitss.
        ykeys: ['visits'],
        // Labels for the ykeys -- will be displayed when you hover over the
        // chart.
        labels: ['Income'],
        // Disables line smoothing
        smooth: false,
        resize: true
    });
        }
        linechart();  
     
      
     /* function chart3(){
           Morris.Bar({
                element: 'morris-bar-chart2',
                data: [
               <!% for(Map.Entry<Integer,Double> incomeList : mapList.entrySet() ){ %>                   
                {
                    device: '<!%=incomeList.getKey().toString() %>',
                    geekbench: <!%=incomeList.getValue() %>
                }, 
                 <!% } %>       

                ],
                xkey: 'device',
                ykeys: ['geekbench'],
                labels: ['Income'],
                barRatio: 0.4,
                xLabelAngle: 35,
                hideHover: 'auto',
                resize: true
            });
       } */
      
        
    </script>
     <script src="js/plugins/morris/morris.min.js"></script>
    
    </body>
</html>

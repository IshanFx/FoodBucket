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
        
        <div id="morris-bar-chart2">
            
        </div>
         
         
    <script>
            
       function chart3(){
           Morris.Bar({
                element: 'morris-bar-chart2',
                data: [
                <% for(Map.Entry<Integer,Double> incomeList : mapList.entrySet() ){ %>                   
                {
                    device: '<%=incomeList.getKey().toString() %>',
                    geekbench: <%=incomeList.getValue() %>
                }, 
                 <% } %>       

                ],
                xkey: 'device',
                ykeys: ['geekbench'],
                labels: ['Income'],
                barRatio: 0.4,
                xLabelAngle: 35,
                hideHover: 'auto',
                resize: true
            });
       }
       chart3();
        
    </script>
    
    
    </body>
</html>

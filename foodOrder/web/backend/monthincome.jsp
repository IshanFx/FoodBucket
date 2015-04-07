<%-- 
    Document   : monthincome
    Created on : Apr 3, 2015, 7:42:27 AM
    Author     : IshanFX
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.foodbucket.reportModel.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    
    <body>
                
    <% Report report2 = new Report(); %>
       
        <% int year = Integer.parseInt(request.getParameter("myyear")) ; %>
        <% HashMap<String,String> table = report2.getAllMonthIncome(year); %>       
    <script>
       function chart2(){
           Morris.Bar({
                element: 'morris-bar-chart1',
                data: [{
                    device: 'January',
                    geekbench: <%=table.get("January") %>
                }, {
                    device: 'February',
                    geekbench: <%=table.get("February") %>
                }, {
                    device: 'March',
                    geekbench: <%=table.get("March") %>
                }, {
                    device: 'April',
                    geekbench: <%=table.get("April") %>
                },  {
                    device:'May',
                    geekbench:<%=table.get("May") %>
                },
                    {
                    device: 'June',
                    geekbench: <%=table.get("June") %>
                }, {
                    device: 'July',
                    geekbench: <%=table.get("July") %>
                }, {
                    device: 'August',
                    geekbench: <%=table.get("August") %>
                }, {
                    device: 'September',
                    geekbench: <%=table.get("September") %>
                },{
                    device: 'October',
                    geekbench: <%=table.get("October") %>
                },{
                    device: 'November',
                    geekbench: <%=table.get("November") %>
                }, {
                    device: 'December',
                    geekbench: <%=table.get("December") %>
                },],
                xkey: 'device',
                ykeys: ['geekbench'],
                labels: ['Income'],
                barRatio: 0.4,
                xLabelAngle: 35,
                hideHover: 'auto',
                resize: true
            });
       }
       chart2();
    </script>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>Year </th>
                    <th>Income</th>                                                                
                </tr>
                
            </thead>
            <tbody>
                
                <tr>
                    <td>January</td>
                    <td><%=table.get("January") %></td>
                </tr>
                <tr>
                    <td>February</td>
                    <td><%=table.get("February") %></td>
                </tr>
                <tr>
                    <td>March</td>
                    <td><%=table.get("March") %></td>
                </tr>
                <tr>
                    <td>April</td>
                    <td><%=table.get("April") %></td>
                </tr>
                <tr>
                    <td>May</td>
                    <td><%=table.get("May") %></td>
                </tr>
                <tr>
                    <td>June</td>
                    <td><%=table.get("June") %></td>
                </tr>
                <tr>
                    <td>July</td>
                    <td><%=table.get("July") %></td>
                </tr>
                <tr>
                    <td>August</td>
                    <td><%=table.get("August") %></td>
                </tr>
                <tr>
                    <td>September</td>
                    <td><%=table.get("September") %></td>
                </tr>
                <tr>
                    <td>October</td>
                    <td><%=table.get("October") %></td>
                </tr>
                <tr>
                    <td>November</td>
                    <td><%=table.get("November") %></td>
                </tr>
                <tr>
                    <td>December</td>
                    <td><%=table.get("December") %></td>
                </tr>
                
            </tbody>
        </table>
    </div>
    
    <div id="morris-bar-chart1">

    </div>
      
    </body>
    
</html>

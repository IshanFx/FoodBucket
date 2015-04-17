<%-- 
    Document   : normalorderdeliver
    Created on : Apr 17, 2015, 11:55:02 AM
    Author     : IshanFX
--%>

<%@page import="com.foodbucket.orderModel.NormalOrderBL"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                      <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Order Id</th>
                                                                <th>Category</th>
                                                                <th>food</th>
                                                                <th>Quantity</th>
                                                                <th>Extra</th>
                                                                <th>Deliver Date</th>
                                                                <th>Address</th>
                                                                <th>Order date</th>
                                                                <th>Order time</th>
                                                                <th>State</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <% 
                                                         NormalOrderBL no =new NormalOrderBL();
                                                        ResultSet noDeliver = no.getDeliverOrderDetails();
                                                        %>
                                                        <% while(noDeliver.next()) {%>
                                                        <tr>
                                                            <td><%=noDeliver.getString(1) %></td>
                                                            <td><%=noDeliver.getString(2) %></td>
                                                            <td><%=noDeliver.getString(3) %></td>
                                                            <td><%=noDeliver.getString(4) %></td>
                                                            <td><%=noDeliver.getString(5) %></td>
                                                            <td><%=noDeliver.getString(6) %></td>
                                                            <td><%=noDeliver.getString(7) %></td>  
                                                            <td><%=noDeliver.getString(8) %><%=noDeliver.getString(9) %><%=noDeliver.getString(10) %></td>  
                                                            <td><%=noDeliver.getString(11) %></td>  
                                                            <td><%=noDeliver.getString(12) %></td>  
                                                            
                                                        </tr>
                                                        <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
    </body>
</html>

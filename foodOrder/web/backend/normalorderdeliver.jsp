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
                                                                <th>No</th>
                                                                <th>Category</th>
                                                                <th>food</th>
                                                                <th>Quantity</th>
                                                                
                                                                <th>Deliver Date</th>
                                                                <th>Address</th>
                                                                <th>Order date</th>
                                                                <th>Order time</th>
                                                                
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <% 
                                                         NormalOrderBL no =new NormalOrderBL();
                                                        ResultSet noDeliver = no.getDeliverOrderDetails();
                                                        int count2=1;
                                                        %>
                                                        <% while(noDeliver.next()) {%>
                                                        <tr>
                                                            <td><%=count2++ %></td>
                                                            <td><%=noDeliver.getString(2) %></td>
                                                            <td><%=noDeliver.getString(3) %></td>
             
                                                            <td><%=noDeliver.getString(5) %></td>
                                                            <td><%=noDeliver.getString(6) %></td>
                                                            <td><%=noDeliver.getString(7) %></td>  
                                                            <td><%=noDeliver.getString(10) %>/<%=noDeliver.getString(9) %>/<%=noDeliver.getString(8) %></td>  
                                                            <td><%=noDeliver.getString(11) %></td>  
                                                            
                                                            
                                                        </tr>
                                                        <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
    </body>
</html>

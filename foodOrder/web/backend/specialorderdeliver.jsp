<%-- 
    Document   : specialorderdeliver
    Created on : Apr 17, 2015, 11:55:18 AM
    Author     : IshanFX
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.foodbucket.orderModel.SpecialOrderBL"%>
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
                                                                <th>Description</th>
                                                                <th>Quantity</th>  
                                                                <th>Deliver Date</th>
                                                                <th>Customer</th>
                                                                <th>Address</th>
                                                                <th>Order date</th>
                                                                <th>Order time</th>
                                                                
                                                               
                                                            </tr>
                                                        </thead>
                                                        <% SpecialOrderBL special = new SpecialOrderBL(); 
                                                            ResultSet specialRst = special.getDeliverOrderDetails();
                                                            int count4=1;
                                                        %>
                                                        <tbody>
                                                          <%  while(specialRst.next()) { %>
                                                             <tr>
                                                               
                                                                 <td><%=count4++%></td>
                                                                <td><%=specialRst.getString(2)%></td>
                                                                <td><%=specialRst.getString(3)%></td>
                                                                <td><%=specialRst.getString(4)%></td>
                                                                <td><%=specialRst.getString(5)%></td>
                                                                <td><%=specialRst.getString(6)%></td>
                                                                <td><%=specialRst.getString(7)%></td>
                                                                <td><%=specialRst.getString(10)%>/ <%=specialRst.getString(9)%>/<%=specialRst.getString(8)%> </td>
                                                                <td><%=specialRst.getString(11)%></td>
                                                                
                                                               
                                                            </tr>
                                                            <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
    </body>
</html>

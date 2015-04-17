<%-- 
    Document   : sweets
    Created on : Apr 11, 2015, 1:32:34 PM
    Author     : IshanFX
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.foodbucket.foodModel.FoodBL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%@include file="Import/head.jsp" %>
          <%@include file="Import/navbar2.jsp" %>
          <%
            FoodBL food = new FoodBL();
                ResultSet rst = food.getSweetsDetails();
          %>
         <div class="container" style="margin-top: 200px;">
        <ul class="thumbnails">
            <% while(rst.next()){%>
            <form class="cakeform" action="CartAddController" method="post"> 
                <li class="span3">
                    <div class="thumbnail">
                        <div class="blockDtl">
                            <a href="#"><img src=" http://localhost:8080/images/<%=rst.getString(7) %>" alt=""></a>
                            <h4><%=rst.getString(2) %></h4>
                            <p>Price:Rs: <%=rst.getString(3) %> /= </p>
                            <p><%=rst.getString(4) %></p>
                            <p></p>
                            <button style="margin-bottom: 7px;"  type="submit" class="btn btn-info  ">Add To Cart </button>
                           
                        </div>
                    </div>
                            
                            <input type="text" class="hidden" name="id"  value="<%=rst.getString(1)%>" >
                            <input type="text" class="hidden" name="name"  value="<%=rst.getString(2)%>" >
                            <input type="text" class="hidden" name="price"  value="<%=rst.getString(3)%>" >
                            <input type="text" class="hidden" name="desc"  value="<%=rst.getString(4)%>" >
                            <input type="text" class="hidden" name="image"  value="<%=rst.getString(7) %>" >
                            
                </li>
                            
            </form>
            <% } %>
        </ul>
                            <a href="test.jsp"></a>
      
        
    </body>
</html>

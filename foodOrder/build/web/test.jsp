<%-- 
    Document   : test
    Created on : Apr 11, 2015, 2:03:49 PM
    Author     : IshanFX
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.food.managecls.DBConn"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foodbucket.foodModel.FoodBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
            Object session1 = request.getSession().getAttribute("cart");
        
    %>
    <body>
          <%@include file="Import/head.jsp" %>
          <%@include file="Import/navbar2.jsp" %>
          <div class="container" style="margin-top: 200px;">
            <% 
            ArrayList<FoodBean> lis = new ArrayList<FoodBean>();
            lis = (ArrayList)session1;
            
            for(FoodBean list : lis) {    %>
            <div class="row">
                <li class="span3">
                    <div class="thumbnail">
                        <div class="blockDtl">
                            <a href="#"><img src="themes/images/portfolio/<%=list.getFoodstatus() %> " ></a>
                            <h4><%=list.getFoodId() %></h4>
                            <p> <%=list.getFoodDesc() %> </p>
                            
                        </div>

                    </div>
                </li>
            </div>
                
            <% } %>
          </div>
          <div class="row">
              <%
        Statement stmt = null;
        //ArrayList<FoodBean> list = new ArrayList<FoodBean>();
        FoodBean food = null;
        String sql = "SELECT foodimg FROM food_tbl WHERE foodcategory='cake' AND foodstatus='Y'";
        ResultSet rst = null;
       
        try {
            InputStream binaryStream = null; 
            stmt = DBConn.dbConn().createStatement();           
            rst = stmt.executeQuery(sql);
            while(rst.next()){ 
                binaryStream = rst.getBinaryStream(7);
                food = new FoodBean();
                Blob len1 = rst.getBlob(7);
                int len = (int)len1.length();
                byte[] b = new byte[len];
                InputStream readImg = rst.getBinaryStream(1);
                int index = readImg.read(b, 0, len);
                System.out.println("index" +index);
                stmt.close();
                response.reset();
                response.setContentType("image/jpg");
                response.getOutputStream().write(b,0,len);
                response.getOutputStream().flush();
                
               %>
               <%=rst.getInt(1) %>
               <%=rst.getString(2) %>
               <%=rst.getDouble(3) %>
               <%=rst.getString(4) %>
               <%=rst.getString(6) %>
               
            
           <% }
            
        } catch (Exception e) {
        }
             %>
          </div>
         
    </body>
</html>

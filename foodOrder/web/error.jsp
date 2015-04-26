<%-- 
    Document   : error
    Created on : Apr 23, 2015, 9:49:56 PM
    Author     : IshanFX
--%>

<%@ page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Import/head.jsp" %>
        <style>
            .errorpanel p{
                margin-left: auto;
                margin-right: auto;
                
            }
        </style>
    </head>
    <body  >
        <div class="errorpanel">
            <p style="font-size: 25px">Something Going Wrong</p>
        </div>
            
        
        <h1>Error Code &nbsp;<%=response.getStatus() %></h1>
        
    </body>
</html>

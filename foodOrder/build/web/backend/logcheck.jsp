<%-- 
    Document   : logcheck
    Created on : Apr 21, 2015, 1:05:03 PM
    Author     : IshanFX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            HttpSession adminLoginChk = request.getSession();
            if(adminLoginChk.getAttribute("adminlogin")==null || adminLoginChk.getAttribute("adminlogin")==""){
               response.sendRedirect("/foodOrder/index.jsp");
            }
        %>
    </body>
</html>

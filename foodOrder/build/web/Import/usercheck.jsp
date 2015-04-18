<%-- 
    Document   : usercheck
    Created on : Apr 18, 2015, 2:24:24 AM
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
            HttpSession userChkSession  = request.getSession();
            if((userChkSession.getAttribute("userid")==null ||userChkSession.getAttribute("userid")=="")||(userChkSession.getAttribute("username")==null||userChkSession.getAttribute("username")=="" )){
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>

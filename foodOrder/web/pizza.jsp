<%-- 
    Document   : pizza
    Created on : Apr 11, 2015, 1:06:55 PM
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
           <%@include file="Import/head.jsp" %>
          <%@include file="Import/navbar2.jsp" %>
          <div class="container" style="margin-top: 200px;">
               <ul class="thumbnails">
                                <% for(int x=1;x<13;x++){%>
                                <form action="CartAddController" method="post">
                                <li class="span3">
                                    <div class="thumbnail">
                                        <div class="blockDtl">
                                            <a href="#"><img src="themes/images/portfolio/2.png" alt=""></a>
                                            <h4>Pizza</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                                            <button style="margin-bottom: 7px;"   type="submit" class="btn btn-info  ">Add To Cart </button>
                                            <button style=" margin-bottom: 7px;"  type="reset" class="btn btn-warning" data-toggle="modal" href="#pizzaModal">more </button>
                                        </div>
                                    </div>
                                    <input type="text" class="hidden" name="price"  value="<%=x %>" >
                                    <input type="text" class="hidden" name="desc"  value="this is pizza" >
                                    <input type="text" class="hidden" name="image"  value="2.png" >
                                </li>
                                </form>
                     	<% } %>
                            </ul>
          </div>
                            <a href="test.jsp"></a>
        <%@include  file="Import/pizzaModel.jsp" %> 
        <%@include  file="Import/footer.jsp" %>
    </body>
</html>

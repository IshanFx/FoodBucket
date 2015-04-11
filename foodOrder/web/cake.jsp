<%-- 
    Document   : cake
    Created on : Apr 11, 2015, 1:32:47 PM
    Author     : IshanFX
--%>

<%@page import="com.foodbucket.foodModel.FoodBL"%>
<%@page import="java.util.ArrayList"%>
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
                ArrayList<FoodBL> list = new ArrayList<FoodBL>();
                FoodBL food = new FoodBL();
                list = food.getFoodCake();
            %>
          <div class="container" style="margin-top: 200px;">
          <ul class="thumbnails">
            <% for(FoodBL foods : list ){%>
            <form class="cakeform" action="CartAddController" method="post"> 
                <li class="span3">
                    <div class="thumbnail">
                        <div class="blockDtl">
                            <a href="#"><img src="themes/images/portfolio/4.png" alt=""></a>
                            <h4><%=foods.getFoodName() %>Cake</h4>
                            <p><%=foods.getFoodDesc() %> </p>
                            <p><%=foods.getFoodPrice() %></p>
                            <p><%=foods.getFoodRetreiveImage() %></p>
                            <button style="margin-bottom: 7px;"  type="submit" class="btn btn-info  ">Add To Cart </button>
                            <input type="text" class="hidden" name="price"  value="<%=foods.getFoodId()%>" >
                            <input type="text" class="hidden" name="desc"  value="this is cake" >
                            <input type="text" class="hidden" name="image"  value="4.png" >
                        </div>
                    </div>
                </li>
            </form>
            <% } %>
        </ul>
          </div>
        
        <a href="test.jsp">cart</a>  
     <script src="backend/js/jquery.js"></script>
     <script>
         function cartadd(dat){
             alert('adsad');
             $.ajax({
                 url: "CartAddController",
                 type: 'POST',
                 data: dat,
                 success:function(){
                     alert('success');
                 }
             });
             
             return false;
         }
     </script> 
     
        <%@include  file="Import/footer.jsp" %>
    </body>
</html>

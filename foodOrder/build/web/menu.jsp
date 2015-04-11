<%-- 
    Document   : about
    Created on : Feb 1, 2015, 9:11:20 PM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="Import/head.jsp" %>
        <style>

 body{
  background-size: 2500px;
 }  
        </style>

    </head>
    <body>
        <%@include  file="Import/navbar2.jsp" %>
        

        <!-- Our Portfolio======================================== -->
        <div id="portfolioSection">
            <h1 class="cntr">Our Menu</h1>
            <div class="container">	
                <ul class="nav nav-pills">
                    <li class="active" id="pastatab" ><a href="#pasta" data-toggle="tab">Pasta</a></li>
                    <li class="" id="pizzatab"><a href="#pizza" data-toggle="tab">Pizza</a></li>
                    <li class="" id="caketab"><a href="#cake" data-toggle="tab">Cake</a></li>
                    <li class="" id="sweetstab"><a href="#sweets" data-toggle="tab">Sweets</a></li>
                </ul>
                <div class="clr"></div>
                <div class="tabbable tabs">
                    <div class="tab-content label-primary">
                        <div class="tab-pane active" id="pasta">
                           
                            	
                        </div>
                        <div class="tab-pane" id="pizza">
                            

                        </div>
                        <div class="tab-pane" id="cake">
                           


                        </div>
                        <div class="tab-pane" id="sweets">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ========================= -->
        <script src="backend/js/jquery.js"></script>
        <script>
           $('#pastatab').click(function(){
                    $('#pasta').load('pasta.jsp');
            });
            
            $('#pizzatab').click(function(){
                    $('#pizza').load('pizza.jsp');
            });
            $('#caketab').click(function(){
                    $('#cake').load('cake.jsp');
            });
            $('#sweetstab').click(function(){
                    $('#sweets').load('sweets.jsp');
            });
        
        
        
       </script>   
        <%@include  file="Import/paAndRiceModel.jsp" %><!--meke div ekak wahila ne eka balanna--> 
        <%@include  file="Import/cakeModel.jsp" %> 
        <%@include  file="Import/drinksModel.jsp" %> 
        <%@include  file="Import/pizzaModel.jsp" %> 
        <%@include  file="Import/footer.jsp" %>
        
        
      
        
        
    </body>
</html>

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
                    <li class="active"><a href="#all" data-toggle="tab">Pasta and Rice</a></li>
                    <li class=""><a href="#new" data-toggle="tab">Pizza</a></li>
                    <li class=""><a href="#popular" data-toggle="tab">Cake</a></li>
                    <li class=""><a href="#comingsoon" data-toggle="tab">Sweets</a></li>
                </ul>
                <div class="clr"></div>
                <div class="tabbable tabs">
                    <div class="tab-content label-primary">
                        <div class="tab-pane active" id="all">
                            <ul class="thumbnails">
                                <% for(int x=1;x<13;x++){%>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <div class="blockDtl">
                                            <a href="#"><img src="themes/images/portfolio/1.png" alt=""></a>
                                            <h4>Pasta And Rice</h4>
                                            <p> xxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxx, </p>
                                          
                                            <button style="margin-bottom: 7px;"   type="submit" class="btn btn-info  ">Add To Cart</button>
                                            <button style=" margin-bottom: 7px;"  type="reset" class="btn btn-warning" data-toggle="modal" href="#orderModal">more </button>
                          
                                        </div>
                                        
                                    </div>
                                </li>
                                	<% } %>
                            </ul>
                            <div class="pagination pull-right">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>	
                        </div>
                        <div class="tab-pane" id="new">
                            <ul class="thumbnails">
                                <% for(int x=1;x<13;x++){%>
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
                                </li>
                     	<% } %>
                            </ul>

                        </div>
                        <div class="tab-pane" id="popular">
                            <ul class="thumbnails">
                                <% for(int x=1;x<13;x++){%>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <div class="blockDtl">
                                            <a href="#"><img src="themes/images/portfolio/4.png" alt=""></a>
                                            <h4>Cake</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                                            <button style="margin-bottom: 7px;"   type="submit" class="btn btn-info  ">Add To Cart </button>
                                            
                                        </div>
                                    </div>
                                </li>
                               
                                 <% } %>
                            </ul>


                        </div>
                        <div class="tab-pane" id="comingsoon">
                            <ul class="thumbnails">
                                <% for(int x=1;x<13;x++){%>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <div class="blockDtl">
                                            <a href="#"><img src="themes/images/portfolio/3.jpg" alt=""></a>
                                            <h4>Sweets</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                                            <button style="margin-bottom: 7px;"   type="submit" class="btn btn-info  ">Add To Cart </button>
                                            
                                        </div>
                                    </div>
                                </li>
                                <% } %>
                            </ul>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ========================= -->


        <%@include  file="Import/paAndRiceModel.jsp" %><!--meke div ekak wahila ne eka balanna--> 
        <%@include  file="Import/cakeModel.jsp" %> 
        <%@include  file="Import/drinksModel.jsp" %> 
        <%@include  file="Import/pizzaModel.jsp" %> 
        <%@include  file="Import/footer.jsp" %>
        
        
      
        
        
    </body>
</html>

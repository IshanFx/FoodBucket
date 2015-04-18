<%-- 
    Document   : index
    Created on : Jan 23, 2015, 5:10:48 PM
    Author     : Induwara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--Start head--->     
    <%@include file="Import/head.jsp" %>
    <!--End head---> 

    <style>

        body{
                background-size: 4000px;

        }
        h1{margin-top:-100px;} 
        h1 {
            padding: 0px 0px 44px!important;
            font-weight: 500!important;
            font-size: 40px!important;
            font-family: cursive;
        }
        #ourServices {
            background: none;
            text-align: center;
            border-top: 0px solid #DDD;}
        img {
            border-radius: 0px!important;
        }

    </style>

    
    <body data-spy="scroll" data-target=".navbar">

        <!--Start navbar-->
        <%@include file="Import/navbar2.jsp" %>
        <!--End navbar--->

        <!--start slider--->
        <%@include file="Import/slider3.jsp" %>
        <!--end slider--->



        <div id="welcomeSection"> 
            <div class="container cntr" style="margin-top: -30px">

                <h2 style="color: #ee5f5b;font-family:Segoe Print;">Welcome to Food Bucket</h2>
                <p style="color: #000000; font-family:Segoe Print; font-size: 20px;"><b>
                        <span style="color: #FC3C00;" class="icon-food"></span> Hai! Food bucket user. What do you need? <span style="color: #FC3C00;">Yummy food</span> for party or for home. Hurry up order online and get your foods on door steps
                    </b></p>
            </div>
        </div>

        <!-- Our Services======================================== -->
        <div id="ourServices"style="margin-top: -50px" > 	
            <div class="container">	
                <h1 class="cntr" style="color: #ffffff;">Our Services</h1>
                <div class="row">
                    <div class="span4">

                        <div class="thumbnail">

                            <h3>Order</h3>

                            <img src="themes/images/home/h2.png" style=" width: 370px;height: 200px;">
                           
                        </div>
                        <br>

                        <div class="thumbnail">

                            <h3>Menu</h3>
                         <img src="themes/images/home/food.png" style=" width: 370px;height: 200px;">
                            
                        </div>
                    </div>
                    <div class="span4">


                        <div class="thumbnail">
                            <h3 >Deliver</h3>
                           <img src="themes/images/home/h1.png" style=" width: 370px;height: 200px;">       
                           
                        </div>
                        <br>

                        <div class=" thumbnail">
                            <h3>Account</h3>
                            <img src="themes/images/home/user.png" style=" width: 370px;height: 200px;">
                            
                        </div>
                    </div>
                    <div class="span4">

                        <div class="thumbnail">

                            <h3>Eat</h3>

                            <img src="themes/images/home/h3.png" style=" width: 370px;height: 200px;">
                            
                        </div>
                        <br>
                        <div class="thumbnail">

                            <h3>Who we are?</h3>
                            <img src="themes/images/home/h4.png" style=" width: 370px;height: 200px;">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
      
       

    <marquee direction="right" >
        <div id="beforeFooter" class="cntr">
            <div class="container-fluid" style="margin-left: 40px; margin-top: -100px;">

                <div class="span4"><img src="themes/images/beforeFooter/bf1.png" style=" width: 370px;height: 150px;"></div>
                <div class="span4"><img src="themes/images/beforeFooter/bf2.png" style=" width: 370px;height: 150px;"></div>
                <div class="span4"><img src="themes/images/beforeFooter/bf3.png" style=" width: 370px;height: 150px;"></div>
            </div> 

        </div>
    </marquee>
    <!---------------------End Thumnail------------------------------------>       

</div>

<!--Start footer--->
<%@include file="Import/footer.jsp" %>
<!--End footer--->

</body>
</html>

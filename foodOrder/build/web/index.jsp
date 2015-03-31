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

                <h2 style="color: #ffffff;">Welcome to Seen Saal</h2>
                <p style="color: #ffffff; font-family: monospace; font-size: 16px"><b>
                        Vivamus commodo placerat libero, eget pulvinar felis lobortis in. Curabitur ac enim nibh. Cras in odio nisi. Fusce et augue velit. Nulla convallis, ipsum vitae tristique pretium, sapien odio viverra quam, eget mollis diam risus ut mi. Nullam ultrices ornare nisl, sagittis ullamcorper dolor rutrum vitae. Sed accumsan mauris eget elit dictum vitae dapibus nisl [...]
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

                            <h4>Order foods</h4>

                            <img src="themes/images/home/ins1.png" style=" width: 370px;height: 150px;">
                            <a href="#"> More detail</a><p></p>
                        </div>
                        <br>

                        <div class="thumbnail">

                            <h4>we are here</h4>
                         <img src="themes/images/home/ins5.png" style=" width: 370px;height: 150px;">
                            <a href="#"> More detail</a><p></p>
                        </div>
                    </div>
                    <div class="span4">


                        <div class="thumbnail">
                            <h4 >Our Menu</h4>
                            <div style=" width: 370px;height: 150px;">   
                              
                            </div>                       
                            <a href="#"> More detail</a><p></p>
                        </div>
                        <br>

                        <div class=" thumbnail">
                            <h4>User Account</h4>
                            <img src="themes/images/home/ins6.png" style=" width: 370px;height: 150px;">
                            <a href="#"> More detail</a><p></p>
                        </div>
                    </div>
                    <div class="span4">

                        <div class="thumbnail">

                            <h4>My recipy</h4>

                            <img src="themes/images/home/ins4.png" style=" width: 370px;height: 150px;">
                            <a href="#"> More detail</a><p></p>
                        </div>
                        <br>
                        <div class="thumbnail">

                            <h4>Who we are?</h4>
                            <img src="themes/images/home/ins7.png" style=" width: 370px;height: 150px;">
                            <a href="#"> More detail</a><p></p>
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

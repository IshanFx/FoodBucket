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
        <title>Team</title>
        <%@include  file="Import/head.jsp" %>
        <style>
            body{
                 background-size: 2500px;
            }

            .element {
                border-radius:0px!important;
            }
            img{width: 300px; height:300px; border-radius: 200px}

            .thumbnail {
                display: block;
                padding: 2px!important;
                line-height: 20px;
                border: 1px solid #DDD;
                border-radius: 500px!important;
                box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.055);
                transition: all 0.2s ease-in-out 0s;
                width: 300px;
                height: 300px;
                background: #DDD;
            }

            .blockDtl {
                background: none!important;
            }

        </style>

        <script>
            $(function() {

                $("#testjq").hide(300).show(500).fadeOut(100);

            });


        </script>

    </head>
    <%@include  file="Import/navbar2.jsp" %>
    <!---------------------------------mission----------------------->
    <div class="container"> 

        <div class="accordion" id="accordion2" style="margin-top: 200px;">
            <div class="accordion-group">
                <div class="accordion-heading">

                    <div class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne" class="row-fluid" href="#collapseOne" style="background:#f0eeee; height:70px;" > 
                        <h3 class="cntr">Our Mission <i class="icon-circle-arrow-down"></i></h3>
                    </div>  

                </div>
                <div id="collapseOne" class="accordion-body collapse out">
                    <div class="accordion-inner">
                        <div class="row-fluid" style="margin-top: 20px">


                            <div class="alert alert-success element" id="testjq">
                                <h5 class="cntr">Our Mission</h5>
                                <p class="cntr">Our Mission is deliver quality and tasty food to customer and make them happier.
                                We are making foods ourself and we deliver only the quality and fresh foods.Customer can buy our
                                foods without any doubt.
                                </p>

                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="accordion-group">
                <div class="accordion-heading">

                    <div class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" class="row-fluid" style="background:#f0eeee; height:60px;" > 
                        <h3 class="cntr">What We have <i class="icon-circle-arrow-down"></i></h3>
                    </div>

                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <div class="row-fluid" style="margin-top: 20px">
                            <ul class="thumbnails" style="margin-left: 30px;">
                                    <li class="span3">
                                        <div class="thumbnail"  style="margin-left: 30px">
                                            <div class="blockDtl">

                                                <a href="#"><img src="images/cake.jpg" class="cntr" alt=""></a>
                                                
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3" >
                                        <div class="thumbnail"  style="margin-left: 90px">
                                            <div class="blockDtl">
                                                <a href="#"><img src="images/sweets.gif" class="cntr" alt=""></a>
                                                
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3" >
                                        <div class="thumbnail" style="margin-left: 140px">
                                            <div class="blockDtl">
                                                <a href="#"><img src="images/pasta.jpg" class="cntr" alt=""></a>
                                                
                                            </div>
                                        </div>
                                    </li>
                                   
                                </ul>      

                            <div class="alert alert-success element" id="testjq">
                                <h5 class="cntr">Foods we make</h5>
                                <p class="cntr">Since we started our food deliver center he make our food under main three 
                                    category like pasta,pizza,cake and sweets. We have most of the time customer used to order 
                                    pizza and cake. So we have more than 29 types of cakes and 10 type of pizza. some foods can't 
                                    order from online and you can buy them from our shops.
                                    
                                </p>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion-group">
                <div class="accordion-heading">

                    <div class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree" class="row-fluid" style="background:#f0eeee; height:60px;" >
                        <h3 class="cntr">Our Team <i class="icon-circle-arrow-down"></i></h3>
                    </div>

                </div>
                <div id="collapseThree" class="accordion-body collapse">
                    <div class="accordion-inner">
                        
                        <div class="row-fluid" style="margin-top: 0px">
                            <div class="container" style="margin-top: 50px; margin-bottom: 200px;">

                                <ul class="thumbnails" style="margin-left: 30px;">
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="blockDtl">

                                                <a href="#"><img src="images/5-24-greg_chef_photo.jpg" class="cntr" alt=""></a>
                                                <h4>Chef Ben</h4>
                                                <p>Chef main is the leader of our kitchen</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3" style="margin-left:-20px">
                                        <div class="thumbnail">
                                            <div class="blockDtl">
                                                <a href="#"><img src="themes/images/about/g1.png" class="cntr" alt=""></a>
                                                <h4>Manager Veronika</h4>
                                                <p>Veronika is the main leader of this all works</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3" style="margin-left:-20px">
                                        <div class="thumbnail">
                                            <div class="blockDtl">
                                                <a href="#"><img src="images/am-n-young-20131002190029726889-300x0.jpg" class="cntr" alt=""></a>
                                                <h4>chef Don</h4>
                                                <p>Chef Don is a one of talented chef in our team. </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail" style="margin-left:-20px">
                                            <div class="blockDtl">
                                                <a href="#"><img src="images/different-types-of-chefs.jpg" class="cntr" alt=""></a>
                                                <h4>Chef Sheren</h4>
                                                <p>Chef Sheren is a one of talented chef in out team and she is the leader of pizza unit. </p>
                                            </div>
                                        </div>

                                </ul>
                            </div>




                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div style="margin-top: 200px; position: relative">
        <%@include  file="Import/footer.jsp" %>
    </div>



</body>
</html>

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
        <title>Teem</title>
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
                                <h5 class="cntr">We make</h5>
                                <p class="cntr">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>

                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="accordion-group">
                <div class="accordion-heading">

                    <div class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" class="row-fluid" style="background:#f0eeee; height:60px;" > 
                        <h3 class="cntr">Our Vission <i class="icon-circle-arrow-down"></i></h3>
                    </div>

                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                    <div class="accordion-inner">
                        <div class="row-fluid" style="margin-top: 20px">


                            <div class="alert alert-success element" id="testjq">
                                <h5 class="cntr">We make</h5>
                                <p class="cntr">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion-group">
                <div class="accordion-heading">

                    <div class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree" class="row-fluid" style="background:#f0eeee; height:60px;" >
                        <h3 class="cntr">Our Teem <i class="icon-circle-arrow-down"></i></h3>
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

                                                <a href="#"><img src="themes/images/about/m1.png" class="cntr" alt=""></a>
                                                <h4>xxxxxxxxxxxxxx 1</h4>
                                                <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxx, </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3" style="margin-left:-20px">
                                        <div class="thumbnail">
                                            <div class="blockDtl">
                                                <a href="#"><img src="themes/images/about/g1.png" class="cntr" alt=""></a>
                                                <h4>xxxxxxxxxxxxxx 1</h4>
                                                <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxx, </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3" style="margin-left:-20px">
                                        <div class="thumbnail">
                                            <div class="blockDtl">
                                                <a href="#"><img src="themes/images/about/m2.png" class="cntr" alt=""></a>
                                                <h4>xxxxxxxxxxxxxx 1</h4>
                                                <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxx, </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail" style="margin-left:-20px">
                                            <div class="blockDtl">
                                                <a href="#"><img src="themes/images/about/g2.png" class="cntr" alt=""></a>
                                                <h4>xxxxxxxxxxxxxx 1</h4>
                                                <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxx, </p>
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

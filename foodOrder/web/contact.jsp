<%-- 
    Document   : contact
    Created on : Feb 1, 2015, 7:39:43 PM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Import/head.jsp" %>
        
        <!-- <script src="http://maps.googleapis.com/maps/api/js"></script>
        -->
        <style>
             body{
             background-size: 2500px}
             
             h4,p{color: #ffffff;}
            
        </style>

        <script>
            function initialize() {
                var mapProp = {
                    center: new google.maps.LatLng(51.508742, -0.120850),
                    zoom: 5,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </head>
    <body>

        <%@include file="Import/navbar2.jsp" %>
        <div>

        
        </div>

        <div class="container">
            
         <div id="googleMap" style="width:1180px;height:380px; margin-top: 120px"></div>  

            <div class="row">	

                <div id="contactSection">
                    <div class="span6" style="margin-top: -100px;">

                        <form class="form" id="contactform">
                            <fieldset>
                                <div class="control-group">
                                    <h4><span>Mail us</span></h4> <hr>
                                    <div class="controls">
                                        <input type="text" name="cusname" class="input-xlarge" id="input01" placeholder="Your Name" style=" border-radius: 0px; width: 200px">
                                        <input type="text" name="cusmail" class="input-xlarge" id="input01" placeholder="Your Email" style="margin-left: 25px; border-radius: 0px; width: 200px">

                                    </div>
                                </div>
                                <div class="control-group">

                                    <div class="controls">
                                        <input type="text" name="mailsubject" class="input-xxlarge" id="input11" placeholder="Subject"  style=" border-radius: 0px; width: 443px">

                                    </div>
                                </div>
                                <div class="control-group">

                                    <div class="controls">
                                        <textarea name="message" class="input-xlarge" id="textarea" rows="3" placeholder="Message" style="width: 443px;height:200px; border-radius: 0px; "></textarea>
                                    </div>
                                </div>

                                <div style="margin-left: 255px">
                                    <button type="submit" class="btn btn-success " class= "">send messages</button>
                                    <button class="btn">Cancel</button>
                                </div>
                            </fieldset>
                        </form>
                    </div> 
                    <div class="span6" style="margin-top: -100px;">	
                        <h4><span>Contact us</span></h4> <hr>
                    </div>
                    <div class="span3">
                        <h4>  <i class="icon-map-marker"></i></h4>
                        <h4>Address</h4>
                        <p>xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxx</p>
                    </div>
                    <div class="span3">
                        <h4> <i class="icon-phone"></i></h4>
                        <h4>Phone</h4>
                        <p>xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxx</p>
                    </div>

                    <div class="span3">
                        <h4> <i class="icon-globe"></i></h4>
                        <h4>Web</h4>
                        <p>xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxx</p>
                    </div>

                    <div class="span3">
                        <h4> <i class="icon-envelope"></i></h4>
                        <h4>Email</h4>
                        <p>xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxxxxxx
                            xxxxxxxxxxxxxx</p>
                    </div>


                </div> 
            </div> 
        </div> 
        
        <!---------------------Start Thumnail------------------------------------>          
            <marquee direction="right" >
        <div id="beforeFooter" class="cntr">
            <div class="container-fluid" style="margin-left: 40px; margin-top: 100px;">

                <div class="span4"><img src="themes/images/beforeFooter/bfr1.png" style=" width: 370px;height: 150px;"></div>
                <div class="span4"><img src="themes/images/beforeFooter/bfr2.png" style=" width: 370px;height: 150px;"></div>
                <div class="span4"><img src="themes/images/beforeFooter/bfr3.png" style=" width: 370px;height: 150px;"></div>
            </div> 

        </div>
    </marquee>
            <!---------------------End Thumnail------------------------------------>       



        <%@include file="Import/footer.jsp" %>

        <script>
            $('#contactform').submit(function(){
                $.ajax({
                    url: "ClientMailServlet",
                    type: 'POST',
                    data: $('#contactform').serialize(),
                    success:function(succ){
                        alert("Success");
                    }
                });
                
                return false;
            })
        </script>

    </body>
</html>

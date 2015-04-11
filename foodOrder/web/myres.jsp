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
        <title>my res</title>
        <%@include  file="Import/head.jsp" %>
        
        <style>
            body{ 
                 background-size: 2500px;}

            .element {
                border-radius:0px!important;
            }
            img{width: 260px; height: 180px;}
        </style>

    </head>
    <body>
        <%@include  file="Import/navbar2.jsp" %>


        <div class="container">


            <div class="row"style="margin-top: 150px;">	


                <div class="span12 cntr">
                    <h2 style="color: #000000;">Let's make your food</h2>
                    <p style="color: #000000; font-family: monospace; font-size: 16px"><b>
                        Food you are looking is not there? Don't worry . Tell us about the food you need. It will be in your doorstep
                        </p>
                </div>
                <div id="myRecipySection">
                    <div class="span6">

                        <form class="form" id="myreceipeform" >
                            <fieldset>
                                <div class="control-group">
                                    <h4 style="color: #000000;"><span>Give your recipe details to Us</span></h4> <hr>
                                    <div class="controls">
                                        <input type="text" class="span3 element" id="input01" placeholder="Your Name" name="customername" >
                                        <select class=" span3 element" placeholder="Your Name" name="categoryselect">
                                            <option>--select category--</option>
                                            <option>pasta and rice</option>
                                            <option>cake</option>
                                            <option>pizza</option>
                                            <option>Sweets</option> 
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <input type="text" class="span3 element" id="input01" placeholder="quntity" name="quantity" >
                                        <input type="date" class="span3 element" id="input01" placeholder="DD/MM/YYYY" name="date" >
                                    </div>
                                </div>

                                <div class="controls">
                                    <textarea class="input-xxlarge element" id="textarea" rows="3" placeholder="Address" name="address"></textarea>
                                </div>

                                <div class="control-group">

                                    <div class="controls">
                                        <textarea class="input-xxlarge element"  id="textarea" rows="10" placeholder="Your note" style="height : 120px" name="receipe"></textarea>
                                    </div>

                                   <!-- <div class=" alert element" style="width: 495px">
                                        <div class="controls">
                                            <input type="file" class="span6 element" id="input01" placeholder="choose file" >
                                        </div>  
                                    </div>
                                    -->

                                    <div class="span6 offset10" style="margin-left: 380px;">
                                        <button type="submit" class="btn btn-info input-small  ">Confirm</button>
                                        <button class="btn btn-danger " type="reset">Clear</button>
                                    </div>
                            </fieldset>
                        </form>
                    </div> 
                    <div class="span6">	
                        <h4 style="color: #000000;"><span  style="margin-left: 410px">Check your recipe</span></h4> <hr>
                    </div>
                    <div class="span6">
                        <div class="alert alert-info element">
                            <h4 class="">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;xxxxxxxxxxxxx</h4><br>
                            <h4 class="">Category&nbsp;:xxxxxxxxxxxxx</h4><br>
                            <h4 class="">Quntity&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;xxxxxxxxxxxxx</h4><br>
                            <h4 class="">Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:xxxxxxxxxxxxxxxxxx</h4><br>
                            <h5 class="">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:xxxxx xxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxx</h5>
                            <h6 class=" cntr"> Check again your recipy</h6>
                            <p class="cntr">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                                xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>


                        </div>



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
   
    
    
    <script src="backend/js/jquery.js"></script>
    <script>
        $('#myreceipeform').submit(function(){
            $.ajax({
                url:'SpecialOrderPlaceController',
                type: 'POST',
                data: $('#myreceipeform').serialize(),
                success:function(data){
                    alert("Send Success");
                  
                }
            });
           return false;
        });
    </script>
    
    <%@include  file="Import/footer.jsp" %>

</body>
</html>

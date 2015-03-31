<%-- 
    Document   : login
    Created on : Feb 11, 2015, 10:16:13 AM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
    .modalor {
        position: fixed;
        top: 50%!important;
        left: 42%!important;
        z-index: 9000;
        width: 800px!important;
        margin: -250px 0px 0px -280px;
        background-color: #FFF;
        border: 1px solid rgba(0, 0, 0, 0.3);
        border-radius: 0px!important;
        outline: 0px none;
        box-shadow: 0px 3px 7px rgba(0, 0, 0, 0.3);
        background-clip: padding-box;
    }
    .modal-footer {
        padding: 14px 15px 15px;
        margin-bottom: 0px;
        text-align:right!important;
        background-color: #F5F5F5;
        border-top: 1px solid #DDD;
        border-radius: 0px 0px 6px 6px;
        box-shadow: 0px 1px 0px #FFF inset;
    }
    .element{border-radius: 0px!important;}
</style>

<!-- Modal -->

<div id="cakeModal" class="modalor hide fade" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">×</button>
        <h3 id="myModalLabel" class="cntr">custermize order</h3>
    </div>
    <div class="modal-body">

        <div class="row">


            <!--image-->
            <div class="col-lg-6 col-sm-6" style="float: left">

                <div class="span3">
                    <h4 class="cntr">Food name</h4><hr>          

                    <div class="thumbnail">
                        <div class="blockDtl">
                            <a href="#"><img src="themes/images/portfolio/3.jpg" alt=""></a>
                            <h4>Easy Interface</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                        </div>
                    </div>
                </div>	
            </div>


            <!--extra adding-->           
            <div class="col-lg-6 col-sm-6" style="float: left">
                <h4 class="cntr">Extra adding</h4><hr>
                <form class="form-horizontal">
                    
                    <div class="control-group">
                        <div class="controls">
                            <label class="radio">
                                <input type="radio" name="optionsRadios1" id="optionsRadios" value="option2"> with Decorate 
                            </label>
                            <label class="radio">
                                <input type="radio" name="optionsRadios1" id="optionsRadios1" value="option2">without decoration
                            </label>                          
                        </div>
                    </div>


                    <div class="control-group">
                      
                        <div class="controls">
                            <label class="radio">
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">with fruits
                            </label>
                            <label class="radio">
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">without fruits 
                            </label>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">

                            <button  type="submit" class="btn btn-info input-large">Add To Cart  </button>
                            <button  type="reset" class="btn btn-inverse">Cancel </button>
                        </div>
                    </div>
                </form>
            </div>



        </div>


    </div>
    <div class="modal-footer">
        <button class="btn btn-danger  cntr " data-dismiss="modal" aria-hidden="true"><i class="icon-remove-sign"></i> close</button>

    </div>
</div>



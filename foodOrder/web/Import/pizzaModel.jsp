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
        z-index: 1050;
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

<div id="pizzaModal" class="modalor hide fade" tabindex="-1" role="dialog"
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
                            <h4>Pizza</h4>
                            <p>Pan pizza</p>
                        </div>
                    </div>
                </div>	
            </div>


            <!--extra adding-->           
            <div class="col-lg-6 col-sm-6" style="float: left">
                <h4 class="cntr">Extra adding</h4><hr>
                <form class="form-horizontal">
                    <div class="control-group">
                        <label class="control-label" for="LastName">Extra 1</label>
                        <div class="controls">
                            <select class=" input-xlarge element" placeholder="Your Name">
                                <option>--select-----</option>
                                <option>Cheese 100/=</option>
                                <option>Union 20/=</option>
                                <option>pineapple 50/=</option>
                                <option>Tomato 50/=</option>
                                <option>Chicken Sausage 150/=</option>
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="LastName">Extra 2</label>
                        <div class="controls">
                            <select class=" input-xlarge element" placeholder="Your Name">
                                <option>--select-----</option>
                                <option>Cheese 100/=</option>
                                <option>Union 20/=</option>
                                <option>pineapple 50/=</option>
                                <option>Tomato 50/=</option>
                                <option>Chicken Sausage 150/=</option>
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="controls">
                            <button  type="submit" class="btn btn-info input-large">Add To Cart</button>
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



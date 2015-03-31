<%-- 
    Document   : feedbackmodel
    Created on : Mar 31, 2015, 1:45:51 AM
    Author     : IshanFX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
         
         <div id="feedbackModel" class="modal hide fade top" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">×</button>
                            <h3 id="myModalLabel" class="cntr">FeedBack</h3>
                        </div>
                        <div class="modal-body">

                            <div class="row">

                                <!--register model-->           
                                <div class="col-lg-6 col-sm-6" style="float: left">
                                    
                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            <label class="control-label" for="fistName">Name</label>
                                            <div class="controls">
                                                <input class="element input-xlarge" type="text" id="fistName" placeholder="First name">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="fistName">Category You Like</label>
                                            <div class="controls">
                                                <select>
                                                    <option>Pasta and Rice</option>
                                                    <option>Pizza</option>
                                                    <option>Cake</option>
                                                    <option>Sweets</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="fistName">Feed Back</label>
                                            <div class="controls">
                                                <textarea cols="20" rows="5">

                                                </textarea>
                                            </div>
                                        </div>
                                         <div class="control-group">
                                            
                                            <div class="controls">
                                                <button  type="submit" class="btn btn-info input-large">Submit </button>
                                                <button  type="reset" class="btn btn-inverse">Clear </button>
                                            </div>
                                        </div>
                                        
                                    </form>
                                </div>
                                <!--login moodel-->
                                <div class="col-lg-6 col-sm-6" style="float: left">
                                    
                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            
                                        </div>
                                        <div class="control-group">
                                           

                                        </div>

                                        <div class="control-group ">
                                            <div class="controls">
                                                
                                            </div>
                                        </div>
                                        <!-- <div class="span4 cntr"><img src="themes/images/beforeFooter/bf3.png" style=" width: 370px;height: 150px;"></div>-->
                                    </form>

                                </div>
                            </div>
                        </div>








                        <div class="modal-footer">
                            <button class="btn btn-danger  cntr " data-dismiss="modal" aria-hidden="true"><i class="icon-remove-sign"></i> close</button>

                        </div>

                             </div>
    </body>
</html>

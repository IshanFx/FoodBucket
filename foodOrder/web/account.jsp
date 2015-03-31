<%-- 
    Document   : account
    Created on : Feb 14, 2015, 5:41:03 PM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file="Import/head.jsp" %>
    <title>My account</title>
    <style>

        body{
             background-size: 2500px;
        } 
        .usertable tr td{
            font-size: 15px;
            padding: 10px;
        }
        .alert-info {
          color: #0589CB;
          background-color: transparent!important;
          background-image: url(acbc.jpg)!important;
          border:none!important;
      }
    </style>

    <body>
        <%@include file="Import/navbar2.jsp" %>

        <div class="container" style="margin-top: 150px;">
            <div class="row">
                <div class="tabbable">
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#tab1" data-toggle="tab">Dashboard</a></li>
                      <li><a href="#tab2" data-toggle="tab">Change Password</a></li>
                      <li><a href="#tab3" data-toggle="tab">My Order</a></li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="tab1">
                          <div class="col-md-6">
                                <form class="form-horizontal">
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">User Name</label>
                                        <div class="controls">
                                            <input class=" element input-xlarge" type="text" readonly="true"  >
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">First Name</label>
                                        <div class="controls">
                                            <input class=" element input-xlarge" type="text" readonly="true"  >
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Last Name</label>
                                        <div class="controls">    
                                            <input class=" element input-xlarge" type="text" readonly="true">
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Address</label>
                                        <div class="controls">   
                                            <textarea cols="20" rows="5">
                                                
                                            </textarea>
                                        </div>
                                    </div> 
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Contact</label>
                                        <div class="controls"> 
                                            <input class=" element input-xlarge" type="text"   >
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">E-mail</label>
                                        <div class="controls"> 
                                            <input type='email' class=" element input-xlarge" type="text"  id="fistName" >
                                        </div>
                                    </div> 
                                    <div class="Control-group">
                                        <label class="control-label" for="fistName"></label>
                                        <div class="controls"> 
                                            <input type='submit' value="Update" class=" btn btn-success">
                                            <button type="reset"  class="btn btn-danger">clear</button>
                                        </div>
                                        
                                    </div>
                                    
                                </form>
                          </div>

                      </div>
                      <div class="tab-pane" id="tab2">
                          
                          <div class="col-md-6">
                                <form class="form-horizontal">
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">Current Password</label>
                                        <div class="controls">
                                            <input class="element input-xlarge" type="text" id="fistName" >
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">New Password</label>
                                        <div class="controls">
                                            <input class="element input-xlarge" type="text" id="fistName" >
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Confirm Password</label>
                                        <div class="controls">
                                            <input class="element input-xlarge" type="text" id="fistName">
                                        </div>
                                    </div>    
                                </form>
                          </div>  
                      </div>
                        <div class="tab-pane" id="tab3">
                            <div class="tabbable"> <!-- Only required for left/right tabs -->
                                    <ul class="nav nav-tabs">
                                      <li class="active"><a href="#Normal" data-toggle="tab">Normal</a></li>
                                      <li><a href="#Special" data-toggle="tab">Special</a></li>
                                    </ul>
                                    <div class="tab-content">
                                    <div class="tab-pane active " id="Normal">                                       
                                            <ul class="thumbnails">
                                                     <li class="span3">
                                                         <div class="thumbnail">
                                                             <div class="blockDtl">
                                                                 <img src="themes/images/portfolio/2.png" alt="">
                                                                 <h4>Cake</h4>
                                                                 <p>Extra</p>
                                                                 <p>Quantity</p>
                                                                 <p>Total</p>
                                                                 <p></p>
                                                             </div>
                                                         </div>
                                                     </li>
                                             </ul>
                                    </div>
                                    <div class="tab-pane" id="Special">
                                        <ul class="thumbnails">
                                                     <li class="span3">
                                                         <div class="thumbnail">
                                                             <div class="blockDtl">
                                                                 <h4>Cake</h4>
                                                                 <p>Extra</p>
                                                                 <p>Quantity</p>
                                                                 <p>Description</p>
                                                                 <p></p>
                                                             </div>
                                                         </div>
                                                     </li>
                                        </ul>
                                    </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
           
            
        </div>
        <script>$('[data-toggle="tabajax"]').click(function(e) {
                var $this = $(this),
                        loadurl = $this.attr('href'),
                        targ = $this.attr('data-target');

                $.get(loadurl, function(data) {
                    $(targ).html(data);
                });

                $this.tab('show');
                return false;
            });</script>
            <div style="margin-top: 200px">
            <%@include file="Import/footer.jsp"%>
            </div>
    </body>
</html>

<%-- 
    Document   : account
    Created on : Feb 14, 2015, 5:41:03 PM
    Author     : Suresh
--%>

<%@page import="com.food.User.User"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file="Import/head.jsp" %>
    <script src="themes/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="themes/js/jquery.form.js" type="text/javascript"></script>
    <script src="themes/js/jquery.validate.min.js" type="text/javascript"></script>
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
      .msg{
          position: relative;
          text-align: right;
          left: 600px;
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
                      <li>${meassge}</li>
                    </ul>
                                 
    <%ResultSet set=(ResultSet)request.getAttribute("result");
    String name="",fname="",lname="",address="",tel="",email="";
    while(set.next()){
      name=set.getString(1);
      fname=set.getString(2);
      lname=set.getString(3);
      address=set.getString(4);
      tel=set.getString(5);
      email=set.getString(6);
    }
    %>                
                    <div class="tab-content">
                      <div class="tab-pane fade in active" id="tab1">
                          <div class="col-md-6">
                              <form class="form-horizontal" id="ajaxform" action="AccountS" method="POST">
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">User Name</label>
                                        <div class="controls">
                                            <input class=" element input-xlarge" type="text" name="uname" value="<%=name%>" readonly="true"  >
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">First Name</label>
                                        <div class="controls">
                                            <input class=" element input-xlarge" type="text" name="fname" value="<%=fname%>" readonly="true"  >
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Last Name</label>
                                        <div class="controls">    
                                            <input class=" element input-xlarge" type="text" value="<%=lname%>" readonly="true">
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Address</label>
                                        <div class="controls">   
                                            <textarea cols="20" rows="5" name="address" value="" required>
                                                <%=address%>
                                            </textarea>
                                        </div>
                                    </div> 
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Contact</label>
                                        <div class="controls"> 
                                            <input class=" element input-xlarge"  type="text" name="tel" value="<%=tel%>" required >
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">E-mail</label>
                                        <div class="controls"> 
                                            <input type='email' class=" element input-xlarge " type="text"  name="email" value="<%=email%>" required >
                                        </div>
                                    </div> 
                                    <div class="Control-group">
                                        <label class="control-label" for="fistName"></label>
                                        <div class="controls"> 
                                            <input type="hidden" name="hidden" value="<%=username%>"/>
                                            <input type="hidden" name="hidden" value="dashboard"/>
                                            <input type='submit' value="Update" class=" btn btn-success">
                                            <button type="reset"  class="btn btn-danger">clear</button>
                                        </div>
                                        
                                    </div>
                                    
                                </form>
                          </div>
                      </div>
                      <div class="tab-pane fade" id="tab2">
                          
                          <div class="col-md-6">
                              <form class="form-horizontal" action="AccountS" method="POST">
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">Current Password</label>
                                        <div class="controls">
                                            <input class="element input-xlarge" type="password" name="currpass" id="fistName" required>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="fistName">New Password</label>
                                        <div class="controls">
                                            <input class="element input-xlarge" type="password"  id="password" required >
                                        </div>
                                    </div>
                                    <div class="control-group">    
                                        <label class="control-label" for="fistName">Confirm Password</label>
                                        <div class="controls">                                           
                                            <input class="element input-xlarge left" type="password" name="newpass" id="conforma" data-match="#password" required>
<script>
    var password = document.getElementById("password")
    , conforma = document.getElementById("conforma");
    function validatePassword() {
        if (password.value != conforma.value) {
            conforma.setCustomValidity("Passwords Dosn't Match");
        } else {
            conforma.setCustomValidity('');
        }
    }
    password.onchange = validatePassword;
    conforma.onkeyup = validatePassword;
</script>
                                            <br><br>
                                            <input type="hidden" name="hidden" value="<%=username%>"/>                                         
                                            <input type='submit' value="Update" class=" btn btn-success">
                                            <button type="reset"  class="btn btn-danger">clear</button>                                         
                                        </div>
                                           
                                    </div>    
                                </form>                              
                          </div>  
                      </div>
                        <div class="tab-pane fade" id="tab3">
                            <div class="tabbable"> <!-- Only required for left/right tabs -->
                                    <ul class="nav nav-tabs">
                                      <li class="active"><a href="#Normal" data-toggle="tab">Normal</a></li>
                                      <li><a href="#Special" data-toggle="tab">Special</a></li>
                                    </ul>
                                    <div class="tab-content">
                                    <div class="tab-pane fade in active " id="Normal">                                       
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
                                    <div class="tab-pane fade" id="Special">
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

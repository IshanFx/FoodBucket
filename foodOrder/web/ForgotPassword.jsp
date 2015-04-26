<%-- 
    Document   : ForgotPassword
    Created on : Apr 22, 2015, 12:26:51 PM
    Author     : Nimesh Chathuranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <link href="../backend/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
            .con{
                top: 80px;
                position: relative;
            }
            body{
               // background-image: url("paper.gif");
                background-color: #141414;
            }
          
        </style>
    </head>
    <body>
       <br>
<div class="container con">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body ">
                        <div class="text-center ">
                            <img src="images/fogpass.png" class="login" >
                          <h3 class="text-center">Forgot Password?</h3>
                          <p>If you have forgotten your password - reset it here.</p>
                            <div class="panel-body">
                              
                                <form class="form" method="POST" action="ForgotPasswordS">
                                <fieldset>
                                  <div class="form-group">
                                      <div class="input-group">
                                          <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                      <!--EMAIL ADDRESS-->
                                      <input id="user" placeholder="User Name" class="form-control" name="user" type="text"  required="">
                                      </div>
                                      <br>
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                      <!--EMAIL ADDRESS-->
                                      <input id="emailInput" placeholder="email address" class="form-control " name="email" type="email" oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try{setCustomValidity('')}catch(e){}" required="">
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <input class="btn btn-lg btn-primary btn-block " value="Send My Password" type="submit">
                                  </div>
                                </fieldset>
                                    <br>
                                  <span>${status}</span>
                              </form>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </body>
</html>

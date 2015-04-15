<%-- 
    Document   : login
    Created on : Feb 11, 2015, 10:16:13 AM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../themes/js/jquery.form.js" type="text/javascript"></script>
<script src="../themes/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="../themes/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
    .modal {
        position: fixed;
        top: 55%!important;
        left: 35%!important;
        z-index: 9000;
        width: 1000px!important;
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
        border-radius: 0px 0px 0px 0px!important;
        box-shadow: 0px 1px 0px #FFF inset;
    }
    .element{border-radius: 0px!important;}
</style>

<!-- Modal -->

<div id="myModal" class="modal hide fade top" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">×</button>
        <h3 id="myModalLabel" class="cntr">Enter the Sen Saal</h3>
    </div>
    <div class="modal-body">

        <div class="row">

            <!--register model-->           
            <div class="col-lg-6 col-sm-6" style="float: left">
                <h4 class="cntr">Register here</h4><hr>
                <form class="form-horizontal" id="regform" method="POST" action="RegisterS">
                    <div class="control-group">
                        <label class="control-label" for="fistName">First name</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="text" name="fname" maxlength="45" placeholder="First name" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="fistName">Last name</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="text" name="lname" maxlength="45" placeholder="Last name" required>
                        </div>
                    </div>
                    
                     <div class="control-group">
                        <label class="control-label" for="fistName">Address</label>
                        <div class="controls">
                            <textarea class="element input-xlarge" type="text" name="address" maxlength="150" placeholder="Address" required></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="LastName">Telephone</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="text" name="tel" maxlength="10" placeholder="Telophone" required>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="email">Email</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="email" name="email" maxlength="30" placeholder="Email" required>
                        </div>
                    </div>


                    <div class="control-group">
                        <label class="control-label" for="inputPassword">Password</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="password" id="password" maxlength="20" name="password" name="password"required  >
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="inputPassword">Renter password</label>
                        <div class="controls">
                            <input class="element input-xlarge left" type="password" id="conform" maxlength="20" data-match="#password" name="conform"  required>
                            <input type="hidden" name="hidden" value="reg"/>
                        </div>
                    </div>
                    <script>
                        var password = document.getElementById("password")
                                , conform = document.getElementById("conform");

                        function validatePassword() {
                            if (password.value != conform.value) {
                                conform.setCustomValidity("Passwords Dosn't Match");
                            } else {
                                conform.setCustomValidity('');
                            }
                        }

                        password.onchange = validatePassword;
                        conform .onkeyup = validatePassword;
                    </script>
                    
                    <div class="control-group">
                        <div class="controls">
                            <label class="checkbox">
                                <input type="checkbox" required> Agree teem's condition
                            </label>                            
                            <button  type="submit" class="btn btn-info input-large">Sign in </button>
                            <button  type="reset" class="btn btn-inverse">Cancel </button>
                        </div>
                    </div>
                </form>
                
            </div>
            <!--login moodel-->
            <div class="col-lg-6 col-sm-6" style="float: left">
                <h4 class="cntr">Login here</h4><hr>
                <form class="form-horizontal" method="POST" action="LoginS">
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="text" name="email" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputPassword">Password</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="password" name="pass" placeholder="Password" required>
                            <p>forgot password</p>
                        </div>
                    </div>
                    <div class="control-group ">
                        <div class="controls">
                            <label class="checkbox">
                                <input type="checkbox" name="remember" ><p>Remember me</p>
                            </label>
                            <input type="hidden" name="hidden" value="login">
                            <button  type="submit" class="btn btn-info input-large">Sign in </button>
                            <button  type="reset" class="btn btn-inverse">Cancel </button>
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

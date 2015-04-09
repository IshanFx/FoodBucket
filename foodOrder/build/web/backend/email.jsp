<%-- 
    Document   : email
    Created on : Apr 8, 2015, 10:51:50 PM
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
        <form role="form" id="customMailForm" >
                                        <label>To</label>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"   name="allcusmail" id="allCustomerSend"/>Send To all Customers
                                                </label>
                                            </div>
                                        </div>   
                                        
                                        
                                        
                                        <div class="form-group input-group" hidden>
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Email" id="emailTo" name="mailAdd"  >
                                        </div>
                                      
                                        
                                        <label>Topic</label>
                                        <div class="form-group input-group">
                                            
                                            <span class="input-group-addon ">+</span>
                                            <input type="text" class="form-control " placeholder="Topic" name="emailSubject"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea class="form-control" rows="3" name="emailBody"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary" id="sendMailBtn">&nbsp;&nbsp;&nbsp;&nbsp;Send&nbsp;&nbsp;&nbsp;&nbsp; </button> 
                                        
                                        <button type="reset" class="btn btn-danger">&nbsp;&nbsp;&nbsp;Reset&nbsp;&nbsp;&nbsp;</button>

                                    </form>
       
           
       
        <script>
        $('#allCustomerSend').click(function(){
           if($('#allCustomerSend').prop('checked')){
               $('#emailTo').prop('readonly',true);
           }
           else{
               $('#emailTo').prop('readonly',false)
           }
        });
    </script>
    <script>
        $('#customMailForm').submit(function(){
            $.ajax({
                url: "CustomerMailController",
                type: 'POST',
                data:  $('#customMailForm').serialize(),
                success:function (data){
                   
                    alert(data);
                 $('#customMailForm').load('email.jsp').delay(2000);  
                    
                }
            });
            return false;
        });
    </script>
     <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>

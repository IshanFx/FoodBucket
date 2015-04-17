<%-- 
    Document   : myCart
    Created on : Feb 20, 2015, 10:31:52 AM
    Author     : Suresh
--%>

<%@page import="com.foodbucket.foodModel.FoodBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>my cart</title>
    <%@include file="Import/head.jsp" %>
    <style>

        body{
             background-size: 2500px;
        }  
    </style>
    <body>
        <%@include file="Import/navbar2.jsp" %>

        <div class="container" style="margin-top: 200px;">
            <% 
                    Object session1 = request.getSession().getAttribute("cart");
                    ArrayList<FoodBean> lis = new ArrayList<FoodBean>();
                    lis = (ArrayList)session1;
                    HttpSession sess = request.getSession();
            for(FoodBean list : lis) {    %>
            <form action="CartRemoveServlet" method="POST"> 
                   
            <div class="row" >
                <!--register model-->           
                <div class="span3" >
                    <form class="form-horizontal">
                        <div class="thumbnail">
                            <div class="blockDtl">
                                <a href="#"><img src="http://localhost:8080/images/<%=list.getFoodRetreiveImage() %>" style="max-height: 150px;" alt=""></a>
                                <h4><%=list.getFoodName() %></h4>
                            </div>
                        </div>  
                </div> 
                <div class="span4">
                    <p><%=list.getFoodDesc() %> </p>
                </div>
                
                <div class=span3>
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Quantity</label>
                        <div class="controls">
                            <select name="orderquantity" class="quantity"  onchange="changePrice(this.value,<%=list.getFoodPrice() %>,<%=list.getFoodId() %>)">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputPassword"></label>
                        <div class="controls">
                            <span class="badge badge-warning" style=" font-size: 20px;padding: 10px;">price Rs:<span id="<%=list.getFoodId() %>"><%=list.getFoodPrice() %></span> /=</span>
                            <input type="text" class="hidden piecequatity" name="piecequatity"  value="<%=list.getFoodPrice() %>" > 
                            <input type="text" id="f<%=list.getFoodId() %>" class="hidden" value="<%=list.getFoodPrice() %>" >
                        </div>
                    </div>
                        
                    <div class="control-group left ">
                        <div class="controls">
                            <button class="btn btn-danger cntr " type="submit"><i class="icon-remove-sign"></i> Remove</button>      
                        </div>
                    </div>      
                    <input type="text" name="id" value="<%=list.getFoodId() %>" class="hidden" >
                   
                </div>
            </div>
                
            </form>
               <% } %>     
            <div class="row ">
                <form >
                    <div class="control-group col-md-4 right">      
                        <div class="controls span3" style="float:right;" >
                               <span class="badge badge-warning" style=" font-size: 20px;padding: 10px;">Total Rs:<span id="totalprice"></span> /=</span>
                        </div>
                    </div>
                </form>  
            </div>
            <div class="row ">
                <form action="NormalOrderPlaceController" method="POST">
                    <div class="control-group col-md-10 right">      
                        <div class="controls span3" style="float:right;" >
                            <button class="btn btn-info cntr input-xlarge" style=" font-size: 20px;"><i class="icon-money"></i> Place Order</button> 
                        </div>
                    </div>
                </form>  
            </div>
                </div>

               <script>
                  var myOrderArray = {};
                   function changePrice(myval,price,set){
               
                       var total = myval * price;
                       $('#'+set).text(total);
                       $('#f'+set).val(total);
                       getTotal();
                       myOrderArray ={set,myval};
                       $.ajax({
                            url: "NormalOrderCartController",
                            type: 'POST',
                            data: myOrderArray,
                            success:function (data){
                                alert('added');
                              
                            }
                        });
                   }
                   
                   function getTotal(){
                      var full = 0;
                      var val1=0;
                   
                      for(var i=1;i<20;i++){
                       
                        if(($('#f'+i).val())==null){
                            
                        }
                        else{
                            var1 =parseFloat($('#f'+i).val());
                            full +=var1;
                        }
                        
                      }
                       $('#totalprice').text(full);
                  }
                   getTotal();
               </script> 
               


               <a href="test.jsp" >test</a>
        <div style="margin-top: 800px">
            <%@include file="Import/footer.jsp" %>
            </div>

                </body>
                </html>

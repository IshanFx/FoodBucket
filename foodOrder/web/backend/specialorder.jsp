<%-- 
    Document   : specialorder
    Created on : Apr 9, 2015, 1:59:41 AM
    Author     : IshanFX
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.foodbucket.orderModel.SpecialOrderBL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <script src="js/jquery.js"></script>
          <div id="specialtable">
                <div class="table-responsive"  >
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>

                                <th>No</th>
                                <th>Category</th>
                                <th>Description</th>
                                <th>Quantity</th>                               
                                <th>Customer Name</th>                                                            
                                <th>Address</th>
                                <th>Order date</th>
                                <th>Order time</th>
                                
                                <th>Total</th>
                                <th></th> 
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <% SpecialOrderBL specialo = new SpecialOrderBL(); %>
                            <% ResultSet rstso = specialo.getOrderDetails();
                                int count3=1;
                            %>
                            <% while(rstso.next()){ %>
                            <tr>
                                <td><%=count3++%></td>
                                <td><%=rstso.getString(2)%></td>
                                <td><%=rstso.getString(3)%></td>
                                <td><%=rstso.getString(4)%></td>                                
                                <td><%=rstso.getString(6)%></td>
                                <td><%=rstso.getString(7)%></td>
                                <td><%=rstso.getString(10)%>/<%=rstso.getString(9)%>/<%=rstso.getString(8)%></td>
                                <td><%=rstso.getString(11)%></td>
                                
                                <td><%=rstso.getString(13)%></td>
                                <td><a data-toggle="modal" class="btn btn-info col-md-12 changestatbtn" onclick="SpecialOrderPriceAdd(<%=rstso.getString(1) %>)">Add Price</a></td>
                                <td><a data-toggle="modal" class="btn btn-success col-md-12 changestatbtn" onclick="specialOrderChange(<%=rstso.getString(1) %>)">Deliver</a></td>

                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
          </div>
        
    <script>
        function specialOrderChange(orderid){
               $(".changestatbtn").attr("href","#specialOrderChange"); 
               $("#specialFoodid").val(orderid);
           }
           
            function SpecialOrderPriceAdd(orderid) {
                $("#specialFoodPriceChangeId").val(orderid);
                $(".changestatbtn").attr("href","#specialOrderPriceChange");
            }
    </script>
    
    <!-- specialChangeModel -->        
                    <div class="modal fade " id="specialOrderChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <form  id="sOrderStatusChange">
                                <div class="modal-content col-md-6 col-md-offset-4 alert alert-danger">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <div class=" fa fa-2x fa-check">
                                                <strong>Are You sure</strong> 
                                            </div>
                                        </div>
                                    </div>
                                        <input type="hidden" id="specialFoodid" name="specialFood">
                                    <div class="modal-footer">
                                        <input type="submit" value="Yes" class="btn btn-success">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                                    </div>         
                                </div>
                            </form>
                        </div>
                    </div>    
                <!-- specialChangeModel --> 
            
            
                <!--Special order price add model -->    
                    <div class="modal fade " id="specialOrderPriceChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form id="sfoodpricechange">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                      <h4 class="modal-title">Change Price</h4>
                                    </div>

                                    <div class="modal-body">
                                        <div class="form-group">
                                            <input type="hidden" id="specialFoodPriceChangeId" name="modiSpecialId">
                                            <label>Price</label>

                                            <input type="text" class="form-control" name="modiSpecialPrice" required> 
                                        </div>

                                    </div>
                                    <div class="modal-footer">

                                      <input type="submit" class="btn btn-primary" value="Modify" id="modifyfood">
                                      <input type="reset" class="btn btn-warning" data-dismiss="modal" value="Clear">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>       
        <!--Special order price add model -->    
       
    <script>

        
         $('#sfoodpricechange').submit(function(){
             
            $.ajax({
                url: "FoodPriceAddServlet",
                type: 'POST',
                data:  $('#sfoodpricechange').serialize(),
                success:function (data){
                   
                 $('#specialtable').load('specialorder.jsp').delay(2000);  
                 $('#specialOrderPriceChange').hide().fadeOut(3000);   
                }
            });
            return false;
        });
    </script>
    <script>
        
        
         $('#sOrderStatusChange').submit(function(){
             
            $.ajax({
                url: "OrderServlet",
                type: 'GET',
                data:  $('#sOrderStatusChange').serialize(),
                success:function (data){
                   
                 $('#specialtable').load('specialorder.jsp').delay(2000);  
                 $('#specialOrderChange').hide().fadeOut(3000);   
                }
            });
            return false;
        });
    </script>
    </body>
</html>

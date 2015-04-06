
<%@page import="com.foodbucket.orderModel.SpecialOrderBL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.foodbucket.orderModel.NormalOrderBL,
  java.sql.ResultSet"%>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Food Bucket</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
     <%@include file="menu.jsp" %>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                
            </div>
                  <div class="row">
                       <div class="col-md-12 col-sm-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Manage order Details
                            ${responceResult}
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs ">
                                <li class="active"><a href="#normal" data-toggle="tab">Normal Order</a>
                                </li>
                                <li class=""><a href="#special" data-toggle="tab">Special Order</a>
                                </li>
                                <li class=""><a href="#delivernormal" data-toggle="tab">Delivered Normal Order</a>
                                </li>
                                <li class=""><a href="#deliverspecial" data-toggle="tab">Delivered Special Order</a>
                                </li>
                            </ul>
                            
                            <!--Normal Order tab Start --> 
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="normal">
                                <h4>Normal Order</h4>
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>Order Id</th>
                                                            <th>Category</th>
                                                            <th>food</th>
                                                            <th>Quantity</th>
                                                            <th>Extra</th>
                                                            <th>Deliver Date</th>
                                                            <th>Address</th>
                                                            <th>Order date</th>
                                                            <th>Order time</th>
                                                            <th>State</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% NormalOrderBL no =new NormalOrderBL();
                                                           ResultSet rst = no.getOrderDetails();
                                                        %>
                                                        <% while(rst.next()) {%>
                                                        <tr>
                                                            <td><%=rst.getString(1) %></td>
                                                            <td><%=rst.getString(2) %></td>
                                                            <td><%=rst.getString(3) %></td>
                                                            <td><%=rst.getString(4) %></td>
                                                            <td><%=rst.getString(5) %></td>
                                                            <td><%=rst.getString(6) %></td>
                                                            <td><%=rst.getString(7) %></td>  
                                                            <td><%=rst.getString(8) %><%=rst.getString(9) %><%=rst.getString(10) %></td>  
                                                            <td><%=rst.getString(11) %></td>  
                                                            <td><%=rst.getString(12) %></td>  
                                                            <td><a data-toggle="modal" class="btn btn-success col-md-12 changestatbtn" onclick="normalOrderChange(<%=rst.getString(1) %>,<%=rst.getString(13) %>)">Deliver</a></td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Normal Order tab End --> 
                                                    
                                <!--Special Order tab start -->                        
                                <div class="tab-pane fade" id="special">
                                <h4>Special Order</h4>
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>

                                                            <th>Order Id</th>
                                                            <th>Category</th>
                                                            <th>Description</th>
                                                            <th>Quantity</th>
                                                            <th>Deliver Date</th>
                                                            <th>Customer Name</th>                                                            
                                                            <th>Address</th>
                                                            <th>Order date</th>
                                                            <th>Order time</th>
                                                            <th>State</th>
                                                            <th>Total</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% SpecialOrderBL specialo = new SpecialOrderBL(); %>
                                                        <% ResultSet rstso = specialo.getOrderDetails(); %>
                                                        <% while(rstso.next()){ %>
                                                        <tr>
                                                            <td><%=rstso.getString(1)%></td>
                                                            <td><%=rstso.getString(2)%></td>
                                                            <td><%=rstso.getString(3)%></td>
                                                            <td><%=rstso.getString(4)%></td>
                                                            <td><%=rstso.getString(5)%></td>
                                                            <td><%=rstso.getString(6)%></td>
                                                            <td><%=rstso.getString(7)%></td>
                                                            <td><%=rstso.getString(8)%><%=rstso.getString(9)%><%=rstso.getString(10)%></td>
                                                            <td><%=rstso.getString(11)%></td>
                                                            <td><%=rstso.getString(12)%></td>
                                                            <td><%=rstso.getString(13)%></td>
                                                            <td><a data-toggle="modal" class="btn btn-info col-md-12 changestatbtn" onclick="SpecialOrderPriceAdd(<%=rstso.getString(1) %>)">Add Price</a></td>
                                                            <td><a data-toggle="modal" class="btn btn-success col-md-12 changestatbtn" onclick="specialOrderChange(<%=rstso.getString(1) %>)">Deliver</a></td>

                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- Special Order tab End -->                                
                                                        
                            <!--Deliver Normal Order tab start -->                                
                                <div class="tab-pane fade " id="delivernormal">
                                    <h4>Deliver Normal Order</h4>
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Order Id</th>
                                                                <th>Category</th>
                                                                <th>food</th>
                                                                <th>Quantity</th>
                                                                <th>Extra</th>
                                                                <th>Deliver Date</th>
                                                                <th>Address</th>
                                                                <th>Order date</th>
                                                                <th>Order time</th>
                                                                <th>State</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <% 
                                                        
                                                        ResultSet noDeliver = no.getDeliverOrderDetails();
                                                        %>
                                                        <% while(noDeliver.next()) {%>
                                                        <tr>
                                                            <td><%=noDeliver.getString(1) %></td>
                                                            <td><%=noDeliver.getString(2) %></td>
                                                            <td><%=noDeliver.getString(3) %></td>
                                                            <td><%=noDeliver.getString(4) %></td>
                                                            <td><%=noDeliver.getString(5) %></td>
                                                            <td><%=noDeliver.getString(6) %></td>
                                                            <td><%=noDeliver.getString(7) %></td>  
                                                            <td><%=noDeliver.getString(8) %><%=noDeliver.getString(9) %><%=noDeliver.getString(10) %></td>  
                                                            <td><%=noDeliver.getString(11) %></td>  
                                                            <td><%=noDeliver.getString(12) %></td>  
                                                            
                                                        </tr>
                                                        <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!--Deliver Normal Order tab End -->                                    
                                                        
                            <!--Deliver Special Order tab start -->                        
                                <div class="tab-pane fade" id="deliverspecial">
                                    <h4>Deliver Special Order</h4>
                                    <div class="col-md-12">     
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                               
                                                                <th>OrderId</th>
                                                                <th>Category</th>
                                                                <th>food</th>
                                                                <th>Quantity</th>
                                                                <th>Extra</th>
                                                                <th>Deliver Date</th>
                                                                <th>Address</th>
                                                                <th>Order date</th>
                                                                <th>Order time</th>
                                                                <th>State</th>
                                                               
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <% 
                                                        
                                                        ResultSet soDeliver = specialo.getDeliverOrderDetails();
                                                        %>
                                                        <% while(soDeliver.next()) {%>
                                                        <tr>
                                                            <td><%=soDeliver.getString(1) %></td>
                                                            <td><%=soDeliver.getString(2) %></td>
                                                            <td><%=soDeliver.getString(3) %></td>
                                                            <td><%=soDeliver.getString(4) %></td>
                                                            <td><%=soDeliver.getString(5) %></td>
                                                            <td><%=soDeliver.getString(6) %></td>
                                                            <td><%=soDeliver.getString(7) %></td>  
                                                            <td><%=soDeliver.getString(8) %><%=soDeliver.getString(9) %><%=soDeliver.getString(10) %></td>  
                                                            <td><%=soDeliver.getString(11) %></td>  
                                                            <td><%=soDeliver.getString(12) %></td>  
                                                            
                                                        </tr>
                                                        <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!--Deliver Special Order tab End -->                                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

            
       <script src="js/jquery.js"></script>
       
       <!-- Functions to pass valus to model start-->
       <script>
           function normalOrderChange(orderid,orderfood){
               
               $("#normalFoodOrderid").val(orderid);
               $("#normalFoodFoodid").val(orderfood);
               $(".changestatbtn").attr("href","#normalOrderChange"); 
           }
           
           function specialOrderChange(orderid){
               $(".changestatbtn").attr("href","#specialOrderChange"); 
               $("#specialFoodid").val(orderid);
           }
           
            function SpecialOrderPriceAdd(orderid) {
                $("#specialFoodPriceChangeId").val(orderid);
                $(".changestatbtn").attr("href","#specialOrderPriceChange");
            }
        </script>
        <!-- Functions to pass valus to model End-->
        
        
                <!-- orderChangeModel verify need to change start-->        
                    <div class="modal fade " id="normalOrderChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <form action="OrderServlet" method="POST">
                                    <div class="modal-content col-md-6 col-md-offset-4 alert alert-danger">
                                        <div class="modal-body">
                                            <div class="form-group">
                                                    <div class=" fa fa-2x fa-check">
                                                      <strong>Are You sure</strong> 
                                                    </div>
                                            </div>
                                        </div>
                                            <input type="hidden" id="normalFoodOrderid" name="normalFoodOrder">
                                            <input type="hidden" id="normalFoodFoodid" name="normalfood">
                                        <div class="modal-footer">
                                            <input type="submit" value="Yes" class="btn btn-success" >
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                                        </div>         
                                    </div>
                            </form>
                        </div>
                    </div>    
                <!-- orderChangeModel verify need to change end --> 
       
       
                <!-- specialChangeModel -->        
                    <div class="modal fade " id="specialOrderChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <form action="OrderServlet" method="get">
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
                                <form action="FoodModifyServlet" method="POST">
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
        <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

  
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts Java Script -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <!-- Flot Charts Java Script -->
    <!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/flot-data.js"></script>

</body>

</html>

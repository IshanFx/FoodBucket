<%@page import="java.sql.ResultSet"%>

<%@page import="com.foodbucket.foodModel.FoodBL "%>
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
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
                <!-- /.row -->

                                <div class="row">
                    <div class="col-md-12 col-sm-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Foods Details Management 
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Register</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab">Modify/Remove</a>
                                </li>
                                
                                
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <%-- tab1 start --%>
                                                       <div class="row">
                <div class="col-md-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3>Add Foods</h3>
                                    <form role="form" method="post" action="FoodServlet" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Food Code</label>
                                            <input class="form-control" name="foodid" required/>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Food Name</label>
                                            <input type ="text" class="form-control" placeholder="Cake" name="foodname" required/>
                                        </div>
                                        
                                       
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea class="form-control" rows="3" name="fooddesc" required></textarea>
                                        </div>
                                        <label>Price</label>
                                        
                                        <div class="form-group input-group">
                                            
                                            <input type="text" class="form-control" name="foodprice" required>
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                        
                                        
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select class="form-control" name="foodcate" required>
                                                <option value="Sweets">Sweets</option>
                                                <option value="Buns" selected>Buns</option>
                                                <option value="cake">Cake</option>
                                                <option value="Break">Bread</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input type="file" name="foodimage" />
                                        </div>

                                        <input type="submit" class="btn btn-primary" value="Add">
                                        <input type="reset" class="btn btn-danger" value="reset">
                                    </form>
                                    <br />
                                        </div>
                                <div class="col-md-6">
                                    
                                                <div class="panel-heading">
                                                    
                                                </div>
                                                <div class="panel-body">
                                                    <div id="morris-donut-chart"></div>
                                                    
                                                </div>
                
                                </div>
                                    </div>
                                </div>
                            </div>
                             <!-- End Form Elements -->
                        </div>
                    </div>
                                    <%-- tab1 end --%>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    
                                     <div class="col-md-12">
                    <!--    Bordered Table  -->
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        Remove Foods
                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div class="panel-body">
                                                        <div class="table-responsive table-bordered">
                                                            <table class="table">
                                                                <% FoodBL bakeryFood = new FoodBL(); %>
                                                                <% ResultSet rst = bakeryFood.getFoodDetails(); %>
                                                                <thead>
                                                                    
                                                                    <tr>
                                                                        <th>Food Code</th>
                                                                        <th>Name</th>
                                                                        <th>Price</th>
                                                                        <th>Category</th>
                                                                        <th>Description</th>
                                                                        <th>Status</th>
                                                                        <th></th>
                                                                        <th></th>
                                                                    </tr>
                                                                   
                                                                </thead>
                                                                <tbody>
                                                                   
                                                                    <% while(rst.next()){%>
                                                                   
                                                                    <tr>
                                                                        <td><%=rst.getString(1) %></td>
                                                                        <td><%=rst.getString(2) %></td>
                                                                        <td><%=rst.getString(3) %></td>
                                                                        <td><%=rst.getString(6) %></td>
                                                                        <td><%=rst.getString(4) %></td>
                                                                        <td><%=rst.getString(5) %></td>
                                                                        <td><a data-toggle="modal" class="btn btn-success col-md-12 mybtn" onclick="myfunc(<%=rst.getString(1) %>)">Modify</a></td> 
                                                                        <td><a  data-toggle="modal" class="btn btn-danger col-md-12 removebtn" onclick="removeFunction(<%=rst.getString(1)%>)">Remove</a></td>
                                                                    </tr>
                                                                       
                                                                     <% } %>
                                                                     
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                                
                                                </div>
                                                 <!--  End  Bordered Table  -->
                                            </div>
                                        </div>
                              
                               
                                
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
                                                            
        <script src="js/jquery.js"></script>
        <script>            
            function myfunc(x){
                  $(".mybtn").attr("href","#myModal");
                  $("#add").val(x);
                }
                
            function removeFunction(removeid){
                $(".removebtn").attr("href","#removeModel")
                $("#removeid").val(removeid);
            }

        </script>
        
  <!-- Modal -->
  <div class="modal fade alert" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
          <form action="FoodModifyServlet" method="POST">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Add New Details</h4>
        </div>
          
        <div class="modal-body">
            <div class="form-group">
                <input type="hidden" id="add" name="modiid">
                <label>Price</label>
                
                <input type="text" class="form-control" name="modiprice" required> 
            </div>
            <div class="form-group">
                <label>Description</label>
                <textarea class="form-control" rows="3" name="modidesc" required></textarea>
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
  
  
  <!--success model -->
 <div class="modal fade" id="sucessModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content col-md-6 col-md-offset-4 alert alert-success">
          
          
        <div class="modal-body">
            <div class="form-group">
                    <div class=" fa fa-2x fa-thumbs-up">
                        <strong>Success!</strong> 
                    </div>
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>   
     
      </div>
    </div>
  </div>
  <!--succes model -->
  
  <!--Remove model -->
 <div class="modal fade" id="errorModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content col-md-6 col-md-offset-4 alert alert-danger">
        
          
        <div class="modal-body">
            <div class="form-group">
                    <div class=" fa fa-2x fa-close">
                        <strong>Not Completed!</strong> 
                    </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
          
      </div>
    </div>
  </div>
  <!--remove model -->
 
  
  <!--removeokmeodel -->
  <div class="modal fade " id="removeModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="FoodRemoveServlet" method="get">
      <div class="modal-content col-md-6 col-md-offset-4 alert alert-danger">
        
          
        <div class="modal-body">
            <div class="form-group">
                    <div class=" fa fa-2x fa-check">
                        <strong>Are You sure</strong> 
                    </div>
            </div>
        </div>
          <input type="hidden" id="removeid" name="foodremoveid">
          <div class="modal-footer">
          <input type="submit" value="Yes" class="btn btn-success">
          <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
          </div>         
      </div>
        </form>
    </div>
  </div>
  <!-- removeokmodel-->
  
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    
    
    <script>
        function doechart(){
            Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Sweets",
            value: 89
        }, {
            label: "Bun",
            value: 100
        },{
            label: "Cake",
            value: 40
        },{
            label: "Bread",
            value: 50
        },],
        resize: true
    });
        }
        doechart();
    </script>
</body>

</html>

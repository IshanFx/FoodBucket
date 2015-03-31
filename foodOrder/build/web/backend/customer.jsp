<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.food.managecls.Customer,java.sql.ResultSet" %>
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
                            Basic Tabs
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#cusdetails" data-toggle="tab">Details</a>
                                </li>
                                <li class=""><a href="#message" data-toggle="tab">Send Message</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="cusdetails">
                                    <h4>Details</h4>
                                                  <div class="col-md-12">
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        
                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Address</th>
                                                                <th>Telephone</th>
                                                                <th>Email</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%Customer cus = new Customer();
                                                                ResultSet rst = cus.getCustomerDetails();
                                                            %>
                                                            <%while(rst.next()){ %>
                                                            <tr>
                                                                <td><%=rst.getString(1) %>&nbsp;<%=rst.getString(2) %></td>
                                                                <td><%=rst.getString(3)%></td>
                                                                <td><%=rst.getString(4)%></td>
                                                                <td><%=rst.getString(5)%></td>    
                                                            </tr>
                                                            <% }%>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                         <!-- End  Kitchen Sink -->
                                    </div>
                                                    </div>
                                <div class="tab-pane fade" id="message">
                                    <h4>Special Order</h4>
                                <div class="col-md-12">
                  <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        
                                <div class="panel-body">
                                    <div class="col-md-6">
                                    <h3>Send Email</h3>
                                    <form role="form" action="">
                                        <label>To</label>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="" name="allcusmail" onclick="checkSelect()" id="ss"/>Send To all Customers
                                                </label>
                                            </div>
                                        </div>   
                                        
                                        
                                        <script>function checkSelect(){ if(document.getElementById('ss').checked){ </script>
                                        <div class="form-group input-group" hidden>
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Email" >
                                        </div>
                                        <script> }}</script>
                                        
                                        
                                        <div class="form-group">
                                            <label>Subject</label>
                                            <input class="form-control" placeholder="Topic" />
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;Send&nbsp;&nbsp;&nbsp;&nbsp; </button> 
                                        
                                        <button type="reset" class="btn btn-danger">&nbsp;&nbsp;&nbsp;Reset&nbsp;&nbsp;&nbsp;</button>

                                    </form>
                                    <br />
                                        </div>
                                        
                                    
                                            </div>
                                        </div>
                                         <!-- End  Kitchen Sink -->
                                    </div>
                                </div>
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <!-- /.row -->
                
                <!-- Flot Charts -->
                
                <!-- /.row -->

                
                <!-- /.row -->
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <!-- Flot Charts JavaScript -->
    <!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/flot-data.js"></script>

</body>

</html>

<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.foodbucket.reportModel.Report"%>
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
                                <li class="active"><a href="#month" data-toggle="tab">Monthly Income</a>
                                </li>
                                <li class=""><a href="#annual" data-toggle="tab">Annual Income</a>
                                </li>
                                <li class=""><a href="#sellingfood" data-toggle="tab">Best Selling Foods</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                 <!-- Monthly income tab start-->
                                <div class="tab-pane fade active in" id="month">
                                    <h4>Monthly Income</h4>
                                    <% Report report1 = new Report();
                                       ArrayList<String> list = report1.selectDistinctYear();
                                       Iterator<String> iterator = list.iterator();
                                       
                                    %>
                                        <!-- Select year to get Monthly income-->
                                        <div class="col-md-2">
                                            <select class="form-control" name="category" id="yearselect" > 
                                               
                                            <% while(iterator.hasNext()){ String yearVal = iterator.next(); %>
                                            <option value='<%=yearVal %>'><%=yearVal %></option>
                                            <%   } %>   
                                            
                                            </select> 
                                        </div>
                                    <br><br><br>
                                  
                                    
                                        <div class="col-lg-12">
                                            <div class="panel panel-red">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i>Monthly Income</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div id="monthlyIncomeChart">
                                                        
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>

                                  
                              
                              
                           
                                </div>
                                <!-- Annual income tab End-->
                                 
                                 
                                <!-- Annual income tab start-->
                                <div class="tab-pane fade" id="annual">
                                <h4>Annual Income</h4>
                                    <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>#</th>
                                                                <th>First Name</th>
                                                                <th>Last Name</th>
                                                                <th>Username</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Mark</td>
                                                                <td>Otto</td>
                                                                <td>@mdo</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2</td>
                                                                <td>Jacob</td>
                                                                <td>Thornton</td>
                                                                <td>@fat</td>
                                                            </tr>
                                                            <tr>
                                                                <td>3</td>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <input id="annualincometab" value="click" name="buttion" type="button">
                                    <!--Annual Income Chart -->
                                    <div class="col-lg-12">
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i>Annual Income</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div id="morris-bar-chart2"></div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <!-- Annual income tab End-->
                                 
                                 
                                <!-- Best Selling Food start-->
                                <div class="tab-pane fade" id="sellingfood">
                                <h4>Best Selling Foods</h4>
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <% Report report = new Report(); %>
                                                            <% ResultSet rst  = report.getBestSellingItems(); %>
                                                            <tr>
                                                                <th>Food Name</th>
                                                                <th>Category</th>
                                                                <th>Quantity</th>
                                                                <th>Total</th>
                                                                <th>No Of Orders</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <% while(rst.next()){ %>
                                                            <tr>
                                                                <td><%=rst.getString(1) %> </td>
                                                                <td><%=rst.getString(2) %></td>
                                                                <td><%=rst.getString(3) %></td>
                                                                <td><%=rst.getString(4) %></td>
                                                                <td><%=rst.getString(5) %></td>
                                                            </tr>
                                                            <% } %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Best Selling Food End--> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    
    
    <script>
   
    </script>
    
    
  
    <script>
        $('#yearselect').change(function(){
             var year = $(this).val();
             $('#monthlyIncomeChart').load('monthincome.jsp',{myyear:year});
           
          });
    </script>
    
    
    <script>     
       function chart3(){
           Morris.Bar({
                element: 'morris-bar-chart2',
                data: [              
                {
                    device: 'January',
                    geekbench: 12
                }, 
               
                ],
                xkey: 'device',
                ykeys: ['geekbench'],
                labels: ['Income'],
                barRatio: 0.4,
                xLabelAngle: 35,
                hideHover: 'auto',
                resize: true
            });
        }
       chart3();       
    </script>
  
  

</body>

</html>

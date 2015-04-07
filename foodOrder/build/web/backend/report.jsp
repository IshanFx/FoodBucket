<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.foodbucket.orderModel.NormalOrderBean"%>
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
  <% Calendar calendar = Calendar.getInstance(TimeZone.getDefault()); 
               int month= calendar.get(Calendar.MONTH) + 1;
               int year = calendar.get(Calendar.YEAR);
            %>
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
                                <li class=""><a href="#sellingfood" data-toggle="tab">Best Orders</a>
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
                                                        <% Map<Integer,Double> annualIncome = report1.getAnnualIncomeReport(); 
                                                        %>
                                                        <thead>
                                                            <tr>
                                                                <th>Year </th>
                                                                <th>Income</th>                                                                
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <% for(Map.Entry<Integer,Double> incomeList : annualIncome.entrySet() ){ %>
                                                            <tr>
                                                                <td> <%=incomeList.getKey() %> </td>
                                                                <td><%=incomeList.getValue() %> </td>    
                                                            </tr>
                                                           <% } %>
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
                                              <div class="col-lg-6">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Top 10 order Of Month</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered table-hover table-striped">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Name</th>
                                                                        <th>Quantity</th>
                                                                        <th>Total income</th>   
                                                                    </tr>   
                                                                </thead>
                                                                <tbody>
                                                                    <% ArrayList<NormalOrderBean> monthTopOrder= report1.getTopOrderMonth(month,year); %>
                                                                    <% for(NormalOrderBean foodMonth :monthTopOrder ){ %>
                                                                    <tr>
                                                                        <td> <%=foodMonth.getOrderFood()%> </td>
                                                                        <td><%=foodMonth.getOrderQuantity() %></td>
                                                                        <td><%=foodMonth.getOrderPrice() %></td>
                                                                    </tr>   
                                                                      <% } %>          
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-6">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Top 10 order Of Year</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered table-hover table-striped">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Name</th>
                                                                        <th>Quantity</th>
                                                                        <th>Total income</th>   
                                                                    </tr>   
                                                                </thead>
                                                                <tbody>
                                                                    <% ArrayList<NormalOrderBean> yearTopOrder= report1.getTopOrderYear(year); %>
                                                                    <% for(NormalOrderBean foodYear : yearTopOrder ){ %>
                                                                    <tr>
                                                                        <td><%=foodYear.getOrderFood()%> </td>
                                                                        <td><%=foodYear.getOrderQuantity() %></td>
                                                                        <td><%=foodYear.getOrderPrice() %></td>
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

\
<%@page import="com.restfb.types.*"%>
<%@page import="com.restfb.FacebookClient"%>
<%@page import="com.restfb.DefaultFacebookClient"%>
<%@page import="com.foodbucket.foodModel.FoodBL"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.HashMap"%>
<%@page import="com.foodbucket.reportModel.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.food.managecls.Customer" %>

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
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to Seen Saal <small></small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-info-circle"></i>  <strong>Welcome FoodBucket</strong> 
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-users fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <% Customer c = new Customer(); %>
                                           
                                        <div class="huge"><%=c.getTotalCustomer() %></div>
                                        <div>Customers</div>
                                        
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-dollar fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                    <% Report r = new Report();  %>
                                    
                                        <div class="huge"><%=r.getAnnualIncome(year) %></div>
                                        <div>Annual Income</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-4">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-money fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge"><%=r.getCurrentMonthIncome(month,year) %></div>
                                        <div>Monthly Income</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    
                    
                    
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-shopping-cart fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge"><%=r.getSpecialorderCount()+r.getNormalOrderCount() %></div>
                                        <div>New Orders</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    
                                        <% FoodBL food = new FoodBL(); %>
                    <div class="col-lg-4 col-md-4">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-birthday-cake fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge"><%=food.getCountFood() %></div>
                                        <div>Foods</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    <% FacebookClient facebookClient = new DefaultFacebookClient("CAAV5M8BD48ABAHOSYPrnd2oSvmeYUOPLlQU93IynOez2vGZC229h9yzJgmEpWaZAc2DRooDZCgahixoyv7NHOBLZCzwIxvSdkZB1jPHen3z0pYyS2d6SMNgZBwRb9LtCYUZCF5kYmsVijoBxGCgFkojFObpG5qkJTrrTtPbJqV5ZBuRLNkIX3BZCzVnkI4r9xN8WiX0wWv9qJACxAFUm9MZBb9");
                        //User user = facebookClient.fetchObject("me",User.class);
                       Page pages = facebookClient.fetchObject("1460216490935672",Page.class);
                        %>
                    
                    <div class="col-lg-4 col-md-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-thumbs-up fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge"><%=pages.getLikes() %></div>
                                        <div>Likes</div>
                                    </div>
                                </div>
                            </div>
                            <a href="#">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>   
                </div>
               
                                        
                <div class="row">
                     
                </div>
                <!-- /.row -->
                <hr/>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i>Monthly Income</h3>
                            </div>
                            <div class="panel-body">
                                <div id="morris-bar-chart1"></div>
                                <div class="text-right">
                                    <a href="#">View Details <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-4">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-shopping-cart"></i>New Order Comparison</h3>
                            </div>
                            <div class="panel-body">
                                <div id="morris-donut-chart"></div>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    <% Report report2 = new Report(); %>
    <% HashMap<String,String> table = report2.getAllMonthIncome(year); %>
    
    <script>
       function chart1(){
           Morris.Bar({
                element: 'morris-bar-chart1',
                data: [{
                    device: 'January',
                    geekbench: <%=table.get("January") %>
                }, {
                    device: 'February',
                    geekbench: <%=table.get("February") %>
                }, {
                    device: 'March',
                    geekbench: <%=table.get("March") %>
                }, {
                    device: 'April',
                    geekbench: <%=table.get("April") %>
                },  {
                    device:'May',
                    geekbench:<%=table.get("May") %>
                },
                    {
                    device: 'June',
                    geekbench: <%=table.get("June") %>
                }, {
                    device: 'July',
                    geekbench: <%=table.get("July") %>
                }, {
                    device: 'August',
                    geekbench: <%=table.get("August") %>
                }, {
                    device: 'September',
                    geekbench: <%=table.get("September") %>
                },{
                    device: 'October',
                    geekbench: <%=table.get("October") %>
                },{
                    device: 'November',
                    geekbench: <%=table.get("November") %>
                }, {
                    device: 'December',
                    geekbench: <%=table.get("December") %>
                },],
                xkey: 'device',
                ykeys: ['geekbench'],
                labels: ['Income'],
                barRatio: 0.4,
                xLabelAngle: 35,
                hideHover: 'auto',
                resize: true
            });
       }
       chart1();
        
    </script>
    <script>
        function doechart(){
                Morris.Donut({
                    element: 'morris-donut-chart',
                    data: [{
                        label: "Normal Orders",
                        value: <%=r.getNormalOrderCount() %>
                    }, {
                        label: "Special orders",
                        value: <%=r.getSpecialorderCount() %>
                    },],
                    resize: true
                });
            }
        doechart();
    </script>
</body>

</html>

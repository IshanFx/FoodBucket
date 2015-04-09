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
                            Customer Management
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#cusdetails" data-toggle="tab">Details</a>
                                </li>
                                <li class="" id="emailtab"><a href="#message" data-toggle="tab">Send Message</a>
                                </li>
                                <li class=""><a href="#records" data-toggle="tab">LogIn Records</a>
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
                                    <h4>Mail</h4>
                                <div class="col-md-12">
                  <!--   Kitchen Sink -->
                                <div class="panel panel-default">
                        
                                <div class="panel-body">
                                    <div class="col-md-6">
                                    <h3>Send Email</h3>
                                    <div id="mailformload">
                                        
                                    </div>
                                    
                                    <br />
                                        </div>
                                        
                                    
                                            </div>
                                        </div>
                                         <!-- End  Kitchen Sink -->
                                    </div>
                                </div>
                            <!--customer login records start -->
                                  <div class="tab-pane fade " id="records">
                                    <h4>Login Records</h4>
                                    <div class="col-md-12">
                          <!--   Kitchen Sink -->
                                            <div class="panel panel-default">
                                                  <div class="panel-body">
                                                        <div class="table-responsive">
                                                            <table class="table table-striped table-bordered table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th></th>
                                                                        <th>Name</th>
                                                                        <th>Time</th>
                                                                        <th>Date</th>
                                                                        <th>IP</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                    <td>1</td>
                                                                    <td>Kasun</td>
                                                                    <td>12.00pm</td>
                                                                    <td>2015/8/9</td>
                                                                    <td>129.2.4.1</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>  
                                            </div>
                                                 <!-- End  Kitchen Sink -->
                                            </div>
                                        </div>
                            <!--customer login records end -->
                                
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
    <script>
            
             $('#customMailForm').submit(function(){
                var mail = $('#emailTo').val();
                alert(mail);
                $.ajax({
                    url: 'CustomerMailController', 
                    type: 'POST',
                    dataType: 'json',
                    data: $('#customMailForm').serialize(),
                    success: function (data) {
                        if(data.chk){
                            alert('success');
                        }
                        else
                        {
                            alert('asdsdad');
                        }
                    }
                   
                    
  
                });
                return false;
            });
 
      
    </script>
   
    
    
    <script>
        $('#emailtab').click(function(){
          
            $('#mailformload').load('email.jsp');
        });
    </script>
</body>

</html>

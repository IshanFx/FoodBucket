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
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Change Slider Images
                        </div>
                        <div class="panel-body">
                            <form role="form" action="POST" enctype="multipart/formdata">

                                <div class="form-group col-md-4">
                                    <label>Slide Image 1</label>
                                    <div class="thumbnail">
                                        <img src="" style=" height:200px">
                                    </div>
                                    <input type="file" class="btn btn-info " name="slide1" />
                                </div>
                                <div class="col-md-4"></div>
                                <div class="form-group col-md-4">
                                    <label>Slide Image 2</label>
                                    <div class="thumbnail">
                                        <img src="" style=" height:200px">
                                    </div>
                                    <input type="file" class="btn btn-info" name="slide2"/>
                                </div> 
                                
                                <div class="form-group col-md-4">
                                    <label>Slide Image 3</label>
                                    <div class="thumbnail">
                                        <img src="" style=" height:200px">
                                    </div>
                                    <input type="file" class="btn btn-info " name="slide3"/>
                                </div>
                                <div class="col-md-4"></div>
                                <div class="form-group col-md-4">
                                    <label>Slide Image 4</label>
                                    <div class="thumbnail">
                                        <img src="" style=" height:200px">
                                    </div>
                                    <input type="file" class="btn btn-info " name="slide4"/>
                                </div>
                                  
                            </form> 
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
                <!-- /.row -->
                
                
                
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

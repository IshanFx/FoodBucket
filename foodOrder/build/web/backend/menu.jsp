<%-- 
    Document   : menu
    Created on : Feb 8, 2015, 8:47:43 AM
    Author     : IshanFX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">FoodBucket </span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Hi! FoodBucket</a>
            </div>
            <!-- Top Menu Items -->
   
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="index.jsp" id="dash"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="order.jsp"><i class="fa fa-fw fa-shopping-cart"></i> Order</a>
                    </li>
                    <li>
                        <a href="food.jsp"><i class="fa fa-fw fa-birthday-cake"></i> Foods</a>
                    </li>
                    <li>
                        <a href="customer.jsp"><i class="fa fa-fw fa-user"></i> Customer</a>
                    </li>
                    
                    <li>
                        <a href="report.jsp"><i class="fa fa-fw fa-edit"></i> Reports</a>
                    </li>
                    

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </body>
</html>

<%-- 
    Document   : navbar2
    Created on : Feb 1, 2015, 2:25:42 PM
    Author     : Suresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .span3-my {
   
    margin-left: -75px!important;
}
.navbar{
    z-index: 6000;
}
.navbar .nav {
    
    margin: 0px 160px 0px 0px !important;
}

#headerSection:hover {
    
}


li a:hover{
 color: #000;
 border-bottom: 2px solid red;
}

.topnavigation a{
    font-size: 10px;
    float:right;
}
.topnavigation a:hover{
    color: grey;
    border: none;
}
</style>

<div id="headerSection">
    <div class="nav-collapse right" style="margin-left: 60%;">
                <ul class="nav topnavigation">
                                    <li><a href="order.jsp" style="border:1px solid gray; background-color:white; border-radius: 15px;">Cart <span class="badge badge-info ">&nbsp; 8</span></a></li>
                                    <li><a href="account.jsp">Account</a></li>
                                    
                                    <li><a href="#feedbackModel" data-toggle="modal">FeedBack</a></li>
                                    <li><a class="btn btn-info" data-toggle="modal" href="#myModal" style="color:white;">Sign In</a></li>
                                    <li><a class="btn btn-danger" href="#logout" style="color:white;">Logout</a></li>
                </ul>
     </div>
    
	<div class="container">
            
            <div class="span3-my">
                
                <h2 class="cntr"><i class="icon-phone-sign"></i> 450-635-5236</h2>
               
                
            </div>
            
           
            
          
            <div class="navbar" >
			<div class="nav-collapse left">
				<ul class="nav" style="padding-bottom:5px;">
					<li class="active"><a href="index.jsp">Home</a></li>
                                        <li><a href="menu.jsp">Menu</a></li>
                                        <li><a href="myres.jsp">My Recipe</a></l>				
                                        <li><a href="about.jsp">about us</a></li>
					<li><a href="contact.jsp">contact us</a></li>                                        
				</ul>
			</div>
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
            </div>
	</div>
	</div>
<%@include file="feedbackmodel.jsp" %>
<%@include file="login.jsp" %>
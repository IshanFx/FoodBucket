<%-- 
    Document   : navbar2
    Created on : Feb 1, 2015, 2:25:42 PM
    Author     : Suresh
--%>

<%@page import="java.util.ArrayList"%>
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


.mainmenu li a:hover{
 color: #000;
 border-bottom: 2px solid red;
}
.topnavigation{
    padding: 0px;
}
.topnavigation a{
    font-size: 10px;
    float:right;
}
.topnavigation a:hover{
    color: grey;
    border: none;
}
.mainmenu{
    margin-top: -40px;
  
}
.foodmenu li{   
    padding: 0px 20px 0px 20px;
}

.foodmenu li a{
    color:white;
}

.alr{left: 225px;position: relative;}

</style>

    <%String username="SIGN IN"; %>
                
<%
    Cookie[] cookies = request.getCookies();       
    if(cookies!=null)
    {
        for(int i = 0; i < cookies.length; i++) 
        { 
            Cookie c = cookies[i];
            if ("username".equals(c.getName()))
            {                      
             username=(String)c.getValue();
            }
            else
            {
                 if(session.getAttribute("username")!=null)
                {
                username=(String)session.getAttribute("username"); 
                }
                else
                {
                username="SIGN IN";
                }
            }
        } 
    }
    else
    {
        username="SIGN IN";
    }
%>

<% HttpSession see = request.getSession();
    int cartitems=0;
    if(see.getAttribute("cart")!=null){
        ArrayList cartMyList =(ArrayList) see.getAttribute("cart");
        cartitems = cartMyList.size();
    }
%>
<div id="headerSection">
    <div class="nav-collapse right" style="margin-left: 60%;">
                <ul class="nav topnavigation">
                    <li><a href="order.jsp" class="btn-large btn-success" style="border:1px solid gray;color: white; font-size: 15px; background-color:white; border-radius: 15px;"><span class="fa-2x fa-shopping-cart">Cart&nbsp;&nbsp;&nbsp;</span> <span class="badge btn-primary" style="font-size:20"><%=cartitems %></span> </a></li>
                                    <li><a href="AccountS?parem1=<%=username%>">Account</a></li>
                                    
                                  <!--  <li><a href="#feedbackModel" data-toggle="modal">FeedBack</a></li>-->
                                    <li><a class="btn btn-info" data-toggle="modal" href="#myModal" style="color:white;"><%= username%></a></li>
                                    <li><a class="btn btn-danger" href="LogoutS" style="color:white;">Logout</a></li>
                </ul>
     </div>
                                    
     <div class="row mainmenu">
                <div class="navbar" >
                   
                            <div class="nav-collapse left">
                                    <ul class="nav" style="padding-bottom:2px;">
                                      
                                            <li class="active"><a href="index.jsp">Home</a></li>
                                            
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
	<div class="container">
            
            <div class="span3-my">
                
                <h2 class="cntr"><i class="icon-food"></i>Food Bucket  - 077 538 1437</h2>
               
                
            </div>
            <div class="navbar">
                <ul class="nav foodmenu">
                    <li  class="btn btn-warning" id="pastatab" ><a style="color: white" href="pasta.jsp" >Pasta</a></li>
                    <li class="btn btn-warning" id="pizzatab"><a style="color: white" href="pizza.jsp" >Pizza</a></li>
                    <li class="btn btn-warning" id="caketab"><a style="color: white" href="cake.jsp" >Cake</a></li>
                    <li class="btn btn-warning" id="sweetstab"><a style="color: white" href="sweets.jsp">Sweets</a></li>
                    <li>${msg}</li>
                </ul>
            </div>
            
           
            
          
            
	</div>
	</div>
<%@include file="feedbackmodel.jsp" %>
<%@include file="login.jsp" %>
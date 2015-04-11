<%-- 
    Document   : myCart
    Created on : Feb 20, 2015, 10:31:52 AM
    Author     : Suresh
--%>

<%@page import="com.foodbucket.foodModel.FoodBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>my cart</title>
    <%@include file="Import/head.jsp" %>
    <style>

        body{
             background-size: 2500px;
        }  
    </style>
    <body>
        <%@include file="Import/navbar2.jsp" %>

        <div class="container" style="margin-top: 200px;">
            <% 
                    Object session1 = request.getSession().getAttribute("cart");
                    ArrayList<FoodBean> lis = new ArrayList<FoodBean>();
                    lis = (ArrayList)session1;
            
            for(FoodBean list : lis) {    %>
            <form action="CartRemoveServlet" method="POST"> 
                   
            <div class="row" >
                <!--register model-->           
                <div class="span3" >
                    <form class="form-horizontal">
                        <div class="thumbnail">
                            <div class="blockDtl">
                                <a href="#"><img src="themes/images/portfolio/<%=list.getFoodstatus() %>" style="max-height: 150px;" alt=""></a>
                                <h4><%=list.getFoodId() %></h4>
                            </div>
                        </div>  
                </div> 
                <div class="span4">
                    <p><%=list.getFoodDesc() %> </p>
                </div>
                
                <div class=span3>
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Quantity</label>
                        <div class="controls">
                            <input class="element input-xlarge" type="number" id="inputEmail" placeholder="selectqty">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputPassword"></label>
                        <div class="controls">
                            <span class="badge badge-warning" style=" font-size: 20px;padding: 10px;">Rs: 20 /=</span>
                        </div>
                    </div>
                    
                    <div class="control-group left ">
                        <div class="controls">
                            <button class="btn btn-danger cntr " type="submit"><i class="icon-remove-sign"></i> Remove</button>      
                        </div>
                    </div>      
                    <input type="text" name="id" value="<%=list.getFoodId() %>" class="hidden" >
                    </form>
                </div>
            </div>
                
            </form>
               <% } %>     
         
            <div class="row ">
                <form >
                    <div class="control-group col-md-4 right">      
                        <div class="controls span3" style="float:right;" >
                            <button class="btn btn-info cntr input-medium" style=" font-size: 20px;"><i class="icon-money"></i> Pay</button> 
                        </div>
                    </div>
                </form>  
            </div>
        </div>





























        <div style="margin-top: 800px">
            <%@include file="Import/footer.jsp" %>
            <div>

                </body>
                </html>

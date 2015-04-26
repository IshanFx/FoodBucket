/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.User;

import com.food.managecls.DBConn;
import com.foodbucket.ClientModels.ClientMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nimesh Chathuranga
 */
public class ForgotPasswordS extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email="",msg="",pass="";        
        ResultSet set;
        PrintWriter out = response.getWriter();      
        try
        {
          Statement stmt = DBConn.dbConn().createStatement();    
          String sql="SELECT email,accpsw FROM account_tbl WHERE accuname='"+request.getParameter("user")+"'";
          set =stmt.executeQuery(sql);
          while(set.next())
          {
            email=set.getString(1);
            pass=set.getString(2);
          }
          
        if(email.equals(request.getParameter("email")))
        {
          ClientMail mail=new ClientMail();
          mail.sendEmailForgetPass(request.getParameter("user"),email,"Food Bucket Forgot password",pass);  
          response.sendRedirect("index.jsp");
        }
        else
        {
         msg="<span class=\"alert alert-danger msg\">Enter Correct Email!</span>";    
        }
        request.setAttribute("status",msg);
        request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
        }
        catch(Exception ex)
        {
            
        }
        
        
  }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

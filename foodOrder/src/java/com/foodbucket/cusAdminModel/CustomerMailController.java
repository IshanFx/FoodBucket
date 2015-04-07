/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.cusAdminModel;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IshanFX
 */
public class CustomerMailController extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out= response.getWriter();
        try{
        String type = request.getParameter("allcusmail");
        String mail = request.getParameter("mailAdd");
        String subject = request.getParameter("emailSubject");
        String body = request.getParameter("emailBody");
        CustomerBL cusMail = new CustomerBL();
        out.println(mail);
        out.println(type);
        out.println(subject);
        out.println(body);
        
        if(type==null){
             cusMail.sendEmail(mail, subject, body);
             response.sendRedirect("customer.jsp");
        }
        else{
            mail ="toAll";
            cusMail.sendEmail(mail, subject, body);
            response.sendRedirect("customer.jsp");
        }
        }
        catch(Exception ex){
           out.println(ex);
        }
        
       
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

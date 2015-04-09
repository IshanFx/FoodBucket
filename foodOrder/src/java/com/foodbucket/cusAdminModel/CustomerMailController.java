/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.cusAdminModel;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
        
        boolean chk = false;
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("mailAdd", mail);
        //response.setContentType("application/json");
       // response.setCharacterEncoding("UTF-8");
       
        if(type==null){
            out.println("success");
            cusMail.sendEmail(mail, subject, body);
            chk = true;
            //response.sendRedirect("customer.jsp");
        }
        else{
            out.println("success");
            mail ="toAll";
            cusMail.sendEmail(mail, subject, body);
         //   response.sendRedirect("email.jsp");
        }
        
        // request.setAttribute("as",chk);
       // map.put("checking", chk);
        //response.getWriter().write(new Gson().toJson(map));
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.ClientController;

import com.foodbucket.orderModel.SpecialOrderBL;
import com.foodbucket.orderModel.SpecialOrderBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SpecialOrderPlaceController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String cusname = request.getParameter("customername");
        String category = request.getParameter("categoryselect");
        String quantity = request.getParameter("quantity");
        String date  = request.getParameter("date");
        String address = request.getParameter("address");
        String receipe = request.getParameter("receipe");
            
        SpecialOrderBean specialOrder = new SpecialOrderBean();
        SpecialOrderBL specialOrderBL = new SpecialOrderBL();
        String message ="";
        
        specialOrder.setOrdCusName(cusname);
        specialOrder.setOrdFoodCategory(category);
        specialOrder.setOrdQuantity(quantity);
        specialOrder.setOrdDeliverDate(date);
        specialOrder.setOrdAddress(address);
        specialOrder.setOrdDesc(receipe);
        int check = specialOrderBL.addOrder(specialOrder);
        if(check==2 )
            message = "Send Success";
        else
            message = "Try again";
              
        out.println(message);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.adminservlet;

import com.foodbucket.orderModel.SpecialOrderBL;
import com.foodbucket.orderModel.SpecialOrderBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IshanFX
 */
public class FoodPriceAddServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      int id =Integer.parseInt( request.getParameter("modiSpecialId"));
      Double price = Double.parseDouble(request.getParameter("modiSpecialPrice"));
        SpecialOrderBean sOrder = new SpecialOrderBean();
        SpecialOrderBL sOrderBL = new SpecialOrderBL();
        sOrder.setOrdId(id);
        sOrder.setOrdTotal(price);
        
        int check = sOrderBL.changePrice(sOrder);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

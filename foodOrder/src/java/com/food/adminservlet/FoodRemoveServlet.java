/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.adminservlet;

import com.foodbucket.foodModel.FoodBL;
import com.foodbucket.foodModel.FoodBean;
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
public class FoodRemoveServlet extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        FoodBean food = new FoodBean();
        FoodBL foodBL =  new FoodBL();
        food.setFoodId(Integer.parseInt(request.getParameter("foodremoveid")));
        
        int chk = foodBL.removeFoodItems(food);
            out.println(chk);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

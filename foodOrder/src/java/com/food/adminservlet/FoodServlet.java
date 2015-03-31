/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.adminservlet;

import com.foodbucket.foodModel.FoodBL;
import com.foodbucket.foodModel.FoodBean;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Collections;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IshanFX
 */

@MultipartConfig
public class FoodServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }
    
    @Override
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          PrintWriter out = response.getWriter();
        try{
            
        FoodBean bkfood = new FoodBean();
        FoodBL foodbl = new FoodBL();
        
        bkfood.setFoodId(Integer.parseInt(request.getParameter("foodid")));
        bkfood.setFoodName(request.getParameter("foodname"));  
        bkfood.setFoodPrice(Double.parseDouble(request.getParameter("foodprice")));
        bkfood.setFoodCateg( request.getParameter("foodcate"));
        bkfood.setFoodDesc( request.getParameter("fooddesc"));
             
        bkfood.setFoodimage(request.getPart("foodimage"));
        bkfood.setFoodstatus("Y");
        
        int chk = foodbl.addFoodItems(bkfood);
          if(chk==1 ){
              response.sendRedirect("food.jsp");
          }
        }
        catch(Exception ex){
            out.println(ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.ClientController;

import com.foodbucket.foodModel.FoodBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IshanFX
 */
public class CartRemoveServlet extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      PrintWriter out = response.getWriter();
        
        try {
          
     HttpSession session = request.getSession();

     int code =Integer.parseInt(request.getParameter("id"));
     Object sess =  request.getSession().getAttribute("cart");
     ArrayList<FoodBean> list = new ArrayList<FoodBean>();
     list = (ArrayList)sess;
     int x =0;
     int removeitem = 0;
     for(FoodBean pro:list){
         if(pro.getFoodId()==code){ 
             removeitem = x;
             break;
         }
         x++;
     }
    FoodBean  p = list.remove(removeitem);
    response.sendRedirect("order.jsp");
    //out.println(p.getProduct_code());
        } 
        catch(Exception e) 
        {
            out.println(e);
        }
       
   
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

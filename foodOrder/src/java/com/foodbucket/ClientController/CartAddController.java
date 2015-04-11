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


public class CartAddController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    ArrayList<FoodBean> list = null;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String url = request.getHeader("Referer");
        out.print(url);
       String id = request.getParameter("price");
       String desc = request.getParameter("desc");
       String img = request.getParameter("image");
       
        try {
           
        HttpSession sess = request.getSession(true);
        
       
       if(  sess.getAttribute("cart")==null){
          list = new ArrayList<FoodBean>();
       }
        else{
           list =(ArrayList)sess.getAttribute("cart");
           }
        FoodBean products = new FoodBean();
       
        products.setFoodId(Integer.parseInt(id));
        products.setFoodDesc(desc);
        products.setFoodstatus(img);
        
        list.add(products);
        sess.setAttribute("cart", list);
        response.sendRedirect(url);
        } 
        catch (Exception e) {
            out.println(e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

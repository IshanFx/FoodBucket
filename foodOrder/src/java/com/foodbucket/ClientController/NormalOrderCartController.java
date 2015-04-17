/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.ClientController;

import com.foodbucket.foodModel.FoodBean;
import com.foodbucket.orderModel.NormalOrderBean;
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
public class NormalOrderCartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }
  ArrayList<NormalOrderBean> list = null;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean isAvailable = false;
        int removeIndex = -1;
        HttpSession myOrdersess = request.getSession();
        int id =Integer.parseInt(request.getParameter("set"));
        int quantity = Integer.parseInt(request.getParameter("myval"));
        
        if(myOrdersess.getAttribute("cartorder")==null){//create new list if not exist
            list = new ArrayList<NormalOrderBean>();
        }
        else{
            list =(ArrayList<NormalOrderBean>) myOrdersess.getAttribute("cartorder");//get valus to list if exist
            
        }
        NormalOrderBean order = new NormalOrderBean();
           
            for(NormalOrderBean or: list){
                if(or.getOrderFoodId()==id){
                    isAvailable =true;
                    removeIndex =  list.indexOf(or);
                }
            }
            if(isAvailable){
                list.remove(removeIndex);
            }
            
            order.setOrderFoodId(id);
            order.setOrderQuantity(quantity);
            list.add(order);
            myOrdersess.setAttribute("cartorder", list);
       
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

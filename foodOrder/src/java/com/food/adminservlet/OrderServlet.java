/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.adminservlet;

import com.foodbucket.orderModel.NormalOrderBL;
import com.foodbucket.orderModel.NormalOrderBean;
import com.foodbucket.orderModel.SpecialOrderBL;
import com.foodbucket.orderModel.SpecialOrderBean;
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

public class OrderServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        NormalOrderBean norderBean = new NormalOrderBean();
        SpecialOrderBean sorderBean = new SpecialOrderBean();
        NormalOrderBL norder = new NormalOrderBL();
        SpecialOrderBL sorder = new SpecialOrderBL();
        
        int chk = 0;
        try{
            
        if(!(request.getParameter("specialFood")==null)){
            out.println(request.getParameter("specialFood"));
            sorderBean.setOrdId(Integer.parseInt(request.getParameter("specialFood")));
            chk = sorder.changeOrderStatus(sorderBean);
            
            if (chk==1) {
               request.getSession().setAttribute("responceResult","syes");
               response.sendRedirect("order.jsp");
               
            }

            else {
               request.getSession().setAttribute("responceResult","sno");
               response.sendRedirect("order.jsp");
            }      
        }        
        
        else if(!(request.getParameter("normalFoodOrder")==null)){

                norderBean.setOrderId(Integer.parseInt(request.getParameter("normalFoodOrder")));
                norderBean.setOrderFoodId(Integer.parseInt(request.getParameter("normalfood")));

                chk = norder.changeOrderStatus(norderBean);
                
                if (chk ==1) {
                  request.getSession().setAttribute("responceResult","nyes");
                  response.sendRedirect("order.jsp");
                }
                
                else {
                   request.getSession().setAttribute("responceResult","nno");
                   response.sendRedirect("order.jsp");     
                }
            }
        }
        
        catch(Exception ex){
            out.println("errrrr");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
        
    }// </editor-fold>

}


package com.foodbucket.ClientController;

import com.foodbucket.orderModel.NormalOrderBL;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NormalOrderPlaceController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      HttpSession nOrderSession = request.getSession();
      PrintWriter out = response.getWriter();
      ArrayList cartList = new ArrayList();
      ArrayList quantityList = new ArrayList();
      int id =Integer.parseInt(nOrderSession.getAttribute("userid").toString());
      String address = request.getParameter("address");
      cartList =(ArrayList) nOrderSession.getAttribute("cart");
      quantityList =(ArrayList) nOrderSession.getAttribute("cartorder");
      NormalOrderBL order = new NormalOrderBL();
      int chk  = order.addOrder(cartList,quantityList,id,address);
      
      if(chk>0){
          
      nOrderSession.setAttribute("cart",null);
      nOrderSession.setAttribute("cartorder",null);
      
      }
      response.sendRedirect("index.jsp");
      
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

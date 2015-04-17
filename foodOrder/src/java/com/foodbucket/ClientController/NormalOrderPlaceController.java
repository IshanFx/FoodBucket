
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
      
      cartList =(ArrayList) nOrderSession.getAttribute("cart");
      quantityList =(ArrayList) nOrderSession.getAttribute("cartorder");
      NormalOrderBL order = new NormalOrderBL();
      int chk  = order.addOrder(cartList,quantityList);
      out.println(chk);
      
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

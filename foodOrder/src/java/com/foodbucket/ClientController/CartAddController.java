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

boolean isAvailable =false;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    ArrayList<FoodBean> list = null;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
        String url = request.getHeader("Referer");
        out.print(url);
       String id = request.getParameter("id");
       String desc = request.getParameter("desc");
       String img = request.getParameter("image");
       Double price =Double.parseDouble(request.getParameter("price"));
       String name  = request.getParameter("name");
     //  Integer extra1 =Integer.parseInt(request.getParameter("extra1"));
      // Integer extra2 =Integer.parseInt( request.getParameter("extra2"));
       
        
           
        HttpSession sess = request.getSession(true);
        
       
       if(  sess.getAttribute("cart")==null){
          list = new ArrayList<FoodBean>();
       }
        else{
           list =(ArrayList)sess.getAttribute("cart");
           int foodid = Integer.parseInt(id);
           for(FoodBean foo:list){
               
               if(foo.getFoodId()==foodid){
                   isAvailable = true;
               }
           }
           
           }
       if(!isAvailable){
//            if(extra1==null && extra1==null){
//                extra1 = 0;
//                extra2 = 0;
//            }
//            else if(extra1==null){
//                extra1 = 0;
//            }
//            else if(extra2==null){
//                extra2 = 0;
//            }

         //       price += extra2 + extra1;
                FoodBean products = new FoodBean();
                products.setFoodName(name);
                products.setFoodId(Integer.parseInt(id));
                products.setFoodDesc(desc);
                products.setFoodRetreiveImage(img);
                products.setFoodPrice(price);

                list.add(products);
                sess.setAttribute("cart", list);
           }
           isAvailable = false;
       
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

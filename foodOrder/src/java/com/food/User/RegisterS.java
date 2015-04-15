
package com.food.User;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nimesh Chathuranga
 */
public class RegisterS extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user=new User();
        int st=0;
        
           user.setCusfname(request.getParameter("fname"));
           user.setCuslname(request.getParameter("lname"));
           user.setCusaddress(request.getParameter("address"));
           user.setCustel(request.getParameter("tel"));
           user.setCusemail(request.getParameter("email"));
           user.setAccpsw(request.getParameter("conform"));
           
           try{
           st=user.SaveUser(user);
          if(st==1)
          {           
          HttpSession userSecssion=request.getSession();
          userSecssion.setAttribute("username",request.getParameter("fname"));
          Cookie userCookie=new Cookie("username",request.getParameter("fname"));
          userCookie.setMaxAge(100);
          response.addCookie(userCookie);
          response.sendRedirect("index.jsp");
          }
          else
          {
           response.sendRedirect("error.jsp");
          }
           }
           catch(Exception ex)
           {
               
           }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

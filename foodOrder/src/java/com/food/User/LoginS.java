
package com.food.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class LoginS extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
         response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("index.jsp").include(request, response);  
              
            HttpSession session=request.getSession();  
            session.invalidate(); 
            Cookie userCookie=new Cookie("username","");  
            userCookie.setMaxAge(0);  
            response.addCookie(userCookie);  
            response.sendRedirect("index.jsp");
            out.print("You are successfully logged out!");  
              
            out.close();    
        }
        catch(Exception ex){
            
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        User user=new User();
        boolean status;
        int st;
  
            out.print("login");
            user.setCusemail(request.getParameter("email"));
            user.setAccpsw(request.getParameter("pass"));
            String remember=request.getParameter("remember");        

        try {
            status=user.LogCheck(user);
       
            if(status==true)
            {
                HttpSession userSecssion=request.getSession();
                userSecssion.setAttribute("username",user.getCusfname());
                userSecssion.setAttribute("useremail",request.getParameter("email"));
                //userSecssion.setMaxInactiveInterval(20*60);
                if(remember==null)
                {
                  response.sendRedirect("index.jsp");  
                }
                else
                {
                Cookie userCookie=new Cookie("username",user.getCusfname());
                userCookie.setMaxAge(100);
                response.addCookie(userCookie);
                response.sendRedirect("index.jsp");
                }                
            }
            else
            {
                response.sendRedirect("error.jsp");
            }
            } catch (SQLException ex) {
            Logger.getLogger(LoginS.class.getName()).log(Level.SEVERE, null, ex);
        }
  
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


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


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginS</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginS at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        User user=new User();
        UserController uControl=new UserController();
        boolean status;
        
        user.setCusemail(request.getParameter("email"));
        user.setAccpsw(request.getParameter("pass"));
        String remember=request.getParameter("remember");        
        
        try 
        {
            status=uControl.LogCheck(user);
            
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
            
        } 
        catch (SQLException ex) 
        {
        out.println(ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

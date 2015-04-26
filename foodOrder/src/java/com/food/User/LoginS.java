
package com.food.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
         HttpSession userSecssion=request.getSession();
        ResultSet rst=null;
        int st;
        String adminE="admin@gmail.com";
        String adminP="admin123";
        String addr="",email="",psw="",uname="";
        int id=0;
             
            user.setCusemail(request.getParameter("email"));
            user.setAccpsw(request.getParameter("pass"));
            String remember=request.getParameter("remember");        

        try {
            rst=user.LogCheck(request.getParameter("email"));
            while(rst.next()){
                addr=rst.getString(1);
                id=rst.getInt(2);
                email=rst.getString(3);
                psw=rst.getString(4);
                uname=rst.getString(5);
            }
            if(adminE.equals(request.getParameter("email")) && adminP.equals(request.getParameter("pass")))
            {
                userSecssion.setAttribute("adminlogin",adminE );
                response.sendRedirect("backend/");
                 
            }
            else
            {
            if(psw.equals(request.getParameter("pass"))&& email.equals(request.getParameter("email")))
            {
               
                userSecssion.setAttribute("username",uname);
                userSecssion.setAttribute("useremail",email);
                userSecssion.setAttribute("userid",id);
                userSecssion.setAttribute("useraddress", addr);
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
                String msg="<span class=\"alert alert-danger msg alr\">Enter Valid Email & Password!</span>";
                request.setAttribute("msg",msg);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
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

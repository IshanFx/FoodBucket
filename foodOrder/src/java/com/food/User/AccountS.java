
package com.food.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nimesh Chathuranga
 */
public class AccountS extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user=new User();
        ResultSet set;
        PrintWriter out=response.getWriter();       
        set=user.GetAccountData(request.getParameter("parem1")); 
       request.setAttribute("result",set);
        request.getRequestDispatcher("account.jsp").forward(request, response);
        
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user=new User();
        int status=0;
        String msg;
        PrintWriter out=response.getWriter(); 
        if(request.getParameter("hidden")=="dashboard"){
        if(request.getParameter("hidden")=="SIGN IN"){
           response.sendRedirect("AccountS?parem1=<%=username%>");
        }
        else{
        user.setCusfname(request.getParameter("fname"));
        user.setCuslname(request.getParameter("uname"));
        user.setCusaddress(request.getParameter("address"));
        user.setCustel(request.getParameter("tel"));
        user.setCusemail(request.getParameter("email"));
          
        status=user.UpdateUser(user,request.getParameter("uname"));
        if(status==1){
           msg="<span class=\"alert alert-success msg\">Update Succesfull</span>"; 
        }
        else{
          msg="<span class=\"alert alert-danger msg\">Update Faild!</span>";  
        }
        request.setAttribute("meassge",msg);
        request.getRequestDispatcher("account.jsp").forward(request, response);
        }
        }
        else
        {
            String password;
            if(request.getParameter("hidden")=="SIGN IN"){
                response.sendRedirect("AccountS?parem1=<%=username%>");
            }
            else{                           
                String newpass=request.getParameter("newpass");
                
                password=user.GetPassword(request.getParameter("hidden"));
                if(password.equals(request.getParameter("currpass")))
                {
                    try {
                        status=user.PassUpdate(newpass,request.getParameter("hidden"));
                    } catch (SQLException ex) {
                        Logger.getLogger(AccountS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    if(status==1){
                        msg="<span class=\"alert alert-success msg\">Update Succesfull</span>"; 
                    }
                    else
                    {
                        msg="<span class=\"alert alert-danger msg\">Update Faild!</span>";  
                    }
                    request.setAttribute("meassge",msg);
                    request.getRequestDispatcher("account.jsp").forward(request, response);
                }
                else
                {
                    msg="<span class=\"alert alert-danger msg\">Error Update Password!</span>";
                   request.setAttribute("meassge",msg);
                   request.getRequestDispatcher("account.jsp").forward(request, response);
                }
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

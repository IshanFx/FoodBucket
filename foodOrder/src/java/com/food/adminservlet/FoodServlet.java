/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.adminservlet;

import com.foodbucket.foodModel.FoodBL;
import com.foodbucket.foodModel.FoodBean;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Collections;
import java.util.ListIterator;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.io.output.*;
/**
 *
 * @author IshanFX
 */

public class FoodServlet extends HttpServlet {
    private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 200 * 1024;
   private int maxMemSize = 4 * 1024;
   private File file ;
   String fileName="";
    public void init( ){
      // Get the file location where it would be stored.
      filePath = 
             getServletContext().getInitParameter("file-upload"); 
   }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }
    
    @Override
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int foodid=0;
       String foodName ="";
       String fooddesc = "";
       Double foodprice = 0.0;
       String foodCategory = "";
          PrintWriter out = response.getWriter();
       isMultipart = ServletFileUpload.isMultipartContent(request);
       FoodBean bkfood = new FoodBean();
        FoodBL foodbl = new FoodBL();
          try{ 
        
      response.setContentType("text/html");
      //java.io.PrintWriter out = response.getWriter( );
     
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );

    
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);
	
      // Process the uploaded file items
      Iterator i = fileItems.iterator();

      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      while ( i.hasNext () ) 
      {
          
         FileItem fi = (FileItem)i.next();
         if(fi.isFormField()){
         if(fi.getFieldName().equals("foodid")){
            foodid =Integer.parseInt(fi.getString());
         }
         if(fi.getFieldName().equals("foodname")){
            foodName =fi.getString();
         }
         if(fi.getFieldName().equals("fooddesc")){
            fooddesc = fi.getString();
         }
         if(fi.getFieldName().equals("foodprice")){
            foodprice = Double.parseDouble(fi.getString());
         }
         if(fi.getFieldName().equals("foodcate")){
            foodCategory = fi.getString();
         }
         
         out.println("<br>");
         }
         if ( !fi.isFormField () )	
         {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
             fileName = fi.getName();
            String contentType = fi.getContentType();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
               file = new File( filePath + 
               fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
               file = new File( filePath + 
               fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
            out.println("Uploaded Filename: " + fileName + "<br>");
         }
      }
        
     out.println(fileName);
        
        bkfood.setFoodId(foodid);
        bkfood.setFoodName(foodName);  
        bkfood.setFoodPrice(foodprice);
        bkfood.setFoodCateg( foodCategory);
        bkfood.setFoodDesc(fooddesc);
        bkfood.setFoodRetreiveImage(fileName);
       // bkfood.setFoodimage(request.getPart("foodimage"));
        bkfood.setFoodstatus("Y");
        
        int chk = foodbl.addFoodItems(bkfood);
        out.println(chk);
        
          if(chk==1 ){
              response.sendRedirect("food.jsp");
          }
        
        }
        catch(Exception ex){
            out.println(ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

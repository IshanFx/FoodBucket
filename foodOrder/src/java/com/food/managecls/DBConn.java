/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.managecls;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author IshanFX
 */
public class DBConn {

       PreparedStatement pstmt;
    static Connection conn = null;
    public static Connection dbConn(){
     
       
        try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddb", "root", "");
        
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
        }
        return conn;
    
    } 

    
    public int executeQuery(String sql){
        int x=0;
        try{
        pstmt = conn.prepareStatement(sql);
        x =  pstmt.executeUpdate();
        }
        catch(Exception ex){
           System.out.println(ex);
        }
        return x;
    }
    
    public ResultSet selectQuery(String sql){
     ResultSet set = null;
     try{
     pstmt = conn.prepareStatement(sql);
        set =  pstmt.executeQuery();
        }
        catch(Exception ex){
            
        }
        return set;
    } 
    
    public  int Getlastid(String clm,String tbl)
    {
        String sql;
       int maxid = 0;
       ResultSet rs=null;
       
        try{                   
           pstmt=conn.prepareStatement("select max("+clm+") from "+tbl+"");
           rs=pstmt.executeQuery(); 
           
           while(rs.next()){
               maxid=rs.getInt(1);
           }          
            conn.close();
        }
        catch(Exception ex){
             
        }
        
        return maxid+1;   
    }
}

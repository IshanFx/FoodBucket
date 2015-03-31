/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.reportModel;

import com.food.managecls.DBConn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author IshanFX
 */
public class Report {
   
    private Statement stmt;
    private PreparedStatement pstmt;
    private ResultSet rst;
    private double normalIncome;
    private double specialOrder;
    private double monthlyIncome;
    HashMap<String,String> table;
    
    
    public double getAnnualIncome(){
        
        String sql1 = "SELECT SUM(ordtotal) FROM normalord_tbl";
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql1);
            while(rst.next()){
                normalIncome = rst.getDouble(1);
            }
            String sql2 = "SELECT SUM(ordtotal) FROM specialord_tbl";
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql2);
            while(rst.next()){
                specialOrder = rst.getDouble(1);
            }
                       
        } catch (SQLException ex) {
            Logger.getLogger(Report.class.getName()).log(Level.SEVERE, null, ex);
        }       
        return normalIncome+specialOrder; 
    }
    
    public double getCurrentMonthIncome(){
    
        String sql1 = "SELECT SUM(no.ordtotal) FROM normalord_tbl no,order_tbl o WHERE no.orderid=o.orderid AND o.ordermonth=2";
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql1);
            while(rst.next()){
                monthlyIncome = rst.getDouble(1);
            }
            
            String sql2 = "SELECT SUM(so.ordtotal) FROM specialord_tbl so,order_tbl o WHERE o.orderid=so.orderid AND o.ordermonth=2";
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql2);
            while(rst.next()){
                monthlyIncome += rst.getDouble(1);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Report.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return monthlyIncome; 
    }
    
    public HashMap getAllMonthIncome(){
        String sql = "SELECT SUM(n.ordtotal),o.ordermonth FROM normalord_tbl n JOIN order_tbl o ON o.orderid=n.orderid Group by o.ordermonth ORDER BY o.ordermonth";
        
        table = new HashMap<String,String>();       
        int rowCount=0;
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql);
            while(rst.next()){
                if(rst.getInt(2)==1){
                    table.put("January" ,rst.getString(1));
                }
                if(rst.getInt(2)==2){
                    table.put("February",rst.getString(1));
                }
                if(rst.getInt(2)==3){
                    table.put("March",rst.getString(1));
                }
                if(rst.getInt(2)==4){
                    table.put("April",rst.getString(1));
                }
                if(rst.getInt(2)==5){
                    table.put("May",rst.getString(1));
                }
                if(rst.getInt(2)==6){
                    table.put("June",rst.getString(1));
                }
                if(rst.getInt(2)==7){
                    table.put("July",rst.getString(1));
                }
                if(rst.getInt(2)==8){
                    table.put("August",rst.getString(1));
                }
                if(rst.getInt(2)==9){
                    table.put("September",rst.getString(1));
                }
                if(rst.getInt(2)==10){
                    table.put("October",rst.getString(1));
                }
                if(rst.getInt(2)==11){
                    table.put("November",rst.getString(1));
                }
                if(rst.getInt(2)==12){
                    table.put("December",rst.getString(1));
                }
            }
        } 
        catch (SQLException ex) {
            Logger.getLogger(Report.class.getName()).log(Level.SEVERE, null, ex);
        }
        return table;
    }
    
    public ResultSet getBestSellingItems(){
        ResultSet rst = null;
        String sql = "SELECT f.foodname,f.foodcategory,SUM(no.ordquantity),SUM(no.ordTotal),COUNT(*)" +
                     "FROM food_tbl f JOIN normalord_tbl no ON f.foodid=no.foodid " +
                     "GROUP BY f.foodname ORDER BY COUNT(*) DESC";
        try {
           rst = new DBConn().selectQuery(sql);
        }        
        catch (Exception e) {
            
        }
        return rst;
    }
    
   
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

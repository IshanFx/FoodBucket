/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.reportModel;

import com.food.managecls.DBConn;
import com.foodbucket.orderModel.NormalOrderBean;
import com.foodbucket.orderModel.SpecialOrderBean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

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
    
    
    public double getAnnualIncome(int year){
        
        String sql1 = "SELECT SUM(n.ordtotal) FROM normalord_tbl n JOIN order_tbl o ON n.orderid=o.orderid WHERE o.orderyear='"+year+"' ";
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql1);
            while(rst.next()){
                normalIncome = rst.getDouble(1);
            }
            String sql2 = "SELECT SUM(s.ordtotal) FROM specialord_tbl s JOIN order_tbl o ON s.orderid=o.orderid WHERE o.orderyear='"+year+"'";
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
    
    public double getCurrentMonthIncome(int month,int year){
    
        String sql1 = "SELECT SUM(n.ordtotal) FROM normalord_tbl n JOIN order_tbl o ON n.orderid=o.orderid WHERE o.orderyear='"+year+"' AND o.ordermonth='"+month+"' ";
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql1);
            while(rst.next()){
                monthlyIncome = rst.getDouble(1);
            }
            
            String sql2 = "SELECT SUM(so.ordtotal) FROM specialord_tbl so JOIN order_tbl o ON o.orderid=so.orderid WHERE o.orderyear='"+year+"' AND o.ordermonth='"+month+"'";
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
    
    public HashMap getAllMonthIncome(int year){
        String sql = "SELECT SUM(n.ordtotal),o.ordermonth FROM normalord_tbl n JOIN order_tbl o ON o.orderid=n.orderid WHERE o.orderyear='"+year+"' Group by o.ordermonth";
        String sql2 ="SELECT SUM(s.ordtotal),o.ordermonth FROM specialord_tbl s JOIN order_tbl o ON o.orderid=s.orderid WHERE o.orderyear='"+year+"' Group by o.ordermonth";
        
        table = new HashMap<String,String>(); 
        table.put("January" ,"0");
        table.put("February","0");
        table.put("March","0");
        table.put("April","0");
        table.put("May","0");
        table.put("June","0");
        table.put("July","0"); 
        table.put("August","0");
        table.put("September","0");
        table.put("October","0");
        table.put("November","0");
        table.put("December","0");
        
        int rowCount=0;
        try {
            stmt = DBConn.dbConn().createStatement();
            rst =stmt.executeQuery(sql);
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
            
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql2);
            Double currentTotal = 0.0;
            while(rst.next()){
                if(rst.getInt(2)==1){
                    currentTotal =Double.parseDouble(table.get("January")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("January",currentTotal.toString() );
                }
                if(rst.getInt(2)==2){
                    currentTotal =Double.parseDouble(table.get("February")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("February",currentTotal.toString() );
                }
                if(rst.getInt(2)==3){
                    currentTotal =Double.parseDouble(table.get("March")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("March",currentTotal.toString() );
                }
                if(rst.getInt(2)==4){
                    currentTotal =Double.parseDouble(table.get("April"));  
                     currentTotal+= rst.getDouble(1);
                    table.put("April",currentTotal.toString());
                }
                 if(rst.getInt(2)==5){
                    currentTotal =Double.parseDouble(table.get("May")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("May",currentTotal.toString() );
                }
                  if(rst.getInt(2)==6){
                    currentTotal =Double.parseDouble(table.get("June")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("June",currentTotal.toString() );
                }
                   if(rst.getInt(2)==7){
                    currentTotal =Double.parseDouble(table.get("July")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("July",currentTotal.toString() );
                }
                    if(rst.getInt(2)==8){
                    currentTotal =Double.parseDouble(table.get("August")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("August",currentTotal.toString() );
                }
                     if(rst.getInt(2)==9){
                    currentTotal =Double.parseDouble(table.get("September")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("September",currentTotal.toString() );
                }
                      if(rst.getInt(2)==10){
                    currentTotal =Double.parseDouble(table.get("October")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("October",currentTotal.toString() );
                }
                       if(rst.getInt(2)==11){
                    currentTotal =Double.parseDouble(table.get("November")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("November",currentTotal.toString() );
                }
                        if(rst.getInt(2)==12){
                    currentTotal =Double.parseDouble(table.get("December")); 
                    currentTotal+= rst.getDouble(1);
                    table.put("December",currentTotal.toString() );
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
    
    //select order year to select from drop down
    public ArrayList selectDistinctYear(){
        String sql = "SELECT DISTINCT ORDERYEAR FROM ORDER_TBL";
        ArrayList list = new ArrayList();
        ResultSet rst = null;
        try {
            rst = new DBConn().selectQuery(sql);
            while(rst.next()){
                list.add(rst.getString(1));
            }
           Collections.sort(list);
        } 
        catch (Exception e) {
        }
        return list;
    }
    
    //Annual income report
    
    public Map<Integer,Double> getAnnualIncomeReport(){
            String sql1 = "SELECT o.orderyear,SUM(n.ordtotal) FROM normalord_tbl n JOIN order_tbl o ON n.orderid=o.orderid GROUP BY o.orderyear";
            String sql2 = "SELECT o.orderyear,SUM(s.ordTotal) FROM specialord_tbl s JOIN order_tbl o ON s.orderid=o.orderid GROUP BY o.orderyear";
            
            HashMap<Integer,Double> incomeReportTable = new HashMap<Integer, Double>();
            Map<Integer,Double> sortList = null;
             try         
            {
            
            ResultSet rst = new DBConn().selectQuery(sql1);
          
            while(rst.next()){
              Integer x =rst.getInt(1);
              Double y = rst.getDouble(2);
               incomeReportTable.put(x,y);//add income and year to hashttable
            }
           
            rst = new DBConn().selectQuery(sql2);
            
            
            while(rst.next()){
                if(incomeReportTable.containsKey(rst.getInt(1))){//check the key is exist
                    Double total  =  incomeReportTable.get(rst.getInt(1));//if key exist get key and add current valus 
                    total +=rst.getDouble(2) ;
                    incomeReportTable.put(rst.getInt(1), total);//put total to map
                    
                }
                else{
                    incomeReportTable.put(rst.getInt(1),rst.getDouble(2));
                }
            }
            
            sortList = new TreeMap<Integer,Double>(incomeReportTable);//sort the map using key
            
            
        } 
        catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return sortList;
    }
    public int getSpecialorderCount(){
     int sOrderCount= 0;
     String sql2 = "select count(*) FROM specialord_tbl WHERE ordstate='P'";
         try {    
            rst = new DBConn().selectQuery(sql2);
       
            while(rst.next()){
                sOrderCount = rst.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Report.class.getName()).log(Level.SEVERE, null, ex);
        }
          return sOrderCount;             
    }
    
    public int getNormalOrderCount(){
     int nOrderCount=0;
    
            String sql1 = "select count(*) FROM normalord_tbl WHERE orderstate='P' ";
        try {
          
            rst =new DBConn().selectQuery(sql1);
            while(rst.next()){
                nOrderCount = rst.getInt(1);
            }
            
        } 
        catch (SQLException ex) {
            Logger.getLogger(Report.class.getName()).log(Level.SEVERE, null, ex);
        }       
     
                return nOrderCount;
    }
   
    
    public ArrayList getTopOrderMonth(int month,int year){
        ArrayList list = new ArrayList();
        ResultSet rst = null;
        
        String sql = "SELECT f.foodname,SUM(no.ordquantity),SUM(no.ordtotal) FROM normalord_tbl no JOIN food_tbl f ON f.foodid=no.foodid JOIN order_tbl o ON o.orderid=no.orderid  WHERE o.ordermonth='"+month+"' AND o.orderyear='"+year+"' GROUP BY f.foodname ORDER BY SUM(no.ordquantity) DESC LIMIT 10";
        try {
            rst = new DBConn().selectQuery(sql);
            while (rst.next()) {
                NormalOrderBean norder = new NormalOrderBean();
                norder.setOrderFood(rst.getString(1));
                norder.setOrderQuantity(rst.getInt(2));
                norder.setOrderPrice(rst.getDouble(3));
                list.add(norder);
            }
        } 
        catch (Exception e) {
            
        }
        
        return list;
    }
    public ArrayList getTopOrderYear(int year){
        ArrayList list = new ArrayList();
        ResultSet rst = null;
        
        String sql = "SELECT f.foodname,SUM(no.ordquantity),SUM(no.ordtotal) FROM normalord_tbl no JOIN food_tbl f ON f.foodid=no.foodid JOIN order_tbl o ON o.orderid=no.orderid  WHERE o.orderyear='"+year+"' GROUP BY f.foodname ORDER BY SUM(no.ordquantity) DESC LIMIT 10";
        try {
            rst = new DBConn().selectQuery(sql);
            while (rst.next()) {
                NormalOrderBean norder = new NormalOrderBean();
                norder.setOrderFood(rst.getString(1));
                norder.setOrderQuantity(rst.getInt(2));
                norder.setOrderPrice(rst.getDouble(3));
                list.add(norder);
            }
        } 
        catch (Exception e) {
            
        }
        
        return list;
    }
    
    
    
    
    
    
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

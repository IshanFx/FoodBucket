/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.orderModel;

import com.food.managecls.DBConn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author IshanFX
 */
public class SpecialOrderBL  {
    private PreparedStatement pstmt;
    private Statement stmt;
    private ResultSet rst;
    private int month;
    private int day;
    private int year;
    private String time;

    public SpecialOrderBL() {
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault()); 
            month= calendar.get(Calendar.MONTH) + 1;
            Calendar cal = Calendar.getInstance();
           
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
            
            year = calendar.get(Calendar.YEAR);
            day = calendar.get(Calendar.DATE);
            time = sdf.format(cal.getTime());
    }
   

    public int addOrder(SpecialOrderBean order) {
       int chk = 0;
      int maxId = getLastOrderId();
      maxId++;
      String sql1 = "INSERT INTO order_tbl VALUES('"+maxId+"','"+year+"','"+month+"','"+day+"','"+time+"','1')"; //nee to change account id
      // String sql1 = "INSERT INTO order_tbl VALUES(8,2015,4,12,12.4,1)";
      // String sql2 = "INSERT INTO specialord_tbl VALUES('sss','sss','ddd','12','wwww','12',8,'P','0.0')";
       String sql2 = "INSERT INTO specialord_tbl VALUES('"+order.getOrdCusName()+"','"+order.getOrdAddress()+"','"+order.getOrdFoodCategory()+"','"+order.getOrdDeliverDate()+"','"+order.getOrdDesc()+"','"+order.getOrdQuantity()+"','"+maxId+"','P','0.0')";
        try {
            stmt = DBConn.dbConn().createStatement();
            chk = stmt.executeUpdate(sql1);
            
            stmt = DBConn.dbConn().createStatement();
            chk +=  stmt.executeUpdate(sql2);
        } catch (Exception e) {
        }
        return chk;
    }
    
    public int getLastOrderId(){
        int Maxid=0;
        String sql = "SELECT MAX(orderid) FROM order_tbl";

        try {
             stmt = DBConn.dbConn().createStatement();            
             ResultSet rst = stmt.executeQuery(sql);
            while(rst.next()){
                Maxid = rst.getInt(1);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(SpecialOrderBL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Maxid;
    }

    public ResultSet getOrderDetails(){
       ResultSet rst = null;
       String sql = "SELECT o.orderid,so.ordfoodcate,so.orddesc,so.orderquantity,so.orddeliverdate,so.ordercusname,so.ordaddress,o.orderyear,o.ordermonth,o.orderday,o.ordertime,so.ordstate,so.ordTotal FROM order_tbl o,specialord_tbl so WHERE o.orderid=so.orderid AND so.ordstate='P' ";
       try {
            rst = new DBConn().selectQuery(sql);
        }
       catch (Exception e) {
        }
       return rst;
    }
     

    public int changeOrderStatus(SpecialOrderBean order){
         int chk = 0;
        String sql = "UPDATE specialord_tbl set ordstate='D' WHERE orderid='"+order.getOrdId()+"'";
        try {
             chk = new DBConn().executeQuery(sql); 
        } catch (Exception e) {
        }
        return chk ;
    }
    
    public int changePrice(SpecialOrderBean order){
        int chk = 0;
        String sql = "UPDATE specialord_tbl set ordtotal='"+order.getOrdTotal()+"' WHERE orderid='"+order.getOrdId()+"'";
        try {
             chk = new DBConn().executeQuery(sql); 
        } catch (Exception e) {
        }
        return chk ;
    }
    
    public ResultSet getDeliverOrderDetails(){
        ResultSet rst = null;
        String sql = "SELECT o.orderid,so.ordfoodcate,so.orddesc,so.orderquantity,so.orddeliverdate,so.ordercusname,so.ordaddress,o.orderyear,o.ordermonth,o.orderday,o.ordertime,so.ordstate,so.ordTotal FROM order_tbl o,specialord_tbl so WHERE o.orderid=so.orderid AND so.ordstate='D' ";
       try {
            rst = new DBConn().selectQuery(sql);
        }
       catch (Exception e) {
        }
       return rst;
    }
    
    
    public int getNewOrderCount(){
        ResultSet set =null;
        int count = 0;
        String sql = "SELECT count(*) FROM specialord_tbl WHERE ordstate='P'";
        try {
            rst  = new DBConn().selectQuery(sql);
            while (rst.next()) {
                 count = rst.getInt(1);
            }     
        } 
        catch (Exception e) {
        }
        return count;
    }
    
    
}

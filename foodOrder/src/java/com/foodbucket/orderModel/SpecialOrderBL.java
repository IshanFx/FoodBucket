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
    
    

    public void addOrder() {
       
    
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

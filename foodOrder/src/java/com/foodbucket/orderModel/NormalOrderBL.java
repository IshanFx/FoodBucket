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
public class NormalOrderBL {
    
    public PreparedStatement pstmt;
    public Statement stmt;

 

    public void addOrder() {
        
    }
    
    public ResultSet getOrderDetails(){
        
        ResultSet rst = null;
        
        String sql = "SELECT o.orderid,f.foodcategory,f.foodname,no.ordquantity,no.orderextra,no.orddeliverdate,no.orderaddress,o.orderyear,o.ordermonth,o.orderday,o.ordertime,no.orderstate,f.foodid FROM food_tbl f,normalord_tbl no,order_tbl o WHERE o.orderid=no.orderid AND no.foodid=f.foodid AND no.orderstate='P' ";
        try {
            rst = new DBConn().selectQuery(sql);
        } 
        catch (Exception e) {
            
        }

        return rst;
    }

    public int changeOrderStatus(NormalOrderBean order) {
        int chk = 0;
        
        String sql = "UPDATE normalord_tbl set orderstate='D' WHERE orderid='"+order.getOrderId()+"' AND foodid='"+order.getOrderFoodId()+"'";
        try {
            chk =new DBConn().executeQuery(sql); 
        } 
        catch (Exception e) {
            
        }
        return chk ;
    
    
    }
    
    public ResultSet getDeliverOrderDetails(){
        ResultSet rst = null;
        String sql = "SELECT o.orderid,f.foodcategory,f.foodname,no.ordquantity,no.orderextra,no.orddeliverdate,no.orderaddress,o.orderyear,o.ordermonth,o.orderday,o.ordertime,no.orderstate,f.foodid FROM food_tbl f,normalord_tbl no,order_tbl o WHERE o.orderid=no.orderid AND no.foodid=f.foodid AND no.orderstate='D'";
        try {
            rst = new DBConn().selectQuery(sql);
        } 
        catch (Exception e) {
            
        }
        return rst;
    
    }
    
    public int getNewOrderCount(){
        ResultSet rst = null;
        int count = 0;
        String sql  = "SELECT COUNT(*) FROM specialord_tbl WHERE ordstate='P' ";
        try {
           rst = new DBConn().selectQuery(sql);
           while (rst.next()) {
                 count = rst.getInt(1);
            }
        } 
        catch (Exception e) {
        }
        return count;
    }
    

}

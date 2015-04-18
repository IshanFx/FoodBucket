/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.orderModel;

import com.food.managecls.DBConn;
import com.foodbucket.foodModel.FoodBean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author IshanFX
 */
public class NormalOrderBL {
    
    public PreparedStatement pstmt;
    public Statement stmt;
    int month;
    int year;
    int day;
    String time;
    String myDate;
    public NormalOrderBL(){
         Calendar calendar = Calendar.getInstance(TimeZone.getDefault()); 
            month= calendar.get(Calendar.MONTH) + 1;
            Calendar cal = Calendar.getInstance();
           
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
            
            year = calendar.get(Calendar.YEAR);
            day = calendar.get(Calendar.DATE);
            time = sdf.format(cal.getTime());
             myDate = day+"/"+month+"/"+year;
    }

    public int addOrder(ArrayList<FoodBean> cartList,ArrayList<NormalOrderBean> quantityList,int userid,String address) {
           int chk = 0;
        try {
         
        int maxId = getLastOrderId()+1;
        Double total = 0.0;
        String sql1 = "INSERT INTO order_tbl VALUES('"+maxId+"','"+year+"','"+month+"','"+day+"','"+time+"','"+userid+"')";
        stmt = DBConn.dbConn().createStatement();
        chk = stmt.executeUpdate(sql1);
        for(FoodBean food : cartList){
           int quantity = 1;
           int foodId =  food.getFoodId();
           Double price = food.getFoodPrice();
           String name = food.getFoodName();
           for(NormalOrderBean order :quantityList){
               if(order.getOrderFoodId()==foodId){
                   quantity = order.getOrderQuantity();
               }
           }
           total = price * quantity;
           String sql2 = "INSERT INTO normalord_tbl VALUES('"+quantity+"','"+total+"','P','ssss','"+maxId+"','"+foodId+"','"+address+"','1/1/1')";
            stmt = DBConn.dbConn().createStatement();
            chk += stmt.executeUpdate(sql2);       
        }
       
        } 
        catch (Exception e) {
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
        
        String sql = "SELECT o.orderid,f.foodcategory,f.foodname,no.ordquantity,no.orderextra,no.orddeliverdate,no.orderaddress,o.orderyear,o.ordermonth,o.orderday,o.ordertime,no.orderstate,f.foodid FROM food_tbl f,normalord_tbl no,order_tbl o WHERE o.orderid=no.orderid AND no.foodid=f.foodid AND no.orderstate='P' ORDER BY no.orderid ";
        try {
            rst = new DBConn().selectQuery(sql);
        } 
        catch (Exception e) {
            
        }

        return rst;
    }

    public int changeOrderStatus(NormalOrderBean order) {
        int chk = 0;
        NormalOrderBL no  = new NormalOrderBL();
        String sql = "UPDATE normalord_tbl set orderstate='D',orddeliverdate='"+myDate+"' WHERE orderid='"+order.getOrderId()+"' AND foodid='"+order.getOrderFoodId()+"'";
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

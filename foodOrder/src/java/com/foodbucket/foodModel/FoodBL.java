/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.foodModel;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import com.food.managecls.DBConn;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Part;
/**
 *
 * @author IshanFX
 */
public class FoodBL extends FoodBean implements FoodManage {

    private ResultSet rst;
    private PreparedStatement pstmt;
    private Statement stmt;
    
    public FoodBL() {
        
    }
    

    @Override
    public int addFoodItems(FoodBean food) {
        int chk = 0;
         try {
             InputStream stream = food.getFoodimage().getInputStream();
        String sql= "INSERT INTO food_tbl(foodid,foodname,foodprice,fooddesc,foodstatus,foodcategory,foodimg) VALUES('"+food.getFoodId()+"','"+food.getFoodName()+"','"+food.getFoodPrice()+"','"+food.getFoodDesc()+"','"+ food.getFoodstatus()+"','"+food. getFoodCateg()+"','"+stream+"')";
            chk = new DBConn().executeQuery(sql);          
        } catch (Exception ex) {
            Logger.getLogger(FoodBL.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return chk;
    }

    @Override
    public int modifyFoodItems(FoodBean food) {
        int chk = 0;
        String sql = "UPDATE food_tbl set fooddesc='"+food.getFoodDesc()+"',foodprice='"+food.getFoodPrice()+"' WHERE foodid='"+food.getFoodId()+"'";
        try {
            chk = new DBConn().executeQuery(sql);       
            
        } catch (Exception ex) {
            Logger.getLogger(FoodBL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return chk;
    }

    @Override
    public int removeFoodItems(FoodBean food) {
        int chk=0;
       
       try {
            stmt = DBConn.dbConn().createStatement();
            chk = stmt.executeUpdate("UPDATE Food_tbl set foodstatus='D' WHERE foodid='"+food.getFoodId()+"'");
        } catch (SQLException ex) {
           
        }
       return chk;
    }
     
    public ResultSet getFoodDetails(){
        String sql = "SELECT foodid,foodname,foodprice,fooddesc,foodstatus,foodcategory FROM food_tbl";
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(FoodBL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rst;
    }
    
    public int getCountFood(){
        int count = 0;
        ResultSet rst= null;
        String sql = "SELECT COUNT(*) FROM food_tbl";
        try {
           rst = new DBConn().selectQuery(sql);
           while(rst.next()){
                count = rst.getInt(1);
           }
           
        } 
        catch (Exception e) {
        }
        return count;
    }
    
    public int getFoodMaxID(){
    
    int maxId = 0;
        ResultSet rst= null;
        String sql = "SELECT MAX(foodid) FROM food_tbl";
        try {
           rst = new DBConn().selectQuery(sql);
           while(rst.next()){
                maxId = rst.getInt(1);
           }
           
        } 
        catch (Exception e) {
        }
        return maxId;
    
    }
    
    public ArrayList getFoodCake(){
        ArrayList<FoodBean> list = new ArrayList<FoodBean>();
        FoodBean food = null;
        String sql = "SELECT * FROM food_tbl WHERE foodcategory='cake' AND foodstatus='Y'";
        ResultSet rst = null;
       
        try {
            InputStream binaryStream = null; 
            stmt = DBConn.dbConn().createStatement();           
            rst = stmt.executeQuery(sql);
            while(rst.next()){
               binaryStream = rst.getBinaryStream(7);
               food = new FoodBean();
               food.setFoodId(rst.getInt(1));
               food.setFoodName(rst.getString(2));
               food.setFoodPrice(rst.getDouble(3));
               food.setFoodDesc(rst.getString(4));
               food.setFoodCateg(rst.getString(6));
               food.setFoodRetreiveImage(binaryStream);
               list.add(food);
            }
            
        } catch (Exception e) {
        }
        return list;
    }
    
   
}

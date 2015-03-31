/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.food.managecls;

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
public class Customer extends User {
    
    private int cusTotal;
    private String cusFName;
    private String cusLName;
    private String cusadd1;
    private String cusadd2;
    private String cusadd3;
    private String custel;

    public String getCusFName() {
        return cusFName;
    }

    public void setCusFName(String cusFName) {
        this.cusFName = cusFName;
    }

    public String getCusLName() {
        return cusLName;
    }

    public void setCusLName(String cusLName) {
        this.cusLName = cusLName;
    }
    
    public int getCusTotal() {
        return cusTotal;
    }

    public String getCusadd1() {
        return cusadd1;
    }

    public void setCusadd1(String cusadd1) {
        this.cusadd1 = cusadd1;
    }

    public String getCusadd2() {
        return cusadd2;
    }

    public void setCusadd2(String cusadd2) {
        this.cusadd2 = cusadd2;
    }

    public String getCusadd3() {
        return cusadd3;
    }

    public void setCusadd3(String cusadd3) {
        this.cusadd3 = cusadd3;
    }

    public String getCustel() {
        return custel;
    }

    public void setCustel(String custel) {
        this.custel = custel;
    }

    PreparedStatement pstmt;
    Statement stmt;
    
    public boolean addCustomer(){
    
       return true;
    }
    public boolean modifyCustomer(){
    
        return true;
        
    }
    
    public int getCustomerMaxId(){
        
        return 1;
    }
    
    public int getTotalCustomer(){
        int total = 0;
        try {
            stmt = DBConn.dbConn().createStatement();
            ResultSet rst =  stmt.executeQuery("SELECT count(*) FROM customer_Tbl");
            
            while(rst.next()){
            total = rst.getInt("count(*)");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return total;
    }
    
    public ResultSet getCustomerDetails(){
         ResultSet rst =null;
        try {
            stmt = DBConn.dbConn().createStatement();
            rst = stmt.executeQuery("SELECT c.cusfname,c.cuslname,c.cusaddress,c.custel,a.email FROM customer_tbl c,account_tbl a WHERE c.accid=a.accid");
            
        }
        catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rst;
    }

   

    
    
}

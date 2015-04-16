
package com.food.User;

import com.food.managecls.DBConn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Nimesh Chathuranga
 */
public class User {
    private int accid;
    private String cusfname;
    private String cuslname;
    private String cusaddress;          
    private String custel;
    private String accpsw;
    private String cusemail;

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public String getCusfname() {
        return cusfname;
    }

    public void setCusfname(String cusfname) {
        this.cusfname = cusfname;
    }

    public String getCuslname() {
        return cuslname;
    }

    public void setCuslname(String cuslname) {
        this.cuslname = cuslname;
    }

    public String getCusaddress() {
        return cusaddress;
    }

    public void setCusaddress(String cusaddress) {
        this.cusaddress = cusaddress;
    }

    public String getCustel() {
        return custel;
    }

    public void setCustel(String custel) {
        this.custel = custel;
    }

    public String getAccpsw() {
        return accpsw;
    }

    public void setAccpsw(String accpsw) {
        this.accpsw = accpsw;
    }

    public String getCusemail() {
        return cusemail;
    }

    public void setCusemail(String cusemail) {
        this.cusemail = cusemail;
    }
    
    int status;
    int maxid=0;
    String sql;
    public int SaveUser(User user)
    {
        maxid();
        try{
        Statement stmt = DBConn.dbConn().createStatement();
        sql="INSERT INTO account_tbl VALUES('"+maxid+"','"+user.getCusfname()+"','"+user.getAccpsw()+"','"+user.getCusemail()+"')";
        status=stmt.executeUpdate(sql);
        sql="INSERT INTO customer_tbl VALUES('"+user.getCusfname()+"','"+user.getCuslname()+"','"+user.getCusaddress()+"','"+user.getCustel()+"','"+maxid+"')";
        stmt.executeUpdate(sql);
        }
        catch(Exception ex){
            
        }
        return status;
    }
    
    public int UpdateUser(User user,String uname)
    {
        int id;
       try{
           Statement stmt = DBConn.dbConn().createStatement();
           sql="UPDATE account_tbl SET email='"+user.getCusemail()+"' WHERE accuname='"+uname+"'";
           status=stmt.executeUpdate(sql);    
           sql="UPDATE customer_tbl SET cusaddress='"+user.getCusaddress()+"',custel='"+user.getCustel()+"' WHERE cusfname='"+uname+"'";
           status=stmt.executeUpdate(sql);
        }
        catch(Exception ex){
            
        }
        return status;
    }
    
    public ResultSet GetAccountData(String uname){
        ResultSet set = null;
        try{
        Statement stmt = DBConn.dbConn().createStatement();
        String sql="SELECT acc.accuname,cus.cusfname,cus.cuslname,cus.cusaddress,cus.custel,acc.email FROM customer_tbl cus JOIN account_tbl acc on cus.accid=acc.accid WHERE acc.accuname='"+uname+"'";
        set =stmt.executeQuery(sql);
        }
        catch(Exception ex){
            System.out.print(ex);
        }
        return set;
    }
    
    public String GetPassword(String uname)
    {
        String password="";
      try{
            Statement stmt = DBConn.dbConn().createStatement();
            String query = "SELECT accpsw FROM account_tbl WHERE accuname='"+uname+"'";
            ResultSet rst = stmt.executeQuery(query);
        
        while(rst.next())
        {
          password=rst.getString(1);
        }  
        }
        catch(Exception ex){
            
        }
        return password;
    }
    
    public int PassUpdate(String newP,String currP) throws SQLException
    {
       Statement stmt = DBConn.dbConn().createStatement();
       sql="UPDATE account_tbl SET accpsw='"+newP+"' WHERE accuname='"+currP+"'"; 
       status=stmt.executeUpdate(sql);
       return status;
    }
 
    public void maxid()
    {      
       maxid=new DBConn().Getlastid("accid","account_tbl");
    
    }
    
    public boolean LogCheck(User user) throws SQLException
    {
        try{
            Statement stmt = DBConn.dbConn().createStatement();
            String query = "SELECT * FROM account_tbl WHERE email='"+user.getCusemail()+"'";
            ResultSet rst = stmt.executeQuery(query);
        
        while(rst.next())
        {
            String uname=rst.getString("email");
            String psw=rst.getString("accpsw");
            user.setCusfname(rst.getString("accuname"));
            
            return user.getCusemail().equals(uname) && user.getAccpsw().equals(psw);
        }  
        }
        catch(Exception ex){
            
        }
        return false;
    }
    
    public ResultSet GETNormalOderFood(String uname)
    {
       ResultSet set = null;
        try{
        Statement stmt = DBConn.dbConn().createStatement();
        String sql="SELECT f.foodimg,f.foodname,n.orderextra,n.ordquantity,n.ordtotal FROM  food_tbl f JOIN normalord_tbl n ON f.foodid=n.foodid JOIN order_tbl o ON n.orderid=o.orderid JOIN account_tbl a ON o.accid=a.accid WHERE a.accuname='"+uname+"'";
        set =stmt.executeQuery(sql);
        }
        catch(Exception ex){
            System.out.print(ex);
        }
        return set; 
    }
    
    public ResultSet GetSpecialOrderFood(String uname)
    {
       ResultSet set = null;
        try{
        Statement stmt = DBConn.dbConn().createStatement();
        String sql="SELECT s.ordfoodcate,s.orddesc,s.ordaddress,s.orddeliverdate,s.ordstate,s.orderquantity,s.ordTotal FROM specialord_tbl s JOIN order_tbl o ON s.orderid=o.orderid JOIN account_tbl a ON o.accid=a.accid WHERE a.accuname='"+uname+"'";
        set =stmt.executeQuery(sql);
        }
        catch(Exception ex){
            System.out.print(ex);
        }
        return set; 
    }
    
}

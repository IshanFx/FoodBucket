
package com.food.User;

import com.food.managecls.DBConn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Nimesh Chathuranga
 */
public class UserController {
    
    int status;
    int maxid;
    public int SaveUser(User user)
    {
        try{
        
        }
        catch(Exception ex){
            
        }
        return status;
    }
    
    public int UpdateUser(User user)
    {
       try{
        
        }
        catch(Exception ex){
            
        }
        return status;
    }
    
    public void maxid()
    {      
       maxid=DBConn.Getlastid("accid","account_tbl");
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
}

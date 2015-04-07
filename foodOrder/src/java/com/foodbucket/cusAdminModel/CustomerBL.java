/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.cusAdminModel;

import com.food.managecls.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author IshanFX
 */
public class CustomerBL extends User {
    
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
            Logger.getLogger(CustomerBL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rst;
    }
    
    public void sendEmail(String mail,String subject,String msgBody){
                ResultSet rst = null;
                ArrayList<String> list = new ArrayList<String>();
                final String username = "ishantuf@gmail.com";
		final String password = "nvidiagtx680"; 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		//props.put("mail.smtp.starttls.enable", "true"); // Uncomment, if you want to use TLS.
		props.put("mail.smtp.host", "smtpcorp.com");
		props.put("mail.smtp.port", "25"); // 8025, 587 and 25 can also be used. 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  }); 
		try {
                    Message message = new MimeMessage(session);
                    Multipart mp = new MimeMultipart("alternative");
                    BodyPart textmessage = new MimeBodyPart();
                    BodyPart htmlmessage = new MimeBodyPart();
                    
                    if(mail.equals("toAll")){
                        rst = getCustomerDetails();
                        while(rst.next()){
                            list.add(rst.getString(5));
                        }
                        for(String mails : list){
                            textmessage.setText("It is a text message \n");
			
			htmlmessage.setContent(msgBody, "text/html");
			mp.addBodyPart(textmessage);
			mp.addBodyPart(htmlmessage);
			message.setFrom(new InternetAddress("info@foodbucket.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(mails));
			message.setSubject(subject);
			message.setContent(mp); 
			Transport.send(message);   
                        }
                        
                    }
                    else{
                        textmessage.setText("It is a text message \n");
			
			htmlmessage.setContent(msgBody, "text/html");
			mp.addBodyPart(textmessage);
			mp.addBodyPart(htmlmessage);
			message.setFrom(new InternetAddress("info@foodbucket.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(mail));
			message.setSubject(subject);
			message.setContent(mp); 
			Transport.send(message); 
                    }
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
    }

   

    
    
}

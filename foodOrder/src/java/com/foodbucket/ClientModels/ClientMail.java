/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodbucket.ClientModels;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author IshanFX
 */


public class ClientMail {
    
     public void sendEmail(String name,String mailAddress,String subject,String messageBody){
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

                        textmessage.setText("It is a text message \n");
			
			htmlmessage.setContent("Name :" +name +"<br>"+"Email :"+ mailAddress +"<br>"+messageBody, "text/html");
                        
			mp.addBodyPart(textmessage);
			mp.addBodyPart(htmlmessage);
			message.setFrom(new InternetAddress("info@foodbucket.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(username));
			message.setSubject(subject);
			message.setContent(mp); 
			Transport.send(message); 
         
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
    }
}

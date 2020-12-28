package com.login;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

public class SendMailBySite {
	public static void sendResetPassEmail(String to, String otp) {

		
	      final String username = "komalbhadarge1698@gmail.com";//change accordingly
	      final String password = "komal1698";//change accordingly
	      String subject = "Your password has changed";  
	     
	   

	      
	      Properties props = new Properties();
	      props.put("mail.smtp.host", "smtp.gmail.com");
	      props.put("mail.smtp.socketFactory.port", "465");
	      props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.port", "465");

	      // Get the Session object.
	      Session session = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	         }
	      });

	      try {
	         // Create a default MimeMessage object.
	         Message message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress("komalbhadarge1698@gmail.com","Komal Bhadarge"));

	         // Set To: header field of the header.
	         message.setRecipients(Message.RecipientType.TO,
	         InternetAddress.parse(to));
	         

	         
	        String text2="Dear Visitor,\n\n"
	         		+"Use this one time access code "+otp+" to comeplete the visitor verification process at Doshaheen. This OTP can be used only once.\n\n"
	         		+"Wishing you a successful business meeting with us!\n\n"
	         		+"--\nThanks and Regards\nTeam Doshaheen\n\n"
	         		+"Disclaimer:\n"
	         		+"This is an system generated email. Please do not reply to this email.";
	         message.setText(text2);

	         // Send message
	         Transport.send(message);

	         System.out.println("mail message successfully sent....");

	      } catch (MessagingException e) {
	    	  e.printStackTrace();
	    	 
	            throw new RuntimeException(e);
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	   }
}

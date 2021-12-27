package st;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
public class Send {
		final String senderEmailId = "samyugtha1131@gmail.com";
		final String senderPassword = "Samyu@041";
		final String emailSMTPserver = "smtp.gmail.com";
		final String emailServerPort = "465";
		String receiverEmailId = "samyukrishnan788@gmail.com";
		static String emailSubject = "Test Mail";
		static String emailBody = "hey guy";
		  public void  SendEmail(String receiverEmailId,String Subject,
		  String Body){
		  this.emailBody=Body;
		  Properties props = new Properties();
		  props.put("mail.smtp.user",senderEmailId);
		  props.put("mail.smtp.host", emailSMTPserver);
		  props.put("mail.smtp.port", emailServerPort);
		  props.put("mail.smtp.starttls.enable", "true");
		  props.put("mail.smtp.auth", "true");
		  props.put("mail.smtp.socketFactory.port", emailServerPort);
		  props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		  props.put("mail.smtp.socketFactory.fallback", "false");
		  @SuppressWarnings("unused")
		SecurityManager security = System.getSecurityManager();
		  try{  
		  Authenticator auth = new SMTPAuthenticator();
		  Session session = Session.getInstance(props, auth);
		  MimeMessage msg = new MimeMessage(session);
		  msg.setText(emailBody);
		  msg.setSubject(emailSubject);
		  msg.setFrom(new InternetAddress(senderEmailId));
		  msg.addRecipient(Message.RecipientType.TO,
		  new InternetAddress(receiverEmailId));
		  Transport.send(msg);
		  System.out.println("Message send Successfully:)"); }
		  
		  catch (Exception mex){
		  mex.printStackTrace();}
		  
		  
		  }
		  public class SMTPAuthenticator extends javax.mail.Authenticator
		  {
		  public PasswordAuthentication getPasswordAuthentication()
		  {
		  return new PasswordAuthentication(senderEmailId, senderPassword);
		  }
		  }
		     }
package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.user.dao.UserDAO;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class FindPasswordController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse rep) throws IOException, ServletException {
	  UserDAO userDAO = new UserDAO();
      String userEmail = userDAO.selectEmail(req.getParameter("userEmail"));
      HttpSession sessionE = req.getSession();      //���������������� userEmail�� ��������
      Result result = new Result();
      
      result.setRedirect(true);
      
      //      
       if(userEmail == null) {
    	  System.out.println("�� null�̳�");
          result.setPath("/findPassword.user?email=false");
       }
       // �̸����� ã������      
       else {
    	   System.out.println("e���� ã�Ҿ��");
          sessionE.setAttribute("userEmail", userEmail);
          //���� ������ ����
            // ���� ���ڵ�
          String path ="http://localhost:8090/myNameChangeOk.mypage";
          
            final String bodyEncoding = "UTF-8"; //������ ���ڵ�
            
            //���ϴ� ���� ���� �ۼ�
            String subject = "�߽� ��й�ȣ �缳��";           
            String fromEmail = "joongshin@gmail.com";
            String fromUsername = "admin";
            String toEmail = userEmail; // �޸�(,)�� ������ ����
            
            final String username = "asdzxc9822@gmail.com"; //���� ���� �̸�        
            final String password = "bfiwbhjomxtklszx";
            
            // ���Ͽ� ����� �ؽ�Ʈ
            String html = null;
            StringBuffer sb = new StringBuffer();
            sb.append("<h3>��й�ȣ �缳�� ������ ��ũ�Դϴ�</h3>\n");
            sb.append("<h4>" + path+ "</h4>");    
            html = sb.toString();
            // ���� �ɼ� ����
            Properties props = new Properties();
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");
            try {
              // ���� ����  ���� ���� ����
              Authenticator auth = new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                  return new PasswordAuthentication(username, password);
                }
              };
              // ���� ���� ����
              Session session = Session.getDefaultInstance(props, auth);
              // ���� ��/���� �ɼ� ����
              Message message = new MimeMessage(session);
              message.setFrom(new InternetAddress(fromEmail, fromUsername));
              message.setRecipients(RecipientType.TO, InternetAddress.parse(toEmail, false));
              message.setSubject(subject);
              message.setSentDate(new Date());
              // ���� ������ ����
              Multipart mParts = new MimeMultipart();
              MimeBodyPart mTextPart = new MimeBodyPart();
              MimeBodyPart mFilePart = null;
              // ���� ������ - ����
              mTextPart.setText(html, bodyEncoding, "html");
              mParts.addBodyPart(mTextPart);
              // ���� ������ ����
              message.setContent(mParts);
              // ���� �߼�
              Transport.send( message );
            } catch ( Exception e ) {
              e.printStackTrace();
            }
          //���Ϻ����� ��
            result.setPath(req.getContextPath() + "/findPasswordOk2.board");
       }
      
      return result;
   }

}
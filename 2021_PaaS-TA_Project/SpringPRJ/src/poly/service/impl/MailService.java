package poly.service.impl;

import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.MailDTO;
import poly.persistance.mapper.IMailMapper;
import poly.service.IMailService;
import poly.util.CmmUtil;

@Service("MailService")
public class MailService implements IMailService{
	private Logger log = Logger.getLogger(this.getClass());
	
	
	
	@Resource(name="MailMapper")
	private IMailMapper MailMapper;

	
	final String host = "smtp.gmail.com";
	final String user = "gmail아이디@gmail.com";
	final String password = "gmail 사용자 비밀번호";
	final int port = 465;
	
	
	@Override
	public int doSendmail(MailDTO pDTO) {
		
		
		int res = 1;
		log.info("메일발송 서비스 시작");
		
		if(pDTO == null) {
			pDTO = new MailDTO();
		}
		
		String toMail = CmmUtil.nvl(pDTO.getToMail());
		
		Properties props = new Properties();
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.required","true"); 
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.transport.protocol", "smtps");
	

	

		
		

		Session session = Session.getDefaultInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
			});
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
			
			message.setSubject(CmmUtil.nvl(pDTO.getTitle()));
			
			message.setText(CmmUtil.nvl(pDTO.getContents()));
			
			Transport.send(message);
			
		}catch(MessagingException e) {
			res = 0;
			log.info("[ERROR]" + this.getClass().getName() + ".doSendMail : " + e);
		}catch(Exception e) {
			res = 0;
			log.info("[ERROR]" + this.getClass().getName() + ".doSendMail : " + e);
		}
		
		log.info("메일발송 서비스 종료");
		return res;
	}
	
	@Override
	public int contactwrite(MailDTO pDTO) {
		
		int res = 1;
		
		if(pDTO == null) {
			pDTO = new MailDTO();
		}
		
		String toMail = CmmUtil.nvl(pDTO.getToMail());
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		try {
			MimeMessage message = new MimeMessage(session);
			
			message.setFrom(new InternetAddress(user));
			log.info(user);
			
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
			log.info(toMail);
			
			//메일 제목
			message.setSubject(CmmUtil.nvl(pDTO.getTitle()));
			log.info(pDTO.getTitle());
			
			//메일 내용
			message.setText(CmmUtil.nvl(pDTO.getContents()));
			log.info(pDTO.getContents());
			
			//메일 발송
			Transport.send(message);
			log.info(toMail);
			log.info(message.getContent());
			log.info(pDTO.getTitle());
			
		} catch (MessagingException e) {
			res = 0;
			log.info("[ERROR]" + this.getClass().getName() + ".dosendMail :" + e);
		} catch (Exception e) {
			res = 0;
			log.info("[ERROR]" + this.getClass().getName() + ".doSendMail :" + e);
		}
		
		log.info(this.getClass().getName() + ".doSendMail end ! ");
		
		
		return res;
	}

	}
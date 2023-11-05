package com.demo.mail;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class MailerServiceImpl implements MailerService{
	
	@Autowired
	JavaMailSender sender;
	
	List<MailInfo> list = new ArrayList<>();

	@Override
	public void send(String to, String subject, String body) {
		 SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(to); // Địa chỉ email đích
	        message.setSubject(subject); // Chủ đề của email
	        message.setText(body); // Nội dung của email

	        sender.send(message); // Gửi email
		
	}

	@Override
	public void queue(MailInfo mail) {
	
		list.add(mail);
		
	}

	@Override
	public void queue(String to, String subject, String body) {
		queue(new MailInfo(to, subject, body));
		
	}
	
	// hàng chờ 
	@Scheduled(fixedDelay = 5000)
	public void sendScheduledEmail() {
		
		while (!list.isEmpty()) {
			MailInfo mail = list.remove(0);
			try {
				this.send(mail);;
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}
	}
	

	@Override
	public void send(MailInfo mail) {
	    SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(mail.getFrom());
        message.setTo(mail.getTo());
        if (mail.getCc() != null) {
            message.setCc(mail.getCc());
        }
        if (mail.getBcc() != null) {
            message.setBcc(mail.getBcc());
        }
        message.setSubject(mail.getSubject());
        message.setText(mail.getBody());

        sender.send(message);
		
	}


	

}

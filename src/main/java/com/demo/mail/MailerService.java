package com.demo.mail;

import javax.mail.MessagingException;

public interface MailerService {
	
	
	void send(String to, String subject, String body);

	void send(MailInfo mail);
	
	void queue(MailInfo mail);
	
	void queue(String to, String subject, String body);
}

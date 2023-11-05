package com.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entity.Watches;
import com.demo.entity.Dao.WatchesDao;
import com.demo.mail.MailerServiceImpl;
import com.demo.service.SessionService;

@Controller
public class adminController {
	@Autowired
	MailerServiceImpl mailer;
	
	@Autowired
	WatchesDao dao;
	@Autowired
	SessionService service;
	// login 
	@GetMapping("/admin/login")
	public String admin1(Model model , @ModelAttribute("item") Watches item) {
		
		model.addAttribute("items", dao.findAll());

		return "home/admin/admin";
	}
	
	// gmail1
	@GetMapping("/cart/gmail")
	public String mail(Model model) {

		return "home/gmail/gmail";

	}
	
	@PostMapping("/gmailSend")
	public String mailsend(Model model, @RequestParam String to ) {

		
		String subject = "T & M : mã giảm giá 100%";
		
		String body = "Mã giảm giá của bạn : 'chuongdeptrai' ";
		
	    mailer.send(to, subject, body);
	    
	   
        model.addAttribute("gmailMessage","Kiểm tra gmail của bạn !");

		
        return "home/gmail/gmail";
		
	}
	
	
	//create
	@PostMapping("/product/create")
	public String add( @ModelAttribute("item") Watches item , Model model) {
	dao.save(item);
	return "redirect:/admin/login";

	}
//	
//	@GetMapping("/product/edit/{id}")
//	public String edit(Model model, @PathVariable("id") long id) {
//
//		Watches item = dao.findById(id).get();
//		
//		model.addAttribute("item", item);
//		List<Watches> items = dao.findAll();
//		model.addAttribute("items", items);
//		
//		return "redirect:/admin/login";
//
//	}
//	
//	@RequestMapping("/admin/delete/{id}")
//	public String create(@PathVariable("id") long id, Model model) {
//	Watches item = new Watches();
//	model.addAttribute("item", item);	
//
//	dao.deleteById(id);
//	List<Watches> items = dao.findAll();
//	model.addAttribute("items", items);
//	return "redirect:/product/index";
//	}
//	
//	
}

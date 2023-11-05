package com.demo.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entity.Users;
import com.demo.entity.Dao.UsersDao;
import com.demo.entity.Dao.WatchesDao;

import com.demo.mail.MailInfo;
import com.demo.mail.MailerServiceImpl;
import com.demo.service.SessionService;



@Controller
public class demo {
	
	@Autowired
	MailerServiceImpl mailer;
	
	@Autowired
	ServletContext app;
	
	@Autowired
	SessionService session;
	
    @Autowired
    WatchesDao Wdao;
    
    @Autowired
    UsersDao UsersDao;
    
	// list
    @GetMapping("/product/list")
	public String search_list(Model model, @RequestParam("name") Optional<String> name, @RequestParam("p") Optional<Integer> p) {
		String na = name.orElse(session.get("name",""));
		session.set("name", na);	
	    int pageNumber = p.orElse(0); 
	    PageRequest pageRequest = PageRequest.of(pageNumber, 8);
		model.addAttribute("page", Wdao.findAllByNameLike("%"+na+"%", pageRequest));
		System.out.println("Value of 'page': " + model.getAttribute("page"));
		 return "product/list";
	}
    

    
    // index t & m
	@GetMapping("home/index")
	public String searchPage_index(Model model) {
//		String na = name.orElse(session.get("name",""));
//		session.set("name", na);	
//	    int pageNumber = p.orElse(0); 
//	    PageRequest pageRequest = PageRequest.of(pageNumber, 4);
//		model.addAttribute("page", Wdao.findAllByNameLike("%"+na+"%", pageRequest));
//		System.out.println("Value of 'page': " + model.getAttribute("page"));
		
		 return "home/index";
		 
	}
	
	

	



}

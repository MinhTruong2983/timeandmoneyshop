package com.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entity.Users;
import com.demo.entity.Dao.UsersDao;
import com.demo.mail.MailerServiceImpl;
import com.demo.service.SessionService;

@Controller
public class AccountController {

	@Autowired
	MailerServiceImpl mailer;
	
	@Autowired
	SessionService service;
	@Autowired
	UsersDao usersDao;
	
	
	@PostMapping("/account/login")
	public String login(Model model, @RequestParam String username, @RequestParam String password) {
	
	Users  users = usersDao.findByUsername(username);
	
	
//	model.addAttribute("users", users);
	
	try {
		if (users != null) {
		    // Tìm thấy người dùng trong cơ sở dữ liệu, tiếp tục xử lý
			if (!password.equals(users.getPassword())) {
				model.addAttribute("message", "Sai mật khẩu !! ");
			}else {
				String role = users.getRole();
				if (role != null && role.equals("admin")) {
				    // Thực hiện hành động khi role là "admin"

					service.set("user",users);
					// Sử dụng forward khi bạn muốn giữ nguyên đối tượng model
					return "redirect:/admin/login";

				} else {
				    // Xử lý khi role không phải là "admin" hoặc là null
					String uri = service.get("security-uri");
					
					System.out.println(uri);
					
					if (uri != null) {
						System.out.println("chuyển hướng đến ...");
						return "redirect:" + uri;
						
					}else {
						service.set("user", users);
						System.out.println("chuyển hướng đến home...");
					
						return "redirect:/home/index";
					}
				}
			}
		} else {
		    // Người dùng không tồn tại trong cơ sở dữ liệu, xử lý lỗi tại đây
			model.addAttribute("message", "Sai thông tin đăng nhập hoặc mật khẩu");
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		return "home/gmail/login";
	}
	
	
	
	
	
	
	
	// login 
			@GetMapping("/account/login")
			public String login(Model model) {
				return "home/login/login";
			}
			
			
        // logout
			
			@GetMapping("/logout")
			public String logout(Model model) {
				service.set("username",null);
				return "home/index"; // view len trang login 
			}

			
			// account forgot-password
			 
			@GetMapping("/account/forgot-password")
			public String password(Model model) {
		    return "home/login/forgotpassword";
			}
		
			@PostMapping("/account/forgot-password")
			public String mailforgotsend(Model model, @RequestParam String to ) {

				String subject = "Mã xác nhận mật khẩu của bạn là :";
				String body = "2468A";
				
				mailer.queue(to, subject, body);
	            System.out.println( "mã xác nhận đang được gửi đến mail của bạn !");
				return "home/login/resetpassword";
				
			}
			
			
			
			
			
			
			
			
			
}

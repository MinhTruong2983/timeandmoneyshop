package com.demo.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.demo.entity.Users;
import com.demo.service.SessionService;


@Service
public class AuthInterceptor implements HandlerInterceptor{
	@Autowired
	SessionService session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		    String uri = request.getRequestURI();
		    Users user = session.get("user");

		    if (user == null) {
		        String error = "Bạn chưa đăng nhập!";
		        session.set("security-uri", uri);
		        response.sendRedirect("/account/login?error=" + error);
		        return false;
		    } else if (!user.getRole().equals("admin") && uri.startsWith("/admin/")) {
		        String error = "Bạn bị TỪ CHỐI truy cập!";
		        session.set("security-uri", uri);
		        response.sendRedirect("/account/login?error=" + error);
		        return false;
		    }
		
		
		
		
		return true;
	}
}
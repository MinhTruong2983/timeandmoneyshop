package com.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.demo.interceptor.AuthInterceptor;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer{

	@Autowired
	AuthInterceptor auth;
	
    public void addInterceptors(InterceptorRegistry registry ) {
		
    	registry.addInterceptor(auth)
    	.addPathPatterns("/admin/**")
    	.excludePathPatterns("/account/login");
    	
	}
	
}

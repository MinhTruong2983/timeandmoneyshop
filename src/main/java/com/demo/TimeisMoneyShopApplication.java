package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class TimeisMoneyShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(TimeisMoneyShopApplication.class, args);
	}

}

package com.demo.entity.cart;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.demo.entity.Watches;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class itemCart {

	int id;
	String image;
	String name;
	BigDecimal price;
	int qty = 1;
	
	private Watches watch;
	
}

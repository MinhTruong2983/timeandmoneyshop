package com.demo.entity.cart;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;

import org.springframework.stereotype.Component;

import com.demo.entity.OrderDetail;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class OrderRequestDTO {

	
	    private String fullName;
	    
	    private String phoneNumber;
	    
	    private String email;
	    
	    private String note;
	    
	    private String discountCode;
	    
	    private String paymentMethod;

	    private double totalAmount; // Tổng số tiền đơn hàng

	    private String address;


	    
	    private List<OrderDetail> orderDetails;
}

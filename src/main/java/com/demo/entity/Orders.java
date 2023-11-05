package com.demo.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Table(name = "Orders")
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "OrderID")
    private int id;


    @Column(name = "fullname")
    private String fullname;
    
    @Column(name = "phonenumber")
    private String phoneNumber;
    
    @Column(name = "email")
    private String email;
    @Column(name = "note")
    private String note;

    @Column(name = "paymentmethod")
    private String paymentMethod;

    @Column(name = "totalamount")
    private double totalAmount; // Tổng số tiền đơn hàng

    @Column(name = "address") //địa chỉ
    private String address;

    // Getters and setters
}
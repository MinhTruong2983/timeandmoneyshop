package com.demo.entity.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entity.Orders;

public interface OrderDao extends JpaRepository<Orders, Integer> {

	
}

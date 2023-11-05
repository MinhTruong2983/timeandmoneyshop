package com.demo.entity.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entity.Users;

public interface UsersDao extends JpaRepository<Users, Integer> {

	Users findByUsername(String username);
	
	
	
}

package com.demo.entity.Dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.entity.Watches;


public interface WatchesDao extends JpaRepository<Watches, Integer> {
//	@Query("SELECT o FROM Watches o WHERE o.price BETWEEN ?1 AND ?2")
//	List<Watches> findByPrice(double minPrice, double maxPrice);
//	
//	
//	@Query("SELECT o FROM Watches o WHERE o.name LIKE ?1")
//	Page<Watches> findByKeywords(String keywords, Pageable pageable);
	
	
	//Bài5
	Page<Watches> findAllByNameLike(String keywords, Pageable page);
}

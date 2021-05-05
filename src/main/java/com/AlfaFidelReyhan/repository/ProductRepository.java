package com.AlfaFidelReyhan.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.AlfaFidelReyhan.entity.Product;

@Repository
public interface ProductRepository  extends CrudRepository<Product, Long>{
	 Page<Product> findAll(Pageable pageable);
	 Page<Product> findByName(String search, Pageable pageable);
}

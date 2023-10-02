package edu.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Category;


public interface CategoryDAO extends JpaRepository<Category,String>{
}

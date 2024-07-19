package com.example.demo.DAO;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;


import com.example.demo.model.User;

public interface AccountRepository extends JpaRepository<User, Long> {



	public User findByEmail(String email);
	
	public User findByToken(String token);
	
}

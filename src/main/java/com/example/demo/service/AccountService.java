package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.User;

public interface AccountService {

	void deleteAll();

	void deleteAll(List<User> entities);

	void deleteAllById(List<Long> ids);

	void delete(User entity);

	void deleteById(Long id);

	long count();

	List<User> findAllById(List<Long> ids);

	List<User> findAll();

	boolean existsById(Long id);

	Optional<User> findById(Long id);

	List<User> saveAll(List<User> entities);

	User save(User entity);

}

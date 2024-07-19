package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.AccountRepository;
import com.example.demo.model.User;
import com.example.demo.service.AccountService;
@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountRepository accountRepository;

	@Override
	public User save(User entity) {
		return accountRepository.save(entity);
	}

	@Override
	public List<User>  saveAll(List<User> entities) {
		return (List<User>)accountRepository.saveAll(entities);
	}

	@Override
	public Optional<User> findById(Long id) {
		return accountRepository.findById(id);
	}

	

	public User findByEmail(String email) {
		return accountRepository.findByEmail(email);
	}

	public User findByToken(String token) {
		return accountRepository.findByToken(token);
	}

	@Override
	public boolean existsById(Long id) {
		return accountRepository.existsById(id);
	}

	@Override
	public List<User> findAll() {
		return (List<User>)accountRepository.findAll();
	}

	@Override
	public List<User> findAllById(List<Long> ids) {
		return (List<User>)accountRepository.findAllById(ids);
	}

	@Override
	public long count() {
		return accountRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		accountRepository.deleteById(id);
	}

	@Override
	public void delete(User entity) {
		accountRepository.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		accountRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<User> entities) {
		accountRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		accountRepository.deleteAll();
	}
	

}

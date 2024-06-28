package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.AccountDAO;
import com.example.demo.model.User;
import com.example.demo.service.AccountService;
@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountDAO accountDAO;

	@Override
	public User save(User entity) {
		return accountDAO.save(entity);
	}

	@Override
	public List<User>  saveAll(List<User> entities) {
		return (List<User>)accountDAO.saveAll(entities);
	}

	@Override
	public Optional<User> findById(Long id) {
		return accountDAO.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return accountDAO.existsById(id);
	}

	@Override
	public List<User> findAll() {
		return (List<User>)accountDAO.findAll();
	}

	@Override
	public List<User> findAllById(List<Long> ids) {
		return (List<User>)accountDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return accountDAO.count();
	}

	@Override
	public void deleteById(Long id) {
		accountDAO.deleteById(id);
	}

	@Override
	public void delete(User entity) {
		accountDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		accountDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<User> entities) {
		accountDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		accountDAO.deleteAll();
	}
	

}

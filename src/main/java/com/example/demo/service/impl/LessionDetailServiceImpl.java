package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.LessionDetailDAO;
import com.example.demo.model.LessionDetail;
import com.example.demo.service.LessionDetailService;
@Service
public class LessionDetailServiceImpl implements LessionDetailService {
	@Autowired
	LessionDetailDAO lessionDetailDAO;

	@Override
	public LessionDetail save(LessionDetail entity) {
		return lessionDetailDAO.save(entity);
	}

	@Override
	public List<LessionDetail> saveAll(List<LessionDetail> entities) {
		return (List<LessionDetail>)lessionDetailDAO.saveAll(entities);
	}

	@Override
	public Optional<LessionDetail> findById(Long id) {
		return lessionDetailDAO.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return lessionDetailDAO.existsById(id);
	}

	@Override
	public List<LessionDetail> findAll() {
		return (List<LessionDetail>)lessionDetailDAO.findAll();
	}

	@Override
	public List<LessionDetail> findAllById(List<Long> ids) {
		return (List<LessionDetail>)lessionDetailDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return lessionDetailDAO.count();
	}

	@Override
	public void deleteById(Long id) {
		lessionDetailDAO.deleteById(id);
	}

	@Override
	public void delete(LessionDetail entity) {
		lessionDetailDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		lessionDetailDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<LessionDetail> entities) {
		lessionDetailDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		lessionDetailDAO.deleteAll();
	}
	
}

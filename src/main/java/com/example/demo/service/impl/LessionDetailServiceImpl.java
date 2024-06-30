package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.LessionDetailRepository;
import com.example.demo.model.LessionDetail;
import com.example.demo.service.LessionDetailService;
@Service
public class LessionDetailServiceImpl implements LessionDetailService {
	@Autowired
	LessionDetailRepository lessionDetailRepository;

	@Override
	public LessionDetail save(LessionDetail entity) {
		return lessionDetailRepository.save(entity);
	}

	@Override
	public List<LessionDetail> saveAll(List<LessionDetail> entities) {
		return (List<LessionDetail>)lessionDetailRepository.saveAll(entities);
	}

	@Override
	public Optional<LessionDetail> findById(Long id) {
		return lessionDetailRepository.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return lessionDetailRepository.existsById(id);
	}

	@Override
	public List<LessionDetail> findAll() {
		return (List<LessionDetail>)lessionDetailRepository.findAll();
	}

	@Override
	public List<LessionDetail> findAllById(List<Long> ids) {
		return (List<LessionDetail>)lessionDetailRepository.findAllById(ids);
	}

	@Override
	public long count() {
		return lessionDetailRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		lessionDetailRepository.deleteById(id);
	}

	@Override
	public void delete(LessionDetail entity) {
		lessionDetailRepository.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		lessionDetailRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<LessionDetail> entities) {
		lessionDetailRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		lessionDetailRepository.deleteAll();
	}
	
}

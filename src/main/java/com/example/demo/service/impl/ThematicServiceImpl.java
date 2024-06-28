package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.ThematicDAO;
import com.example.demo.model.Thematic;
import com.example.demo.service.ThematicService;
@Service
public class ThematicServiceImpl implements ThematicService {

	@Autowired
	ThematicDAO thematicDAO;

	@Override
	public Thematic save(Thematic entity) {
		return thematicDAO.save(entity);
	}

	@Override
	public List<Thematic> saveAll( List<Thematic> entities) {
		return ( List<Thematic>)thematicDAO.saveAll(entities);
	}

	@Override
	public Optional<Thematic> findById(Long id) {
		return thematicDAO.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return thematicDAO.existsById(id);
	}

	@Override
	public  List<Thematic> findAll() {
		return ( List<Thematic>)thematicDAO.findAll();
	}

	@Override
	public  List<Thematic> findAllById(List<Long> ids) {
		return ( List<Thematic>)thematicDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return thematicDAO.count();
	}

	@Override
	public void deleteById(Long id) {
		thematicDAO.deleteById(id);
	}

	@Override
	public void delete(Thematic entity) {
		thematicDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		thematicDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll( List<Thematic> entities) {
		thematicDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		thematicDAO.deleteAll();
	}
	
}

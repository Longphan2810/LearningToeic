package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.ThematicRepository;
import com.example.demo.model.Thematic;
import com.example.demo.service.ThematicService;
@Service
public class ThematicServiceImpl implements ThematicService {

	@Autowired
	ThematicRepository ThematicRepository;

	@Override
	public Thematic save(Thematic entity) {
		return ThematicRepository.save(entity);
	}

	@Override
	public List<Thematic> saveAll( List<Thematic> entities) {
		return ( List<Thematic>)ThematicRepository.saveAll(entities);
	}

	@Override
	public Optional<Thematic> findById(Long id) {
		return ThematicRepository.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return ThematicRepository.existsById(id);
	}

	@Override
	public  List<Thematic> findAll() {
		return ( List<Thematic>)ThematicRepository.findAll();
	}

	@Override
	public  List<Thematic> findAllById(List<Long> ids) {
		return ( List<Thematic>)ThematicRepository.findAllById(ids);
	}

	@Override
	public long count() {
		return ThematicRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		ThematicRepository.deleteById(id);
	}

	@Override
	public void delete(Thematic entity) {
		ThematicRepository.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		ThematicRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAll( List<Thematic> entities) {
		ThematicRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		ThematicRepository.deleteAll();
	}
	
}

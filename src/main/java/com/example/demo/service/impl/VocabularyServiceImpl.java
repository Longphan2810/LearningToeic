package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.VocabularyDAO;
import com.example.demo.model.Vocabulary;
import com.example.demo.service.VocabularyService;
@Service
public class VocabularyServiceImpl implements VocabularyService  {

	@Autowired
	VocabularyDAO vocabularyDAO;

	@Override
	public Vocabulary save(Vocabulary entity) {
		return vocabularyDAO.save(entity);
	}

	@Override
	public List<Vocabulary> saveAll( List<Vocabulary> entities) {
		return (List<Vocabulary>)vocabularyDAO.saveAll(entities);
	}

	@Override
	public Optional<Vocabulary> findById(Long id) {
		return vocabularyDAO.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return vocabularyDAO.existsById(id);
	}

	@Override
	public List<Vocabulary>  findAll() {
		return (List<Vocabulary> )vocabularyDAO.findAll();
	}

	@Override
	public List<Vocabulary>  findAllById(List<Long> ids) {
		return (List<Vocabulary>)vocabularyDAO.findAllById(ids);
	}

	@Override
	public long count() {
		return vocabularyDAO.count();
	}

	@Override
	public void deleteById(Long id) {
		vocabularyDAO.deleteById(id);
	}

	@Override
	public void delete(Vocabulary entity) {
		vocabularyDAO.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		vocabularyDAO.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Vocabulary>  entities) {
		vocabularyDAO.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		vocabularyDAO.deleteAll();
	}
	
}

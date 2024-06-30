package com.example.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.VocabularyRepository;
import com.example.demo.model.Thematic;
import com.example.demo.model.Vocabulary;
import com.example.demo.service.VocabularyService;

@Service
public class VocabularyServiceImpl implements VocabularyService {

	@Autowired
	VocabularyRepository vocabularyRepository;

	@Override
	public Vocabulary save(Vocabulary entity) {
		return vocabularyRepository.save(entity);
	}

	@Override
	public List<Vocabulary> saveAll(List<Vocabulary> entities) {
		return (List<Vocabulary>) vocabularyRepository.saveAll(entities);
	}

	@Override
	public Optional<Vocabulary> findById(Long id) {
		return vocabularyRepository.findById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return vocabularyRepository.existsById(id);
	}

	@Override
	public List<Vocabulary> findAll() {
		return (List<Vocabulary>) vocabularyRepository.findAll();
	}

	@Override
	public List<Vocabulary> findAllById(List<Long> ids) {
		return (List<Vocabulary>) vocabularyRepository.findAllById(ids);
	}

	@Override
	public long count() {
		return vocabularyRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		vocabularyRepository.deleteById(id);
	}

	@Override
	public void delete(Vocabulary entity) {
		vocabularyRepository.delete(entity);
	}

	@Override
	public void deleteAllById(List<Long> ids) {
		vocabularyRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Vocabulary> entities) {
		vocabularyRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		vocabularyRepository.deleteAll();
	}

	@Override
	public List<Vocabulary> FindAllByThematic(Thematic thematic) {
		return vocabularyRepository.FindAllByThematic(thematic);
	}

}

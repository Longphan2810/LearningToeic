package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.Vocabulary;

public interface VocabularyService {

	void deleteAll();

	void deleteAll(List<Vocabulary>  entities);

	void deleteAllById(List<Long> ids);

	void delete(Vocabulary entity);

	void deleteById(Long id);

	long count();

	List<Vocabulary> findAllById(List<Long> ids);

	List<Vocabulary> findAll();

	boolean existsById(Long id);

	Optional<Vocabulary> findById(Long id);

	List<Vocabulary> saveAll(List<Vocabulary> entities);

	Vocabulary save(Vocabulary entity);

}

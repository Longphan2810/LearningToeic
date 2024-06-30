package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.Thematic;

public interface ThematicService {

	void deleteAll();

	void deleteAll(List<Thematic> entities);

	void deleteAllById(List<Long> ids);

	void delete(Thematic entity);

	void deleteById(Long id);

	long count();

	List<Thematic> findAllById(List<Long> ids);

	List<Thematic> findAll();

	boolean existsById(Long id);

	Optional<Thematic> findById(Long id);

	List<Thematic> saveAll(List<Thematic> entities);

	Thematic save(Thematic entity);

}

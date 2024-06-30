package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.LessionDetail;

public interface LessionDetailService {

	void deleteAll();

	void deleteAll(List<LessionDetail> entities);

	void deleteAllById(List<Long> ids);

	void delete(LessionDetail entity);

	void deleteById(Long id);

	long count();

	List<LessionDetail> findAllById(List<Long> ids);

	List<LessionDetail> findAll();

	boolean existsById(Long id);

	Optional<LessionDetail> findById(Long id);

	List<LessionDetail> saveAll(List<LessionDetail> entities);

	LessionDetail save(LessionDetail entity);

}

package com.example.demo.DAO;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Vocabulary;

public interface VocabularyDAO extends CrudRepository<Vocabulary, Long> {

}

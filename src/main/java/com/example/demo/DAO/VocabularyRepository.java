package com.example.demo.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Vocabulary;

public interface VocabularyRepository extends JpaRepository<Vocabulary, Long> {

}

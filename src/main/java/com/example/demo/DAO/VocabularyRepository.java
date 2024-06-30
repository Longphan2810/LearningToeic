package com.example.demo.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Thematic;
import com.example.demo.model.Vocabulary;

public interface VocabularyRepository extends JpaRepository<Vocabulary, Long> {
	
	@Query("select o from Vocabulary o where o.thematic =?1")
	public List<Vocabulary> FindAllByThematic(Thematic thematic);

}

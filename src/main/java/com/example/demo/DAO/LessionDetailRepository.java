package com.example.demo.DAO;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.LessionDetail;
import com.example.demo.model.Thematic;
import com.example.demo.model.User;
import com.example.demo.model.Vocabulary;



public interface LessionDetailRepository extends JpaRepository<LessionDetail, Long> {
    LessionDetail findByUserAndVocabulary(User user, Vocabulary vocabulary);
    
    @Query("SELECT o FROM LessionDetail o WHERE o.user = :user AND o.vocabulary.thematic = :thematic")
    List<LessionDetail> findByUserAndThematic(User user, Thematic thematic);
    @Query("SELECT o FROM LessionDetail o WHERE o.user = :user AND o.isActive = true")
    List<LessionDetail> findByActive(User user);
}

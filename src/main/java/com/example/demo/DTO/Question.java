package com.example.demo.DTO;

import com.example.demo.model.Vocabulary;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public abstract class Question {

	private Vocabulary voca;
	
	
}

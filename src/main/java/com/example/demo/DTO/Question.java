package com.example.demo.DTO;

import java.util.List;

import com.example.demo.model.Vocabulary;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public abstract class Question {

	private Vocabulary voca;
	
}

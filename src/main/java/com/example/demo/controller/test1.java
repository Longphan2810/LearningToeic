package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.DTO.Question;
import com.example.demo.DTO.QuestionSelect;
import com.example.demo.DTO.QuestionWrite;
import com.example.demo.model.Thematic;
import com.example.demo.model.Vocabulary;
import com.example.demo.service.impl.ThematicServiceImpl;
import com.example.demo.service.impl.VocabularyServiceImpl;

@Controller
public class test1 {

	@Autowired
	VocabularyServiceImpl vocabularyServiceImpl;

	@Autowired
	ThematicServiceImpl thematicServiceImpl;

	@RequestMapping("/test")
	@ResponseBody
	public String test1() {
		Optional<Thematic> t = thematicServiceImpl.findById(2l);
		List<Vocabulary> lVoca = vocabularyServiceImpl.FindAllByThematic(t.get());
		List<Question> listQuestion = new ArrayList<Question>();

		for (Vocabulary vocabulary : lVoca) {
			System.out.println(vocabulary.getEnglishVerion());
			double numberCheck = Math.round(Math.random());
			
		
			if (numberCheck == 0) {
				System.out.println("==========================");
				QuestionSelect questionCurrent  = new QuestionSelect(vocabulary, lVoca);
				System.out.println(questionCurrent.getVoca().getEnglishVerion());
				for (Vocabulary voca : questionCurrent.getList3VocabularyOther()) {
					System.out.println(voca.getEnglishVerion());
					
				}
				
				System.out.println("==========================");
				break;
			}
			else {
//				System.out.println("==========================");
//				Question questionCurrent  = new QuestionWrite(vocabulary);
//				System.out.println(questionCurrent.getVoca().getEnglishVerion());
//				listQuestion.add(questionCurrent);
//				System.out.println("input ");
//				System.out.println("==========================");
//				
//				
			}

			

		}

		return "";
	}

}

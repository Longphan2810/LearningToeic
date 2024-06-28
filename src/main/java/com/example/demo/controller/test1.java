package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.DTO.QuestionSelect;
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
		Optional<Thematic> t = thematicServiceImpl.findById(1l);
	    List<Vocabulary> lVoca =	vocabularyServiceImpl.FindAllByThematic(t.get());
		
	    for (Vocabulary vocabulary : lVoca) {
			QuestionSelect nq = new QuestionSelect(vocabulary,lVoca);
			System.out.println(nq.getVoca().getEnglishVerion());
			System.out.println("==========================");
			for (Vocabulary vocabulary2 : nq.getList3VocabularyOther()) {
				
				System.out.println(vocabulary2.getEnglishVerion());
			}
			break;
		}
	    
		return "";
	}
	
}

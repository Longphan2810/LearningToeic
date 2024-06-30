package com.example.demo.DTO;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.model.Vocabulary;
import com.example.demo.service.impl.VocabularyServiceImpl;

import lombok.Data;

@Data
public class QuestionSelect extends Question {

	@Autowired
	VocabularyServiceImpl vocabularyServiceImpl;

	List<Vocabulary> list3VocabularyOther = new ArrayList<Vocabulary>();

	public QuestionSelect(Vocabulary voca, List<Vocabulary> listInput) {
		super(voca, "select");
		fillListToCreateQuestion(voca, listInput);

	}

	private void fillListToCreateQuestion(Vocabulary voca, List<Vocabulary> list) {
		int size = list.size();

		List<Vocabulary> tempList = new ArrayList<>(list);
		tempList.remove(voca);
		Collections.shuffle(tempList);
		list3VocabularyOther.add(tempList.get(size/2));
		list3VocabularyOther.add(tempList.get(size/3));
		list3VocabularyOther.add(tempList.get(size/4));
		
		
		
		
	}

	@Override
	public List<Vocabulary> getlist3VocabularyOther() {
		return list3VocabularyOther;
	}

}

package com.example.demo.DTO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.model.Vocabulary;
import com.example.demo.service.impl.VocabularyServiceImpl;

import lombok.Data;

@Data
public class QuestionSelect extends Question {

	@Autowired
	VocabularyServiceImpl vocabularyServiceImpl;

	String format = "select";
	List<Vocabulary> list3VocabularyOther = new ArrayList<Vocabulary>();

	public QuestionSelect(Vocabulary voca, List<Vocabulary> listInput) {
		super(voca);
		fillListToCreateQuestion(voca, listInput);

	}

	private void fillListToCreateQuestion(Vocabulary voca, List<Vocabulary> list) {
		 int size = list.size();
	      
	        List<Vocabulary> tempList = new ArrayList<>(list);
	        tempList.remove(voca);
	        list3VocabularyOther.add(tempList.get(0));
	        list3VocabularyOther.add(tempList.get(size / 2 - 1));
	        list3VocabularyOther.add(tempList.get(size - 2));
	}

	@Override
	public String toString() {
		return "QuestionSelect [ , format=" + format + ", list4Vocabulary=" + list3VocabularyOther + "]";
	}

}

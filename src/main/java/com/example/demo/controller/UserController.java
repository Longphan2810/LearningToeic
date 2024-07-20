package com.example.demo.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.LessionDetailRepository;
import com.example.demo.DAO.ThematicRepository;
import com.example.demo.DAO.VocabularyRepository;
import com.example.demo.model.LessionDetail;
import com.example.demo.model.Thematic;
import com.example.demo.model.Vocabulary;
import com.example.demo.service.impl.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.server.PathParam;

import com.example.demo.model.User;

@Controller
public class UserController {
	@Autowired
	HttpServletRequest req;
	@Autowired
	SessionService session;
	@Autowired
	VocabularyRepository daoVoca;
	@Autowired
	ThematicRepository daoThe;
	@Autowired
	LessionDetailRepository LessionDetailRepository;
	


	@RequestMapping("/page1")
	public String requestMethodName() {
		return "User/Account";
	}

	@RequestMapping("/layout")
	public String requestLayout() {
		return "User/layout";
	}

	int lastNumber;

	@PostMapping("/Question/{id}")
	public String ques2(@PathVariable("id") Optional<Long> id, Model model,
			@RequestParam("vocaId") Optional<Long> vocaid, @RequestParam("choice") String luachon) {
		Optional<Vocabulary> voca = daoVoca.findById(vocaid.orElse(0l));
		
		User currentUser = (User) session.get("userCurrent");
		Vocabulary cauhoi = voca.orElse(null);
		

		if (currentUser == null) {
			
			
		} 
		
		 LessionDetail lessionDetail = LessionDetailRepository.findByUserAndVocabulary(currentUser, cauhoi);
		 
		    if (lessionDetail == null) {
		        lessionDetail = new LessionDetail();
		        lessionDetail.setVocabulary(cauhoi);
		        lessionDetail.setUser(currentUser);
		        lessionDetail.setActive(false);
		        lessionDetail.setNumberOfUses(0);
		    }
		    if (cauhoi.getEnglishVerion().equals(luachon)) {
		        lessionDetail.setNumberOfUses(lessionDetail.getNumberOfUses() + 1);
		        
		      
		        if (lessionDetail.getNumberOfUses() >= 5) {
		            lessionDetail.setActive(true);
		        }
		        if ( currentUser !=null) {
		        	LessionDetailRepository.save(lessionDetail);
				}
		        
		    }
		    
		    return "redirect:" + id.orElse(0L);
	}

	

	@RequestMapping("/Question/{id}")
	public String ques(@PathVariable("id") Optional<Long> id, Model model) {
		// tim chuyen de theo id
		Optional<Thematic> t = daoThe.findById(id.orElse(0L));

		// tim list tu vung theo chuyen de
		List<Vocabulary> listVoca = daoVoca.FindAllByThematic(t.orElse(null));
		model.addAttribute("id", id.orElse(0L));

		// add cau hoi
		Random rd = new Random();
		int number;
		do {
			number = rd.nextInt(12);
		} while (number == lastNumber);

		lastNumber = number;
		model.addAttribute("voca", listVoca.get(number));
		
		// add dap an vao format
		Vocabulary dapan = listVoca.get(number);// dap an temp 1
		String input = listVoca.get(number).getEnglishVerion();// dap an temp 2

		listVoca.remove(number);

		// random temp
		int temp = rd.nextInt(2);

		// temp 2
		if (temp == 1) {
			String[] output = input.toUpperCase().split("");
			List<String> listoutput = Arrays.asList(output);
			Collections.shuffle(listoutput);
			model.addAttribute("output", listoutput);
			return "User/QuestionType2";
		}
		// temp 1
		else {
			Collections.shuffle(listVoca);
			List<Vocabulary> listdapan = listVoca.subList(0, 3);
			listdapan.add(dapan);
			Collections.shuffle(listdapan);

			model.addAttribute("listdapan", listdapan);
			return "User/QuestionType1";
		}
	}

	@RequestMapping("/Question2")
	public String ques2(Model model) {
		String input = "Hello";
		String[] output = input.toUpperCase().split("");
		model.addAttribute("output", output);
		for (String string : output) {
			System.out.println(string);
		}
		return "User/QuestionType2";
	}

	@RequestMapping("/voca")
	public String requestVoca(Model model) {
	    List<Thematic> listThe = daoThe.findAll();
	    User currentUser = (User) session.get("userCurrent");
	    
	    if (currentUser != null) {
	        for (Thematic thematic : listThe) {
	            List<LessionDetail> details = LessionDetailRepository.findByUserAndThematic(currentUser, thematic);
	            int learnedCount = 0;
	            for (LessionDetail detail : details) {
	                if (detail.isActive()) {
	                    learnedCount++;
	                }
	            }
	            thematic.setLearnedVocabularyCount(learnedCount);
	        }
	    }
	    
	    model.addAttribute("u", listThe);
	    return "User/Vocabulary";
	}

	@RequestMapping("/info")
	public String requestInfo() {
		return "User/info";
	}

	@RequestMapping("/contact")
	public String requestContact() {
		return "User/contact";
	}

	@RequestMapping("/statistic")
	public String requestStatistic(Model model) {
		 User currentUser = (User) session.get("userCurrent");
		 List<LessionDetail> LessionDetail = LessionDetailRepository.findByActive(currentUser);
		 List<Vocabulary> Vocabulary = daoVoca.findAll();
		 int count = Vocabulary.size() - LessionDetail.size();
		 model.addAttribute("vocabUnlearned", count);
		 if (LessionDetail.size()>0) {
			 model.addAttribute("vocabActive", LessionDetail.size());
			 }
		
		return "User/statistic";
	}

	@RequestMapping("/")
	public String requestHome(Model model) {
		
		
		return "User/home2";
		
		
		
	}

	@RequestMapping("/home")
	public String requestHome2(Model model) {
	
		return "User/home2";
	}

	@RequestMapping("/account")
	public String requestaccount() {
		return "User/Account";
	}

	@RequestMapping("/login")
	public String requestlogin(Model model) {
		User user = new User();
		model.addAttribute("nguoiDung", user);
		return "User/Login";
	}
	
	@PostMapping("/login")
	public String login(Model model ) {
		  
		
		
		
		return "User/home2";
	}

	@RequestMapping("/register")
	public String requestregister(Model model) {
		User user = new User();
		model.addAttribute("nguoiDung", user);
		return "User/register";
	}
}

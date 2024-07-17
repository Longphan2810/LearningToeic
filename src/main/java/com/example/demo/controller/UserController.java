package com.example.demo.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.User;

@Controller
public class UserController {

	@RequestMapping("/page1")
	public String requestMethodName() {
		return "User/Account";
	}

	@RequestMapping("/layout")
	public String requestLayout() {
		return "User/layout";
	}

	@RequestMapping("/Question")
	public String ques() {
		return "User/QuestionType1";
	}

	@RequestMapping("/Question2")
	public String ques2(Model model) {
		String input = "Hello";
		String[] output = input.toUpperCase().split("");
		model.addAttribute("output",output);
		for (String string : output) {
			System.out.println(string);
		}
		return "User/QuestionType2";
	}

	@RequestMapping("/voca")
	public String requestVoca() {
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
	public String requestStatistic() {
		return "User/statistic";
	}


	@RequestMapping("/home")
	public String requestHome(Model model) {
		User user = new User();
		model.addAttribute("nguoiDung",user);
		return "User/home2";
	}

	@RequestMapping("/account")
	public String requestaccount() {
		return "User/Account";
	}

	
	@RequestMapping("/login")
	public String requestlogin(Model model) {
		User user = new User();
		model.addAttribute("nguoiDung",user);
		return "User/Login";
	}
	@RequestMapping("/register")
	public String requestregister(Model model) {
		User user = new User();
		model.addAttribute("nguoiDung",user);
		return "User/register";
	}
}

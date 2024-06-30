package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


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
	
	@RequestMapping("/voca")
	public String requestVoca() {
		return "User/Vocabulary";
	}
	
	@RequestMapping("/info")
	public String requestInfo() {
		return "User/info";
	}
	@RequestMapping("/statistic")
	public String requestStatistic() {
		return "User/statistic";
	}
	@RequestMapping("/home")
	public String requestHome() {
		return "User/home2";
	}
	
	@RequestMapping("/account")
	public String requestaccount() {
		return "User/Account";
	}
	
	
}

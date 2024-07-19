package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.example.demo.model.User;
import com.example.demo.service.impl.AccountServiceImpl;
import com.example.demo.service.impl.CookieService;
import com.example.demo.service.impl.SessionService;
@Controller
public class LoginAndLogoutController {


	@Autowired 
	AccountServiceImpl userServiceImpl;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	CookieService cookieService;
	

	
	@GetMapping("/login-form")
	public String getloginForm() {
		if(sessionService.get("userCurrent")!=null) {
			return "redirect:/";
		}
		return "loginAndSignup";

	}
	
	@GetMapping("/logout")
	public String getlogOut() {
		sessionService.set("userCurrent",null);
		cookieService.remove("JSESSIONID");
		return "forward:/";

	}
	
	@PostMapping("/login")
	public String getlogin(@RequestParam("email")String email,@RequestParam("password")String pass,Model model) {
		User userCurrent = userServiceImpl.findByEmail(email.trim());
		if(userCurrent==null) {
			
			model.addAttribute("message", "Không tồn tại account này");
			return "User/Login";
			
		}
		
		if(!userCurrent.getStatus().trim().equalsIgnoreCase("active")) {
			
			model.addAttribute("message", "Tài khoản chưa được xác thực hoặc đã bị khoá bởi Admin");
			return "User/Login";
			
		}
		
		if(!userCurrent.getPassword().equals(pass)) {
			
			model.addAttribute("saiPass", true);
			return "User/Login";
			
		}
		
	
		sessionService.set("userCurrent", userCurrent);
		System.out.println("ok");
		
		return "redirect:/";

	}
	
	
	
}

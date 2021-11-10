package com.dbs.movierenting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	 
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String loginhome(){
		System.out.println("Hey base url called");
		return "redirect:view/dashboard.jsp";
	}
	
	
}

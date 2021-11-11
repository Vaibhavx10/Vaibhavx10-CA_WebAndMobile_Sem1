package com.dbs.movierenting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * baseLogin() { System.out.println("Hey base url called"); return
	 * "redirect:view/login.jsp"; }
	 */

	@RequestMapping(value = "view/userValidation", method = RequestMethod.POST)
	public String loginhome(ModelMap model, HttpServletRequest request) {

		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		System.out.println("loginhome :: " + uname + " pass :: " + upass);
		System.out.println("loginhome :: " + uname.hashCode());
		System.out.println("loginhome :: " + "a".hashCode());
		
		
		if (uname.hashCode() == "a".hashCode()) {
			System.out.println("Hey base url called");
			return "redirect:/view/dashboard.jsp";
		} else {
			return "redirect:/view/login.jsp";
		}
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String temp() {
		System.out.println("Hey base url called");
		return "redirect:view/login.jsp";
	}

	public static void main(String[] args) {
		
		String a  = "a";
		if (a.equals("a")) {
			System.out.println("All Good !! ");
		}

	}

}

package com.example.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	// a controller method to show the initial form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}

	// a controller method to process form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}

	// a new controller method to read form data
	// and add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		// read the request parameter
		String name = "Yo! " + request.getParameter("studentName").toUpperCase();
		model.addAttribute("message", name);
		return "helloworld";
	}

	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String studentName, Model model) {
		model.addAttribute("message", "Hey! " + studentName.toUpperCase());
		return "helloworld";
	}

}

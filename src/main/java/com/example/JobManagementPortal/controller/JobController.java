package com.example.JobManagementPortal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.JobManagementPortal.model.JobPost;

@Controller
public class JobController {
	
	@GetMapping({"/" , "/home"})
	public String home() {
		return "home";
	}

	@GetMapping("/addjob")
	public String addjob() {
		return "addjob";
	}
	
	@PostMapping("handleForm")
	public String handleForm(JobPost jobPost) {
		return "success";
	}
}

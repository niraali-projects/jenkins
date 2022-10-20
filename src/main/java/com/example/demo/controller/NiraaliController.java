package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/app/v1")
public class NiraaliController {
	
	@GetMapping("/show")
	public String displayData() {
		return "Welcome to spring boot and tomcat integration externally";
	}

}

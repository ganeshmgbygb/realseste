package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Contact {
	@RequestMapping(value = "/index", method= RequestMethod.GET)

public String indexpage() {
		return "index";
		
	}
}


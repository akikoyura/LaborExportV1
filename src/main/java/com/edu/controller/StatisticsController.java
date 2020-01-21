package com.edu.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatisticsController {
	@RequestMapping(value="/Statistics")
	
	public String returnPage()
	{
		return "Statistics";
	}
}

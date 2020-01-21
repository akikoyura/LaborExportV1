package com.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.edu.entities.Recruiter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.edu.service.CompanyDetailService;

@Controller
public class CompanyController {
	@Autowired
	private CompanyDetailService companyDetailService;
	
	@RequestMapping(value="/CompanyManagement")
	public String returnPage()
	{
		return "CompanyManagement";
	}
	@RequestMapping(value="/getAllCompany",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody List<HashMap<String,String>>getAllCompany()
	{
		List<HashMap<String, String>> listCompany = companyDetailService.getAllCompany();
		return listCompany;
		
	}
	@RequestMapping(value = "AddCompany")
	public String returnAddCompanyPage(Model model){
		Recruiter recruiter = new Recruiter();
		Map<String,String> job = companyDetailService.getJob();
		model.addAttribute("company",recruiter);
		model.addAttribute("jobList",job);
		return "addCompany";
	}
	@GetMapping("/delete")
	public String deleteCompany(@RequestParam("id")int theId){
		companyDetailService.deleteCompany(theId);
		return "redirect:/CompanyManagement";
	}
	@PostMapping("/saveCompany")
	public String saveCompany(@ModelAttribute("company") Recruiter recruiter){
		companyDetailService.saveCompany(recruiter);
		return "redirect:/CompanyManagement";
	}
	@GetMapping("editCompany")
	public String showFormForUpdate(@RequestParam("id")int theId,Model model){
		Recruiter theRecruiter = companyDetailService.getRecruiter(theId);
		Map<String,String> job = companyDetailService.getJob();
		model.addAttribute("jobList",job);
		model.addAttribute("company",theRecruiter);
		return "editCompany";
	}

}

package com.edu.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.service.DashboardService;

@Controller
public class DashboardController {
	
	@Autowired
	private DashboardService dashboardService;
	
	@RequestMapping(value= {"/login","/"})
	public String login(@RequestParam (value="error",required=false) final String error,final Model model)
	{
		if(error!=null)
		{
			model.addAttribute("message","Login Failed!");
		}
		return "login";
	}
	@RequestMapping("/admin")
	public String admin()
	{
		return "admin";
	}
	@RequestMapping("/user")
	public String user()
	{
		return "user";
	}
	
	@RequestMapping("/logout")
	public String logout(final Model model)
	{
		model.addAttribute("message","Logged out");
		return "login";
	}
	@RequestMapping("/dashboard")
	public String dashboard()
	{
		return "dashboard";
	}
	
	@RequestMapping(value="/jobChart",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody List<HashMap<String, String>> jobChart()
	{
		List<HashMap<String, String>> theJobChartHashMaps  = dashboardService.jobStatistic();
		return theJobChartHashMaps;
	}
	
	@RequestMapping(value="/employeeChart",method=RequestMethod.GET,produces="application/json" )
	public @ResponseBody List<HashMap<String, String>> employeeChart()
	{
		List<HashMap<String, String>> theEmployeeHashMaps = dashboardService.employeeStatistic();
		return theEmployeeHashMaps;
	}
	@RequestMapping(value="/siteChart",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody List<HashMap<String, String>> siteChart()
	{
		List<HashMap<String, String>> theSiteChartHashMaps = dashboardService.siteStatistic();
		return theSiteChartHashMaps;
	}
	
	@RequestMapping(value="/numEmployee",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody Long getNumberEmployee()
	{
		return dashboardService.getNumberEmployee();
	}
	@RequestMapping(value="/numJob",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody Long getNumberJob()
	{
		return dashboardService.getNumberJob();
	}
	@RequestMapping(value="/numSite",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody Long getNumberSite()
	{
		return dashboardService.getNumberSite();
	}
	
	@RequestMapping(value="/numCompany",method= RequestMethod.GET,produces="application/json")
	public @ResponseBody Long getNumberCompany()
	{
		return dashboardService.getNumberCompany();
	}
	
}

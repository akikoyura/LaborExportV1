package com.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.edu.entities.Employee;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.edu.service.WorkerService;

@Controller
public class EmployeeController {
	@Autowired
	private WorkerService workerService;
	
	@RequestMapping(value="/WorkerManagement")
	public String returnWorkManagement()
	{
		return "WorkerManagement";
	}
	
	@RequestMapping(value="/showEmployee",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody List<HashMap<String, String>> getAllEmployee()
	{
		List<HashMap<String, String>> maps= workerService.getAllEmployee();
		return maps;
	}
	@GetMapping(value = "/AddWorker")
	public String returnAddWorker(Model model){
		Employee employee = new Employee();
		Map<String,String> job = workerService.getJob();
		model.addAttribute("employee",employee);
		model.addAttribute("jobList",job);
		return "addWorker";
	}
	@PostMapping(value = "/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee")Employee employee){
		workerService.saveEmployee(employee);
		return "redirect:/WorkerManagement";
	}
	@GetMapping(value = "/deleteEmployee")
	public String deleteEmployee(@RequestParam("id") int theId){
		workerService.deleteWorker(theId);
		return "redirect:/WorkerManagement";
	}
	@GetMapping(value = "/editEmployee")
	public String editEmployee( @RequestParam("id") int theId, Model model){
		Employee employee = workerService.getEmployee(theId);
		Map<String,String> job = workerService.getJob();
		model.addAttribute("employee",employee);
		model.addAttribute("jobList",job);
		return "editWorker";
	}
}

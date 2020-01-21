package com.edu.service;

import com.edu.entities.Employee;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface WorkerService {
	public List<HashMap<String, String>> getAllEmployee();
	public void deleteWorker(int id);
	public Map<String,String> getJob();
	public void saveEmployee(Employee employee);
	public Employee getEmployee(int theId);
}

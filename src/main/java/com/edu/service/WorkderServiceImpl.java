package com.edu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import com.edu.entities.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.repository.WorkerRepository;

@Repository
public class WorkderServiceImpl implements WorkerService{
	
	@Autowired
	private WorkerRepository workerRepository;

	@Transactional
	public List<HashMap<String, String>> getAllEmployee() {
		return workerRepository.getAllEmployee();
	}
	@Transactional
	public void deleteWorker(int id) {
		workerRepository.deleteWorker(id);
	}
	@Transactional
	public Map<String, String> getJob() {
		return workerRepository.getJob();
	}
	@Transactional
	public void saveEmployee(Employee employee) {
		workerRepository.saveEmployee(employee);
	}
	@Transactional
	public Employee getEmployee(int theId){
		return workerRepository.getEmployee(theId);
	}
}

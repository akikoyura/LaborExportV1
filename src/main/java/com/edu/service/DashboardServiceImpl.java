package com.edu.service;

import java.util.HashMap;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.repository.DashboardRepository;

@Service
public class DashboardServiceImpl implements DashboardService {
	
	@Autowired
	private DashboardRepository dashboardRepository;
	
	@Transactional
	public List<HashMap<String, String>> jobStatistic() {
		return dashboardRepository.jobStatistic();
	}
	@Transactional
	public List<HashMap<String, String>> employeeStatistic() {
		return dashboardRepository.employeeStatistic();
	}
	@Transactional
	public List<HashMap<String, String>> siteStatistic() {
		return dashboardRepository.siteStatistic();
	}
	@Transactional
	public Long getNumberEmployee() {
		return dashboardRepository.getNumberEmployee();
	}
	@Transactional
	public Long getNumberSite() {
		return dashboardRepository.getNumberSite();
	}
	@Transactional
	public Long getNumberJob() {
		return dashboardRepository.getNumberJob();
	}
	@Transactional
	public Long getNumberCompany() {
		return dashboardRepository.getNumberCompany();
	}

}

package com.edu.service;

import java.util.HashMap;
import java.util.List;

public interface DashboardService {
	
	public List<HashMap<String, String>> jobStatistic();

	public List<HashMap<String, String>> employeeStatistic();

	public List<HashMap<String, String>> siteStatistic();
	public Long getNumberEmployee();
	public Long getNumberSite();
	public Long getNumberJob();
	public Long getNumberCompany();
}

package com.edu.service;

import com.edu.entities.Recruiter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface CompanyDetailService {
	public List<HashMap<String, String>>getAllCompany();
	public void deleteCompany(int theId);
	public void saveCompany(Recruiter recruiter);
	public Map<String, String> getJob();
	public Recruiter getRecruiter(int theId);
}

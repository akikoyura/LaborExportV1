package com.edu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import com.edu.entities.Recruiter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.repository.CompanyRepository;

@Service
public class CompanyDetailServiceImpl implements CompanyDetailService {
	@Autowired
	private CompanyRepository companyRepository;
	@Transactional
	public List<HashMap<String, String>> getAllCompany() {
		return companyRepository.getAllCompany();
	}
	@Transactional
	public void deleteCompany(int theId){
		companyRepository.deleteCompany(theId);
	}
	@Transactional
	public void saveCompany(Recruiter recruiter) {
		companyRepository.saveCompany(recruiter);
	}
	@Transactional
	public Map<String, String> getJob() {
		return companyRepository.getJob();
	}
	@Transactional
	public Recruiter getRecruiter(int theId){
		return companyRepository.getRecruiter(theId);
	}
}

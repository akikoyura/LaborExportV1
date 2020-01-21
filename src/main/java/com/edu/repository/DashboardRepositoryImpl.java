package com.edu.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DashboardRepositoryImpl implements DashboardRepository {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<HashMap<String, String>> jobStatistic() {
		List<HashMap<String, String>> map = new ArrayList<HashMap<String, String>>();
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select jobName, count(jobName) from job group by jobName";
		List<Object[]> jobsList = session.createQuery(hql,Object[].class).getResultList();
		for(Object[] resultJob : jobsList)
		{
			HashMap<String, String> jobHashMap = new HashMap<String, String>();
			jobHashMap.put("JobName",resultJob[0].toString());
			jobHashMap.put("Number", resultJob[1].toString());
			map.add(jobHashMap);
		}
		return map;
	}

	public List<HashMap<String, String>> employeeStatistic() {
		List<HashMap<String,String >> maps = new ArrayList<HashMap<String,String>>();
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select a.jobName, count(b.JobId) from job a, employee b where a.jobId = b.JobId group by jobName ";
		List<Object[]> employeeList = session.createQuery(hql,Object[].class).getResultList();
		for(Object[] employeeResult : employeeList)
		{
			HashMap<String, String> employeeHashMap = new HashMap<String, String>();
			employeeHashMap.put("JobName", employeeResult[0].toString());
			employeeHashMap.put("Number", employeeResult[1].toString());
			maps.add(employeeHashMap);
		}
		return maps;
	}

	public List<HashMap<String, String>> siteStatistic() {
		List<HashMap<String, String>> maps = new ArrayList<HashMap<String,String>>();
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select country, count(country) from recruiter group by country";
		List<Object[]> countryList = session.createQuery(hql,Object[].class).getResultList();
		for(Object[] resultCountry: countryList)
		{
			HashMap<String, String> siteHashMap = new HashMap<String, String>();
			siteHashMap.put("Country", resultCountry[0].toString());
			siteHashMap.put("Number", resultCountry[1].toString());
			maps.add(siteHashMap);
		}
		return maps;
	}

	public Long getNumberEmployee() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select count(employeeId) from employee";
		Query<Long> query = session.createQuery(hql);
		Long result = query.uniqueResult();
		return result;
	}

	public Long getNumberSite() {
		Session session =sessionFactory.getCurrentSession();
		String hql = "Select count(country) from recruiter";
		Query<Long> query=session.createQuery(hql);
		Long result = query.uniqueResult();
		return result;
	}

	public Long getNumberJob() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select count(jobId) from job";
		Query<Long> query = session.createQuery(hql);
		Long result = query.uniqueResult();
		return result;
	}

	public Long getNumberCompany() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "Select count(company) from job";
		Query<Long> query= session.createQuery(hql);
		Long result = query.uniqueResult();
		return result;
	}
	
	
}

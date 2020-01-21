package com.edu.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.edu.entities.Recruiter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyRepositoryImpl implements CompanyRepository {
	
	@Autowired
	private SessionFactory sessionFactory;
	public List<HashMap<String, String>> getAllCompany() {
		List<HashMap<String, String>> maps = new ArrayList<HashMap<String,String>>();
		Session session = sessionFactory.getCurrentSession();
		String hql = "select a.recruiterId, a.companyName,a.email, a.country,a.phoneNumber,a.requiredHealthyCert," +
				"a.requiredWeight,a.requiredHeight,a.requiredDegreeCert,b.jobName,a.requiredNumberOfEmployee from " +
				"recruiter a inner join job b on a.jobId=b.jobId";
		List<Object[]> companyList = session.createQuery(hql,Object[].class).getResultList(); 
		for(Object[] resultCompany: companyList)
		{
			HashMap<String, String> companyHashMap = new HashMap<String, String>();
			companyHashMap.put("recruiterId",resultCompany[0].toString());
			companyHashMap.put("companyName", resultCompany[1].toString());
			companyHashMap.put("email",resultCompany[2].toString());
			companyHashMap.put("country", resultCompany[3].toString());
			companyHashMap.put("phoneNumber", resultCompany[4].toString());
			companyHashMap.put("requiredHealthycert", resultCompany[5].toString());
			companyHashMap.put("requiredWeight",resultCompany[6].toString());
			companyHashMap.put("requiredHeight",resultCompany[7].toString());
			companyHashMap.put("requiredDegreeCert", resultCompany[8].toString());
			companyHashMap.put("jobName",resultCompany[9].toString());
			companyHashMap.put("requiredNumberOfEmployee", resultCompany[10].toString());
			maps.add(companyHashMap);
		}
		return maps;
	}

	public void deleteCompany(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Recruiter theRecruiter = session.byId(Recruiter.class).load(theId);
		session.delete(theRecruiter);
	}

	public void saveCompany(Recruiter recruiter) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(recruiter);
	}

	public Map<String, String> getJob() {
		Map<String,String> maps = new HashMap<String, String>();
		Session session = sessionFactory.getCurrentSession();
		String hql = "select jobId,jobName from job";
		List<Object[]> JobsList = session.createQuery(hql, Object[].class).getResultList();
		for (Object[] resultJob : JobsList) {
			maps.put(resultJob[0].toString(),resultJob[1].toString());
		}
		return maps;
	}

	public Recruiter getRecruiter(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Recruiter recruiter = session.get(Recruiter.class,theId);
		return recruiter;
	}

}

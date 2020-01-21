package com.edu.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.edu.entities.Job;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

@Repository
public class JobRepositoryImpl implements JobRepository {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Job> getJobs() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
		CriteriaQuery<Job> criteriaQuery = criteriaBuilder.createQuery(Job.class);
		Root<Job> root = criteriaQuery.from(Job.class);
		criteriaQuery.select(root);
		Query query  = session.createQuery(criteriaQuery);
		return query.getResultList();
	}

	public List<HashMap<String, String>> getJob(int id) {
		List<HashMap<String , String>> jobs = new ArrayList<HashMap<String,String>>();
		Session session = sessionFactory.getCurrentSession();
		String hql = "select jobId,jobName,company from job where jobId= :key";
		Query<Object[]> query = session.createQuery(hql,Object[].class);
		query.setParameter("key", id);
		List<Object[]> jobsList = query.getResultList();
		for(Object[] resultJob : jobsList)
		{
			HashMap<String, String> jobHashMap = new HashMap<String, String>();
			jobHashMap.put("jobId",resultJob[0].toString());
			jobHashMap.put("jobName", resultJob[1].toString());
			jobHashMap.put("company", resultJob[2].toString());
			jobs.add(jobHashMap);
		}
		return jobs;
	}
	public void updateJob(int jobId, String jobName, String company) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "update job s set s.jobName= :key2, s.company= :key3 where s.jobId= :key1";
		Query query = session.createQuery(hql);
		query.setParameter("key1", jobId);
		query.setParameter("key2", jobName);
		query.setParameter("key3", company);
		query.executeUpdate();
	}


	public void deleteJob(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Job job = session.byId(Job.class).load(theId);
		session.delete(job);
	}

	public void saveJob(Job job) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(job);
	}

}

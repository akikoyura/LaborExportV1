package com.edu.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.edu.entities.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkerRepositoryImpl implements WorkerRepository {
	@Autowired
	private SessionFactory sessionFactory;

	public List<HashMap<String, String>> getAllEmployee() {
		List<HashMap<String, String>> maps = new ArrayList<HashMap<String, String>>();
		Session session = sessionFactory.getCurrentSession();
		String hql = " select b.employeeId, b.fullName, b.dateOfBirth,b.gender,b.address,b.phoneNumber,b.height,b.weight,b.healthyCert,b.degreeCert, a.jobName from employee b inner join job a on a.jobId=b.JobId";
		List<Object[]> employeesList = session.createQuery(hql, Object[].class).getResultList();
		for (Object[] resultemployee : employeesList) {
			HashMap<String, String> employeeHashMap = new HashMap<String, String>();
			employeeHashMap.put("employeeId", resultemployee[0].toString());
			employeeHashMap.put("fullName", resultemployee[1].toString());
			employeeHashMap.put("dateOfBirth", resultemployee[2].toString());
			employeeHashMap.put("gender", resultemployee[3].toString());
			employeeHashMap.put("address", resultemployee[4].toString());
			employeeHashMap.put("phoneNumber", resultemployee[5].toString());
			employeeHashMap.put("height", resultemployee[6].toString());
			employeeHashMap.put("weight", resultemployee[7].toString());
			employeeHashMap.put("healthyCert", resultemployee[8].toString());
			employeeHashMap.put("degreeCert", resultemployee[9].toString());
			employeeHashMap.put("jobName", resultemployee[10].toString());
			maps.add(employeeHashMap);
		}
		return maps;
	}

	public void deleteWorker(int id) {
		Session session  = sessionFactory.getCurrentSession();
		Employee employee = session.byId(Employee.class).load(id);
		session.delete(employee);
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

	public void saveEmployee(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(employee);
	}

	public Employee getEmployee(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Employee theEmployee= session.get(Employee.class,theId);
		return theEmployee;
	}
}

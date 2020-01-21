package com.edu.repository;

import com.edu.entities.Job;

import java.util.HashMap;
import java.util.List;


public interface JobRepository {
	
	public List<HashMap<String, String>>getJob(int id);
	public void updateJob(int jobId,String jobName,String company);

	public List<Job> getJobs();
	public void saveJob(Job theJob);
	public void deleteJob(int theId);

}

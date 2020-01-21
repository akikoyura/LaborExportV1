package com.edu.service;

import java.util.HashMap;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.entities.Job;
import com.edu.repository.JobRepository;

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobRepository jobRepository;

    @Transactional
    public List<HashMap<String, String>> getJob(int id) {
        return jobRepository.getJob(id);
    }

    @Transactional
    public void updateJob(int jobId, String jobName, String company) {
        jobRepository.updateJob(jobId, jobName, company);
    }

    @Transactional
    public List<Job> getJobs() {
        return jobRepository.getJobs();
    }

    @Transactional
    public void saveJob(Job theJob) {
        jobRepository.saveJob(theJob);
    }

    @Transactional
    public void deleteJob(int theId) {
        jobRepository.deleteJob(theId);
    }

}
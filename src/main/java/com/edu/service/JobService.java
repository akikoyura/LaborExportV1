package com.edu.service;

import com.edu.entities.Job;

import java.util.HashMap;
import java.util.List;

public interface JobService {
    List<HashMap<String, String>> getJob(int id);

    void updateJob(int jobId, String jobName, String company);

    List<Job> getJobs();

    void saveJob(Job theJob);

    void deleteJob(int theId);
}

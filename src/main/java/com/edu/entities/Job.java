package com.edu.entities;

import java.io.Serializable;
import javax.persistence.*;

@Entity(name = "job")
public class Job implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
    @Column(name = "JobId")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer jobId;
    @Column(name = "JobName")
    private String jobName;
    @Column(name = "Company")
    private String company;

    public Integer getJobId() {
        return jobId;
    }
    
    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Job() {
    }

	public Job(Integer jobId, String jobName, String company) {
		this.jobId = jobId;
		this.jobName = jobName;
		this.company = company;
	}
}

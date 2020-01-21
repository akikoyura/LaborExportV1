package com.edu.entities;

import java.io.Serializable;

import javax.persistence.*;

@Entity(name = "recruiter")
public class Recruiter implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "RecruiterId")
    private Integer recruiterId;
    @Column(name = "CompanyName")
    private String companyName;
    @Column(name = "Email")
    private String email;
    @Column(name = "Country")
    private String country;
    @Column(name = "Phone")
    private String phoneNumber;
    @Column(name = "RequiredHealthyCert")
    private Boolean requiredHealthyCert;
    @Column(name = "RequiredWeight")
    private Integer requiredWeight;
    @Column(name = "RequiredHeight")
    private Integer requiredHeight;
    @Column(name = "RequiredDegreeCert")
    private Boolean requiredDegreeCert;
    @Column(name = "JobId")
    private Integer jobId;
    @Column(name = "RequiredNumberOfEmployee")
    private Integer requiredNumberOfEmployee;

    public Integer getRecruiterId() {
        return recruiterId;
    }

    public void setRecruiterId(Integer recruiterId) {
        this.recruiterId = recruiterId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Boolean getRequiredHealthyCert() {
        return requiredHealthyCert;
    }

    public void setRequiredHealthyCert(Boolean requiredHealthyCert) {
        this.requiredHealthyCert = requiredHealthyCert;
    }

    public Integer getRequiredWeight() {
        return requiredWeight;
    }

    public void setRequiredWeight(Integer requiredWeight) {
        this.requiredWeight = requiredWeight;
    }

    public Integer getRequiredHeight() {
        return requiredHeight;
    }

    public void setRequiredHeight(Integer requiredHeight) {
        this.requiredHeight = requiredHeight;
    }

    public Boolean getRequiredDegreeCert() {
        return requiredDegreeCert;
    }

    public void setRequiredDegreeCert(Boolean requiredDegreeCert) {
        this.requiredDegreeCert = requiredDegreeCert;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public Integer getRequiredNumberOfEmployee() {
        return requiredNumberOfEmployee;
    }

    public void setRequiredNumberOfEmployee(Integer requiredNumberOfEmployee) {
        this.requiredNumberOfEmployee = requiredNumberOfEmployee;
    }

    public Recruiter() {
    }

    public Recruiter(Integer recruiterId, String companyName, String email, String country, String phoneNumber, Boolean requiredHealthyCert, Integer requiredWeight, Integer requiredHeight, Boolean requiredDegreeCert, Integer jobId, Integer requiredNumberOfEmployee) {
        this.recruiterId = recruiterId;
        this.companyName = companyName;
        this.email = email;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.requiredHealthyCert = requiredHealthyCert;
        this.requiredWeight = requiredWeight;
        this.requiredHeight = requiredHeight;
        this.requiredDegreeCert = requiredDegreeCert;
        this.jobId = jobId;
        this.requiredNumberOfEmployee = requiredNumberOfEmployee;
    }
}


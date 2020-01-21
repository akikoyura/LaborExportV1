package com.edu.entities;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "employee")
public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EmployeeID",nullable = false)
    private Integer employeeId;
    @Column(name = "FullName")
    private String fullName;
    @Column(name = "DateOfBirth")
    private Date dateOfBirth;
    @Column(name = "Gender")
    private String gender;
    @Column(name = "Address")
    private String address;
    @Column(name = "PhoneNumber")
    private String phoneNumber;
    @Column(name = "Height")
    private Integer height;
    @Column(name = "Weight")
    private Integer weight;
    @Column(name = "HealthyCert")
    private Boolean healthyCert;
    @Column(name = "DegreeCert")
    private Boolean degreeCert;
    @Column(name = "JobId")
    private Integer JobId;

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Boolean getHealthyCert() {
        return healthyCert;
    }

    public void setHealthyCert(Boolean healthyCert) {
        this.healthyCert = healthyCert;
    }

    public Boolean getDegreeCert() {
        return degreeCert;
    }

    public void setDegreeCert(Boolean degreeCert) {
        this.degreeCert = degreeCert;
    }

    public Integer getJobId() {
        return JobId;
    }

    public void setJobId(Integer jobId) {
        JobId = jobId;
    }

    public Employee() {
    }

    public Employee(String fullName, Date dateOfBirth, String gender, String address, String phoneNumber, Integer height, Integer weight, Boolean healthyCert, Boolean degreeCert, Integer jobId) {
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.height = height;
        this.weight = weight;
        this.healthyCert = healthyCert;
        this.degreeCert = degreeCert;
        JobId = jobId;
    }
}

package com.edu.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="role",catalog="spring_security")
public class Role implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique= true,nullable=false)
	private Integer id;
	@Column(name="name",length=45)
	private String name;
	@OneToMany(fetch=FetchType.LAZY,mappedBy="role")
	private Set<UsersRoles> usersRoles = new HashSet<UsersRoles>(0);
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<UsersRoles> getUsersRoles() {
		return usersRoles;
	}
	public void setUsersRoles(Set<UsersRoles> usersRoles) {
		this.usersRoles = usersRoles;
	}
	
	
	public Role() {
		super();
	}
	
	public Role(String name, Set<UsersRoles> usersRoles) {
		this.name = name;
		this.usersRoles = usersRoles;
	}
	
	
}

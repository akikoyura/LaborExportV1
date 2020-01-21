package com.edu.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="users_roles",catalog="spring_security")
public class UsersRoles implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="role")
	private Role role;
	@ManyToOne(fetch =FetchType.EAGER)
	@JoinColumn(name="user")
	private User users;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	
	public UsersRoles() {
		super();
	}
	public UsersRoles( Role role, User users) {
		this.role = role;
		this.users = users;
	}
	
	
	
}

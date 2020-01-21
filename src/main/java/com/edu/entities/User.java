package com.edu.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

@Entity
@Table(name="users",catalog="spring_security",uniqueConstraints=@UniqueConstraint(columnNames="username"))
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",unique= true,nullable = false)
	private Integer id;
	@Column(name="username",unique=true,length=45)
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="enabled",nullable=false,columnDefinition="TINYINT(1)")
	private Boolean enabled;
	@OneToMany(fetch = FetchType.EAGER,mappedBy="users")
	private Set<UsersRoles> usersRoles = new HashSet<UsersRoles>();
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public Set<UsersRoles> getUsersRoles() {
		return usersRoles;
	}
	public void setUsersRoles(Set<UsersRoles> usersRoles) {
		this.usersRoles = usersRoles;
	}
	
	public User() {
		super();
	}
	
	public User(Integer id, String username, String password, Boolean enabled, Set<UsersRoles> usersRoles) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.usersRoles = usersRoles;
	}
	
	@Transient
	public List<GrantedAuthority> getAuthorities()
	{
		List<GrantedAuthority>  authorities = new ArrayList<GrantedAuthority>();
		for(UsersRoles usersRoles: this.usersRoles) {
			authorities.add(new SimpleGrantedAuthority(usersRoles.getRole().getName()));
		}
		return authorities;
	}
	
}

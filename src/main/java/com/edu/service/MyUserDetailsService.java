package com.edu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.edu.repository.UserRepository;

@Service
public class MyUserDetailsService implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		com.edu.entities.User user = userRepository.loadUserByUsername(username);
		if(user ==null)
		{
			return null;
		}
		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired =true;
		boolean accountNonLocked = true;
		return new User(username,user.getPassword(),enabled,accountNonExpired,credentialsNonExpired,accountNonLocked,user.getAuthorities());
	}
	
}

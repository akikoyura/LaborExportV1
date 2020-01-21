package com.edu.repository;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.edu.entities.User;

@Repository(value="userRepository")
@Transactional(rollbackFor=Exception.class)
public class UserRepository {
	@Autowired
	private SessionFactory sessionFactory;
	
	public User loadUserByUsername(final String username)
	{
		List<User> users = new ArrayList<User>();
	    Session session = sessionFactory.getCurrentSession();
	    users = session.createQuery("From User where username= :key", User.class).setParameter("key", username).getResultList();
		if(users.size()>0)
		{
			return users.get(0);
		}
		else {
			return null;
		}
	}
}

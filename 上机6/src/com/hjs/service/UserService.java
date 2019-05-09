package com.hjs.service;

import com.hjs.entity.User;

public interface UserService {
	public boolean saveUser(User user);
	
	public User findUser(User user);
	

}

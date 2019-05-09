package com.hjs.service.Impl;

import com.hjs.dao.UserDAO;
import com.hjs.entity.User;
import com.hjs.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDAO userDao;
	

	public UserDAO getUserDao() {
		return userDao;
	}


	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}


	public boolean saveUser(User user) {
		
		//debug
		System.out.println("进入了service的saveUser()方法");
		
		User exitUser = this.userDao.findUser(user);//注册时查找是否已存在用户
		if(exitUser == null){
			this.userDao.saveUser(user);//不存在,就进行保存
			
			//debug
			System.out.println("service保存成功!");
			
			return true;//注册成功
			
		}else{
			
			//debug
			System.out.println("service保存失败");
			System.out.println("已经存在该用户");
			System.out.println("退出了service的saveUser()方法");
			
			return false;
		}
	
	}

	
	public User findUser(User user) {
		
		return userDao.findUser(user);
	}
	

}

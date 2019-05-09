package com.hjs.action;

import com.hjs.entity.User;
import com.hjs.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport{
	
	private UserService userservice;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}


	public String execute() throws Exception {
		
		   //debug
			System.out.println("进入了RegistAction的执行方法");
			System.out.println("成功拿到用户名:"+this.user.getUserName());
		
			boolean flag = this.userservice.saveUser(this.user);
			
		if(flag){
			System.out.println("action保存成功!");
		return SUCCESS;
	}else
		System.out.println("action保存失败!");
		System.out.println("退出了RegistAction的执行方法,跳到注册失败页面");
	    return INPUT;
	}
	
}

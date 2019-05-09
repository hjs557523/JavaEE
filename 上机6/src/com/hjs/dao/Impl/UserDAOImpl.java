package com.hjs.dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.hjs.dao.UserDAO;
import com.hjs.entity.User;


public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {


    //用户注册并写到数据库
	public void saveUser(User user) {
		
		//debug
		System.out.println("进入了DAO的saveUser()方法");
		
	   this.getHibernateTemplate().save(user);//只是保存在了缓存里
	   this.getHibernateTemplate().flush();
	   
	   
		//debug
	   System.out.println("DAO保存成功,退出DAO的saveUser()方法");
	
	}
	
	
	//通过数据库查询,验证用户是否为已注册用户
	public User findUser(User user) {
		//debug
		System.out.println("进入了DAO的findUser()方法");
		
	    User exitUser = new User();
	    exitUser = null;
	    
	    //hql查询语句
	    String hql = "from User user where user.userName = '" + user.getUserName() + 
	    		     "' and user.userPassword = '" + user.getUserPassword()+"'";
	    
	    //将查询结果放到userlist里
	    List<User> userlist = (List<User>) this.getHibernateTemplate().find(hql);
	    
	    //如果查询结果不为空
	    if(userlist.size()>0){
	    	exitUser = userlist.get(0);//用户唯一
	    	System.out.println("存在该用户");
	    }
	    
	    //debug
	    System.out.println("DAO查询结束,退出DAO的findUser()方法");
	    
	    return exitUser;//无论对象是否为空,都进行返回
	    
	}

	public String updateUser(User user) {
		
		return null;
	}


	public String deleteUser(User user) {
		
		return null;
	}

}

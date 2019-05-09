package com.hjs.entity;


public class User {

	private int userId;
	private String userName;
	private String userPassword;
	private String identityNum;
	private int phone;
	private String email;
	private int gender;
	private int admin;

	


	/*默认构造方法 */
	public User() {
	}

	/*不为null的所有属性值构造方法 */
	public User(String userName, String userPassword, String identityNum,
			Integer phone, Integer admin) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.identityNum = identityNum;
		this.phone = phone;
		this.admin = admin;
	}

	/*实现全部属性的构造方法*/
	public User(String userName, String userPassword, String identityNum,
			Integer phone, String email, Integer gender, Integer admin) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.identityNum = identityNum;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.admin = admin;
	}



	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	

	public String getIdentityNum() {
		return this.identityNum;
	}

	public void setIdentityNum(String identityNum) {
		this.identityNum = identityNum;
	}

	public int getPhone() {
		return this.phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGender() {
		return this.gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	

}
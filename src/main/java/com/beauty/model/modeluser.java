package com.beauty.model;


public class modeluser {
	private int user_id;
	private String first_name;
	private String last_name;
	private String email;
	private String phone;
	private String gender;
	private String username;
	private String password;
	private int role_id;
	private String role_name;

	public modeluser() {
		
	}
	public modeluser(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public modeluser(int user_id, String first_name, String last_name,String email,String phone,
			 String gender, String username ,String password, int role_id, String role_name) {
		super();
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.username = username;
		this.password = password;

		this.role_id = role_id;
		this.role_name = role_name;
	}
	
	public modeluser(int user_id, String first_name, String last_name,String email,String phone) {
		super();
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.phone = phone;
	}
	public modeluser(int role_id, String role_name) {
		super();
		this.role_id = role_id;
		this.role_name = role_name;
	}
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}


}

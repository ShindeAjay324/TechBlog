package com.techblog.entities;

import java.sql.Date;
import java.sql.Timestamp;

public class User {
	private int Id;
	private String name;
	private String email;
	private String password;
	private String gender;
	private Date reg_date;
	
	
	public User(String name, String email, String password, String gender, Date reg_date) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.reg_date = reg_date;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String name, String email, String password, String gender, Date reg_date) {
		super();
		Id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.reg_date = reg_date;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
}

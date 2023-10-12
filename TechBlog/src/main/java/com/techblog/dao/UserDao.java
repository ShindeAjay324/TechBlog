package com.techblog.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import com.techblog.entities.User;

public class UserDao {
	
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	//Method to insert user to data base
	
	public int saveUser(User user) {
		int executeUpdate = 0;
		try {
			String query="insert into user(name,email,password,gender) values(?,?,?,?)";
			
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			 executeUpdate = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return executeUpdate;
	}
	
	//get user by useremail and userpassword
	public User getUserByEmailAndPass(String email, String password) {
		User user=null;
		try {
			String query="select * from user where email=? and password=?";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				user=new User();
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email1=rs.getString(3);
				String password1=rs.getString(4);
				String gender =rs.getString(5);
				Date date=rs.getDate(6);
				String about=rs.getString(7);
				user.setId(id);
				user.setName(name);;
				user.setEmail(email1);
				user.setGender(gender);
				user.setPassword(password1);
				user.setReg_date(date);
				user.setAbout(about);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}

}

package com.techblog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.techblog.dao.UserDao;
import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Fetch all data from form
		User user=new User();
		user.setName(req.getParameter("name"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setGender(req.getParameter("gender"));
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		Connection con=ConnectionProvider.getConnection();
		UserDao dao=new UserDao(con);
		if (dao.saveUser(user)==1) {
			out.print("Done");
			
		}else {
			out.print("error");
		}
		System.out.println("User Saved");
	}
}

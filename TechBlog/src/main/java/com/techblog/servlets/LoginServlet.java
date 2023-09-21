package com.techblog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techblog.dao.UserDao;
import com.techblog.entities.Message;
import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;

public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Fetch Username And Password 
		String useremail=req.getParameter("email");
		String password=req.getParameter("password");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		User user = dao.getUserByEmailAndPass(useremail, password);
		if (user!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("user", user);
			resp.sendRedirect("profile.jsp");
			
		} else {
			Message msg=new Message("Invalid Credientials","error","alert-danger");
			HttpSession session=req.getSession();
			session.setAttribute("msg", msg);
			resp.sendRedirect("login.jsp");
			//out.println("<h2>Please Enter Correct Username And Password</h2>");
		}
		
		
	}
}

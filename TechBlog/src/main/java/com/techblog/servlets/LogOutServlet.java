package com.techblog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techblog.entities.Message;

public class LogOutServlet extends HttpServlet {
	/*@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Enter Into LogOutServlet");
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		HttpSession session=req.getSession();
		session.removeAttribute("user");
		System.out.println("User Removed");
		Message msg=new Message("Logout Successfully","success","alert-success");
		resp.sendRedirect("login.jsp");
		//req.getRequestDispatcher("login.jsp").forward(req, resp);
		//resp.sendRedirect("login.jsp");
	}
	*/
	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        performLogout(req, resp);
	    }

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        performLogout(req, resp);
	    }

	    private void performLogout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        System.out.println("Enter Into LogOutServlet");
	        resp.setContentType("text/html");
	        PrintWriter out = resp.getWriter();
	        HttpSession session = req.getSession();
	        session.removeAttribute("user");
	        System.out.println("User Removed");
	        Message msg = new Message("Logout Successfully", "success", "alert-success");
	        session.setAttribute("msg", msg);
	        resp.sendRedirect("login.jsp");
	    }
	
}

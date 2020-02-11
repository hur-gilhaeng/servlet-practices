package com.douzone.helloweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doGet() called");
		request.setCharacterEncoding("utf-8"); //  post방식으로 넘어오는 데이터 엔코딩!
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String birthYear = request.getParameter("birthYear");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");
		String desc = request.getParameter("desc");
		
		System.out.println(email);
		System.out.println(password);
		System.out.println(birthYear);
		System.out.println(gender);
		for(String s:hobbies) {
			System.out.println(s);
		}
		System.out.println(desc);
		
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().println("oK");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doPost() called");
		doGet(request, response);
	}

}
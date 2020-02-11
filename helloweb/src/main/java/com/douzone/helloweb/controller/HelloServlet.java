package com.douzone.helloweb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
// import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// @WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() called");
		
		String name = request.getParameter("n");
		
		response.setContentType("text/html; charset=utf-8");  // 헤더 작업. // 해당 작업이 없다면 한글이 깨진다.
		PrintWriter pw = response.getWriter(); // 라이터를 불러오는 그 순간 헤더를 떠난다!! 이후는 바디작업만 가능하다.
		pw.println("<h1>"+name+"님__안녕하세요~__</h1>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

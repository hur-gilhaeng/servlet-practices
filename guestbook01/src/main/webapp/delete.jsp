<%@page import="sun.font.Script"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	Long noLong = Long.parseLong(no);
	
	GuestbookDao dao = new GuestbookDao();
	
	if(dao.ckPassword(noLong, password)){
		dao.delete(noLong);
	}
	else{
		
	}

	response.sendRedirect("/guestbook01");
%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = new GuestbookDao().findAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook01/add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<%
	int i = list.size();
	for(GuestbookVo vo : list) {
	%>
	<br>
	<form action="/guestbook01/deleteform.jsp" method="post">
	<input type="hidden" name="no" VALUE="<%=vo.getNo()%>">
	<table width=510 border=1>
		<tr>
			<td>[<%=i-- %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate().substring(0, 10) %></td>
			<td>
			<input type="submit" VALUE="삭제">
			<!-- <a href="/guestbook01/deleteform.jsp?no=<%=vo.getNo()%>">삭제</a> -->
			<!-- 위 a 태그는 주소줄에 노출되는 형식이기에 보안에 적합하지 않다. -->
			<!-- (의문1): form말고 다른 방식은 없을까? -->
			</td>
		</tr>
		<tr>
			<td colspan=4><pre><%=vo.getContents() %></pre></td>
		</tr>
	</table>
	</form>
	<%
	}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>타이틀을 나타낼때 사용</h1>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	
	<table border="1" cellpadding="5" cellspacing="8">
		<tr>
			<th>번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>

		<tr>
			<td>1</td>
			<td>안녕?</td>
			<td>둘리</td>
			<td>2020-01-01</td>
		</tr>
		
		<tr>
			<td>2</td>
			<td>안녕~</td>
			<td>또치</td>
			<td>2020-01-01</td>
		</tr>
		
		<tr>
			<td>3</td>
			<td>그래!</td>
			<td>마이콜</td>
			<td>2020-01-01</td>
		</tr>
	</table>
	
	<img src="http://127.0.0.1:8080/helloweb/images/image.png"/>
	<br>
	<img src="/helloweb/images/image.png" style="width:200px"/>
	<br>절대경로<br>
	<img src="images/image.png"/>
	<br>상대경로<br>
	<a href="form.jsp">폼으로 가기</a>      <a href="index.jsp?n=고양이">메인으로 가기</a>
	<p>
		정보: Starting Servlet Engine: Apache Tomcat/8.5.50 1월 30, 2020
		2:26:22 오후 org.apache.coyote.AbstractProtocol start 정보: 프로토콜 핸들러
		["http-nio-8080"]을(를) 시작합니다. 1월 30, 2020 2:26:22 오후
		org.apache.coyote.AbstractProtocol start 정보: 프로토콜 핸들러
		["ajp-nio-8009"]을(를) 시작합니다. 1월 30, 2020 2:26:22 오후
		org.apache.catalina.startup.Catalina start 정보: Server startup in 283ms
	</p>
</body>
</html>
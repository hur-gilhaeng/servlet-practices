<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action='join' method='post'>
		이메일: <input type='text' name='email' value='' placeholder='이메일 입력'>
		<br/> <br/>
		비밀번호: <input type='password' name='password' value='' placeholder='비밀번호 입력'>
		
		<br/> <br/>
		생년월일:
		<select name='birthYear'>
			<option value='1990'> 1990년 </option>
			<option value='1991'> 1991년 </option>
			<option value='1992'> 1992년 </option>
			<option value='1993'> 1993년 </option>
			<option value='1994'> 1994년 </option>
		</select>
		
		<br/> <br/>
		성별: 
		남<input type="radio" name="gender" value="male">
		여<input type="radio" name="gender" value="female">
		
		<br/> <br/>
		취미:
		코딩 <input type="checkbox" name="hobby" value="coding"/>
		노래 <input type="checkbox" name="hobby" value="singign"/> 
		낚시 <input type="checkbox" name="hobby" value="fishing"/> 
		요리 <input type="checkbox" name="hobby" value="cooking"/> 
		
		<br/> <br/>
		내소개:
		<textarea name="desc"> </textarea>
		
		
		<br/> <br/>
		<input type='submit' value='가입하기'>
		
		
	</form>
</body>
</html>
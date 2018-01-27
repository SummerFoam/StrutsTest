<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/StrutsTest1/test/update.action" method="post">
		<table border="1" style="margin:auto; margin-top:50px;">
		<tr>
		<td>用户名:</td>
		<td>${s_name }</td>
		</tr>
		<tr>
		<td>密码:</td>
		<td>${s_name }</td>
		</tr>
		<tr>
		<td>性别:</td>
		<td>${s_sex }</td>
		</tr>
		<tr>
		<td>年龄:</td>
		<td>${s_age }</td>	
		</tr>
		<tr>
		<td>城市:</td>
		<td>${s_city }</td>
		</tr>
		<tr>
		<td>兴趣爱好:</td>
		<td>${s_intersting }</td>
		</tr>
		<tr>
		<td><input type="submit" value="确定"></td>
		</tr>
		</table>
</form>
</body>
</html>
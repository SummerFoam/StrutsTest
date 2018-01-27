<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/StrutsTest1/test/select.action" method="post">
	<table border="1" style="margin:auto;">
	<tr>
	<td>用户名:</td>
	<td><input type="text" name="user.username"></td>
	</tr>
	<tr>
	<td>性别:</td>
	<td>
	<input type="radio" name="user.sex" value="男">男
	<input type="radio" name="user.sex" value="女">女
	</td>
	</tr>
	<tr>
	<td colspan="2" style="text-align:center;"><input type="submit" value="查询"></td>
	</tr>
	</table>
	
</form>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td{
	width:70px;
	height:50px;
}
</style>
</head>
<body>
	<form action="/StrutsTest1/test/select.action" method="post">
		<table border="1" style="margin:auto;">
			<tr>
			<td>编号</td>
			<td>${id }</td>
			<td>用户名</td>
			<td>${s_name }</td>
			
			<td>密码</td>
			<td>${s_pwd}</td>
			
			<td>性别</td>
			<td>${s_sex}</td>

			<td>年龄</td>
			<td>${s_age}</td>
			
			<td>城市</td>
			<td>${s_city}</td>

			<td>兴趣爱好</td>
			<td>${s_intersting}</td>
			<td><a href="update.jsp?id=${id }">修改</a></td>
			<td><a href="/StrutsTest1/test/delete.action?user.id=${id }">删除</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
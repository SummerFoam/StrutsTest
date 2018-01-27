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
.left{
	padding:50px;
}
.left div{
	padding-top:20px;
}
a{
	text-decoration:none;
}
</style>
</head>
<body>
	<div class="left">
		<div><span>用户信息</span></div>
		<div><a href="findUserById.action?id=${id }" target="myIframe">查询</a></div>
		<div><a href="register.jsp" target="myIframe">添加</a></div>
	</div>
</body>
</html>
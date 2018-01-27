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
	.head{
		padding:50px;
		font-size:20px;
		text-shadow: 0px 0px 6px #d34d2f;
		float:left;
	}
	.mar{
		width:200px;
		height:100px;
		float:left;
		padding:50px;
	}
</style>
</head>
<body>
${welcome }
${id }
	<div class="head">
	用户信息管理
	<a href="newLogin.jsp" target="_blank">退出</a>
	</div>
	<div class="mar"><marquee align="middle">欢迎来到信息管理系统</marquee></div>
</body>
</html>
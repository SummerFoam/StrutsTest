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
iframe{
	background:#69c2cc;
	border-radius: 10px;
}
</style>
</head>
	
<body>
		<iframe id="iframe" width="100%" height="150px" src="head.jsp" frameborder="0" scrolling="no">
		</iframe>
		<iframe width="200px" height="600px" src="admin_left.jsp"></iframe>
		<iframe name="myIframe" width="85%" height="600px"></iframe>
</body>

</html>
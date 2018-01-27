<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
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
	<form action="findAll.action" method="post">
	 <s:iterator value="list">  
		 <table border="1">   
	 			<tr>
				<td>编号</td>
				<td> ${id } </td>
				<td>用户名</td>
				<td>${username }</td>
				
				<td>密码</td>
				<td><s:property value="password"/></td>
				
				<td>性别</td>
				<td><s:property value="sex"/></td>
	
				<td>年龄</td>
				<td><s:property value="age"/></td>
				
				<td>城市</td>
				<td><s:property value="city"/></td>
	
				<td>兴趣爱好</td>
				<td><s:property value="intersting"/></td>
				<td><a href="delete.action?sid=${id }">删除</a></td>
				</tr>
			</table>
       
     </s:iterator>
    
     
	</form>
</body>
</html>
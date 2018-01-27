<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  -->
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
<link rel="stylesheet" href="css/login.css">
<style>
.ad{
    padding: 20px;
    padding-left: 100px;
    font-size: 20px;
    text-shadow: 1px 1px 3px red;
}
</style>
</head>
<body>
	 <form action="/StrutsTest1/test/adminlogin.action" method="post">
  	<div class="l_container">
    	<div class="l_view" style="opacity: 0.5;border: 24px solid #556d99;border-radius: 10px;">
    		<div class="l_head">
    			<div class="ad">管理员登录</div>
    		</div>
    		<div class="l_main">
    		<div class="m_input">
	    		<span>用户名</span>
	    		<input type="text" name="user.username">
    		</div>
    		<div class="m_input">
	    		<span>密码</span>
	    		<input type="password" name="user.password" style="margin-left:15px;color:red;">
    		</div>
    		<div class="m_input">
    			<span><img src="/StrutsTest1/Security/SecurityCodeImageAction.action" id="Verify" style="cursor:hand;" alt="看不清，换一张"/></span>
    			<input type="text" name="securityCode" style="float: right;margin-top: -40px;">
    		</div>
    		<div>
    			<select id="select" name="user.status">
    				<option value="0">用户</option>
    				<option value="1">管理员</option>
    			</select>
    		</div>
    		<div class="m_input">
    			<input type="submit" value="登录" style="width: 149px;background: rgb(107, 157, 235);margin-left: 70px;">
    		</div>
    		</div>
    	</div>
    </div>
  </form>
</body>
</html>
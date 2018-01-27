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
<script type="text/javascript">
window.onload=function(){
	var verifyObj = document.getElementById("Verify");
	verifyObj.onclick=function(){
	this.src="SecurityCodeImageAction.action?timestamp="+new Date().getTime();
	  };
	 }
</script>
</head>
<body>
	 <form action="loginAction.action" method="post">
  	<div class="l_container">
    	<div class="l_view">
    		<div class="l_head">
    			<div class="lh_left"><a href="newLogin.jsp">快速登录</a></div>
    			<div class="lh_right"><a href="newReg.jsp">快速注册</a></div>
    		</div>
    		
    		<div class="m_input">
	    		<span>用户名</span>
	    		<input type="text" name="user.username">
    		</div>
    		<div class="m_input">
	    		<span>密码</span>
	    		<input type="password" name="user.password" style="margin-left:15px;color:red;">
    		</div>
    		<div class="m_input">
    			<span><img src="SecurityCodeImageAction.action" id="Verify" style="cursor:hand;" alt="看不清，换一张"/></span>
    			<input type="text" name="securityCode" style="float: right;margin-top: -40px;">
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
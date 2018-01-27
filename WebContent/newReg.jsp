<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--下面的是action跳转到页面 -->
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
<link rel="stylesheet" type="text/css" href="css/reg.css">
</head>
<body>
	<form action="/StrutsTest1/test/registAction.action" method="post" id="myForm">
  	<div class="container">
    <div class="head">
    	<div class="h_left">
    		<a href="newReg.jsp">注册</a>
    		<div class="active"></div>
    	</div>
    	<div class="h_right">
    		<a href="newLogin.jsp" class="hr">登录</a>
    		<div class="r_active"></div>
    	</div>
    </div>
    <div class="main">
    <div class="text">
    	 <div class="t_content"><span>用户名</span></div>
    	 <div class="t_input"><input type="text" name="user.username" id="userName" placeholder="请输入6个字符"></div>
    	 <label id="tip"></label>
    </div>
   <div class="text">
    	<div class="t_content"><span>密    码</span></div> 
    	<div class="t_input"><input type="password" id="pwd" name="user.password" placeholder="请输入9个字符" style="color:red;"></div>
		<span id="p_tip"></span>
    </div>
    <div class="text">
    	<div class="t_content"><span>性别</span></div> 
    	<input type="radio" name="user.sex" value="男" class="radio">男
		<input type="radio" name="user.sex" value="女" class="radio">女
    </div>
    <div class="text">
    	<div class="t_content"><span>年龄</span></div> 
    	<div class="t_input"><input type="text" name="user.age"></div>
    </div>
    </div>
    <div class="text">
    	<div class="t_content"><span>城市</span></div> 
    	<div class="t_input">
    	<select name="user.city">
    	<option value="上海">上海
    	<option value="北京">北京
    	</select>
    	</div>
    </div>
    <div class="text">
    	<div class="t_content"><span>兴趣</span></div> 
    	<div class="t_input">
    	<input type="checkbox" name="user.intersting" value="足球" style="width:15px;height:20px;">足球
    	<input type="checkbox" name="user.intersting" value="蓝球" style="width:15px;height:20px;">蓝球
    	<input type="checkbox" name="user.intersting" value="排球" style="width:15px;height:20px;">排球
    	</div>
    </div>
   
    <div class="sub"><input type="submit" id="sub" value="注册" style="width:300px;padding-left:0;background: red;"></div>
    </div>
    </div>
  </form>
    
</body>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/relo.js"></script>
</html>
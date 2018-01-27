<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.head{
	width: 800px;
    height: 47px;
    background: #e75f5f;
    margin: auto;
    line-height: 47px;
    text-align: center;
    font-weight: bold;
    font-family: sans-serif;
    font-size: 17px;
}
form{text-align:center;}
table{margin:auto;margin-top:30px}
input{outline:none;border:none;}
table,td{
	border-color:red;
}
</style>
</head>
<body>
<div class="head">添加</div>
<form action="addAction.action" method="post">
	<table border="1">
	<tr>
	<td>用户名:</td>
	<td><input type="text" name="user.username"></td>
	</tr>
	<tr>
	<td>密码:</td>
	<td><input type="password" name="user.password"></td>
	</tr>
	<tr>
	<td>年龄:</td>
	<td><input type="text" name="user.age"></td>	
	</tr>
	<tr>
	<td>性别:</td>
	<td>
	<input type="radio" name="user.sex" value="男">男
	<input type="radio" name="user.sex" value="女">女
	</td>
	
	</tr>
	<tr>
	<td>城市:</td>
	<td>
	<select name="user.city">
	<option value="上海">上海</option>
	<option value="北京">北京</option>
	<option value="深圳">深圳</option>
	</select>
	</td>
	</tr>
	<tr>
	<td>兴趣爱好:</td>
	<td>
	<input type="checkbox" name="user.intersting" value="足球">足球
	<input type="checkbox" name="user.intersting" value="篮球">篮球
	<input type="checkbox" name="user.intersting" value="排球">排球
	</td>
	</tr>
	</table>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
</form>
</body>
</html>
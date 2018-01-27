$(".hr").hover(function(){
	$('.r_active').css('background-color','#5ecca4');
	$('.active').css('background-color','beige');
});
$('.hr').mouseleave(function(){
	$('.r_active').css('background-color','beige');
	$('.active').css('background-color','#5ecca4');
});
//ajax判断用户名是否存在

	var userName=$("#userName");
	$("#userName").blur(function(){
		var text=userName.val();
		if(text=="" || text.length<6){
			$("#tip").text("请至少输入六位").css('color','red');
		}else{
		$.post("/StrutsTest1/test/AjaxAction.action",{"uname":text},function(response){
			console.log(response);
			//var obj = JSON.parse(response); //由JSON字符串转换为JSON对象
			//获取后台json数据
			if(response.status == 1){
				document.getElementById("tip").innerHTML="<font color='red'>"+response.key+"</font>";
			}
			else{
				document.getElementById("tip").innerHTML="<font color='red'>"+response.key+"</font>";
			} 
	 },"json")
		}
  })
  
  $("#pwd").blur(function(){
	  var pattern=/^(\w){6,20}$/;
	  var patr=pattern.test($(this).val());
	  if(patr){
		  $("#p_tip").text("格式正确").css('color','red');
	  }else{
		  $("#p_tip").text("输入6-20个字母、数字、下划线").css('color','red');
	  }
  });
	

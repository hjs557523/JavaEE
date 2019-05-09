<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Register.jsp</title>
    
    <!--meta标签是用来在HTML文档中模拟HTTP协议的响应头报文, 必须位于网页的<head>与</head>中 -->
    <!-- 也许我们会认为这些代码可有可无。其实如果能够用好meta标签，会给我们带来意想不到的效果，
                 例如加入关键字会自动被大型搜索网站自动搜集；可以设定页面格式及刷新等等 -->
    
	<meta http-equiv="pragma" content="no-cache">  <!--禁止浏览器从本地计算机的缓存中访问页面内容  -->
	
	<meta http-equiv="cache-control" content="no-cache">  <!--清除缓存,也就是说每次访问这个网站都要重新加载网站的所有文件 -->
	
	<meta http-equiv="expires" content="0">    <!-- 用于设定网页的到期时间。一旦网页过期，必须到服务器上重新传输。  -->
	
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  <!-- 向搜索引擎说明你的网页的关键词 -->
	
	<meta http-equiv="description" content="This is my page">  <!-- 告诉搜索引擎你的站点的主要内容 -->
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  <!-- 用以说明主页制作所使用的文字编码以及编程语言 -->

    <link rel="stylesheet" type="text/css" href="css/register-style.css"> <!-- 这里用相对路径 -->
    
    
    <script language="javascript">
    

        function IsPassword(pw1,pw2){
	    var reg=/^[a-zA-Z0-9]{6,15}$/;//6-15位，相同且不能为空
	    return (reg.test(pw1)&&reg.test(pw2)&&(pw1==pw2));
        }

        function check(){	
 
	    if(!IsPassword(document.getElementById("pw").value , document.getElementById("rpw").value)){
		alert("两个密码必须相同且不能为空");
	    document.getElementById("rpw").focus();
	    return false;
	    }

	    alert("提交成功");
	    return true;
	    }
    </script>

  </head>
  
  <body>
    <div class="register-container">
	<h1>实训5</h1>
	
	<div class="connect">
		<h2>用户注册</h2>
	</div>

	<form action="checkregist" method="post" id="registerForm" onsubmit="return check()">
		<div>
			<input type="text" name="user.userName" id="us" class="realname" placeholder="输入真实姓名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="user.userPassword" id="pw" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
	        <input type="password" name="confirm_password" id="rpw" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />

		<div>
			<input type="text" name="user.identityNum" class="idnumber" placeholder="输入二代身份证号" autocomplete="off" />
		</div>
		<div>
			<input type="text" name="user.phone" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="text" name="user.email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false"/>
		</div>

	    <button id="submit" type="submit">注 册</button>
	</form>
	<a href="login.jsp" type="submit" class="register-tis" style="color:#FFFFFF">登 陆</a>
	</div>
  </body>
</html>

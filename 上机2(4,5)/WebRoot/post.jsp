<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'post.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <% 
      request.setCharacterEncoding("utf-8");
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String place = request.getParameter("place");
      String birth = request.getParameter("birth");
      String gender = request.getParameter("gender");
      
      if(gender == "1") gender="男";
      else gender="女";//这里比较的是值，可以用==,如果是以创建对象的方式，则只能用equals
      
      String hobby = request.getParameter("hobby");
      String height = request.getParameter("height");
      String email = request.getParameter("mail");
      String phone = request.getParameter("phone");
      String introduce = request.getParameter("introduce");
      
      out.print("您的用户名为：" + username + "<br>");
      out.print("您的密码为：" + password + "<br>");
      out.print("您的籍贯为：" + place + "<br>");
      out.print("您的出生日期为：" + birth + "<br>");
      out.print("您的性别为：" + gender + "<br>");
      out.print("您的兴趣爱好为：" + hobby + "<br>");
      out.print("您的身高为：" + height + "<br>");
      out.print("您的邮箱为：" + email + "<br>");
      out.print("您的手机号码为：" + phone + "<br>");
      out.print("您的个人介绍是：" + introduce + "<br>");
      
    %>
  </body>
</html>

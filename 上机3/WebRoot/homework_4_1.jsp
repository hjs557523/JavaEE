<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>页面一</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <h4>各种球大甩卖，一律八块:</h4>
    <form action="data_handling.jsp" method="post" name="Ball" id="ball">
            <input type="checkbox" name="data" value="篮球">篮球<br>
            <input type="checkbox" name="data" value="足球">足球<br>
            <input type="checkbox" name="data" value="排球">排球<br><br>
        <input type="submit" value="提交">
        <input type="reset" value="全部重写">
        <a href="homework_4_2.jsp">买点别的</a>&nbsp;&nbsp;<a href="shopping_cart.jsp">查看购物车</a>
    </form>

  </body>
</html>

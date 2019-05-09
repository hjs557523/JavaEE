<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'time.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
	window.onload=function(){
	  var time = new Date();
	  var hours = time.getHours();
	  var min = time.getMinutes();
	  var sec = time.getSeconds();
	  var Mil = time.getMilliseconds();
	   
	  document.getElementById("ct").innerHTML=hours+"时"+min+"分"+sec+"秒"+Mil+"毫秒";
	  }

	</script>

  </head>
  
  <body>
      <h3>客户端的时间为：<span id="ct"></span></h3><br>
      <% 
         Calendar Cld = Calendar.getInstance();
         int HH = Cld.get(Calendar.HOUR_OF_DAY);
         int mm = Cld.get(Calendar.MINUTE);
         int SS = Cld.get(Calendar.SECOND);
         int MI = Cld.get(Calendar.MILLISECOND);
      %>
      
      <h3>服务端的时间为：<%= HH+"时"+mm+"分"+SS+"秒"+MI+"毫秒"%></h3>
  </body>
</html>

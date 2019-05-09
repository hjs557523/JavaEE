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
    
    <title>My JSP 'week.jsp' starting page</title>
   
  </head>
  
  <body>
    <script>
       var d = new Date();
       document.write("今天是星期"+(d.getDay()==0?"天":d.getDay()));
       if(d.getHours()>0&&d.getHours()<=12){
          document.write("上午"+d.getHours()+"点");
       }else
          document.write("下午"+d.getHours()+"点");
          document.write(d.getMinutes()+"分");
	</script>
  </body>
</html>

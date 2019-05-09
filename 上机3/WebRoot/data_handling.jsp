<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'data_handling.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <body>
    <%
      request.setCharacterEncoding("utf-8");
      String goods[] = request.getParameterValues("data");//从某个页面拿data
      
      /* 假设原来session中存放的名为list对象中有值，将其取出放入set集合里,初始打开的话list为null*/
      Set<String> now = (Set<String>) session.getAttribute("list");
     
      Set<String> set = new HashSet<String>();//创建一个HashSet集合set---数据元素不重复
      
      if(goods != null)
         Collections.addAll(set,goods);//将选中的data数据放到set集合里
         
      if(now != null)
         set.addAll(now);//若原来的list对象中有值，那么也放到set集合里
      session.setAttribute("list",set);//用set更新session的原来的list对象
     %>
     
     
     <!-- 提交到当前作为数据处理jsp页面后，然后返回当前页面（相当于停留在原来页面，并刷新）-->
     <script language="javascript">
         history.go(-1);
     </script>
     
  </body>
</html>

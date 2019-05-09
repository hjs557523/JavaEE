<%@page import="JavaBeans.StudentBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="DAO.StudentDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newConfirm.jsp' starting page</title>
    
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
        try{
            request.setCharacterEncoding("utf-8");
            int id = new Integer(request.getParameter("id")).intValue();
            String link = request.getParameter("link");
            String pwd = request.getParameter("pwd");
            String roles = request.getParameter("roles");
            String uid = request.getParameter("uid");
            String username = request.getParameter("username");
            
            StudentDAO studentDao = new StudentDAO();
            StudentBean stu = new StudentBean();
            stu.setId(id);
            stu.setLink(link);
            stu.setPwd(pwd);
            stu.setRoles(roles);
            stu.setUid(uid);
            stu.setUsername(username);
            studentDao.add(stu);
            out.print("新建学生成功!<br/>");
            out.print("5秒后将自动跳转到list.jsp页面......");
            response.setHeader("refresh","5;URL=list.jsp");
            
         
        }catch(Exception e){
         e.printStackTrace();
         out.print("newConfirm.jsp处理异常!");
      }
    %>
  </body>
</html>

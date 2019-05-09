<%@page import="java.sql.*"%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="JavaBeans.StudentBean"%>
<%@page import="DAO.StudentDAO"%>
<%@page import="java.lang.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mohu.jsp' starting page</title>
    
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
          int id;
          if(request.getParameter("id")!=""){
            id = new Integer(request.getParameter("id")).intValue();
          }else{
            id = Integer.parseInt(request.getParameter("id"));
          }
          String link = request.getParameter("link");
          String pwd = request.getParameter("pwd");
          String roles = request.getParameter("roles");
          String uid = request.getParameter("uid");
          String username = request.getParameter("username");
          StudentBean stu = new StudentBean();
            stu.setId(id);
            stu.setLink(link);
            stu.setPwd(pwd);
            stu.setRoles(roles);
            stu.setUid(uid);
            stu.setUsername(username);
          StudentDAO studentDao = new StudentDAO();
          ResultSet rs = studentDao.MoHu_select(stu);
          List<StudentBean> stulist = new ArrayList<StudentBean>();
          while(rs.next()){
            StudentBean stu1 = new StudentBean();
            stu1.setId(rs.getInt("id"));
            stu1.setLink(rs.getString("link"));
            stu1.setPwd(rs.getString("pwd"));
            stu1.setRoles(rs.getString("roles"));
            stu1.setUid(rs.getString("uid"));
            stu1.setUsername(rs.getString("username"));
            stulist.add(stu1);   
          }
          request.setAttribute("stulist", stulist);
             
          }catch(Exception e){
            e.printStackTrace();
            out.print("模糊查询出现异常!");
       }
       request.getRequestDispatcher("list.jsp").forward(request, response);
    %>
  </body>
</html>

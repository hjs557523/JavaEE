<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.util.RtMethodGenerator"%>
<%@page import="java.sql.*"%>
<%@page import="DAO.StudentDAO"%>
<%@page import="JavaBeans.StudentBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>从数据库中读取students表的内容，并显示在网页的表格上</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	td{
		text-align: center;
		color: black;
	}
	textarea{
		width: 200px;
		height: 100px;
	}
		
	</style>
	<script type="text/javascript">
		
		function judgeNull(f1){
		
		
		  if(f1.id.value == ''){
		    alert("模糊查询时id最好不要为空!");
		    return false;
		  }
		  
		  return true;
		  
		   
		} 
		
	</script>
	
  </head>
  
  <body>
  
  <% 
     out.print("您已经成功连接上16041321黄继升同学的MySQL数据库“mydatebase”!<br/>");
     out.print("<br/>");
     out.print("请在以下所有输入框中填入数据进行模糊查询！");
  %>
  
  <form name="f1" id="f1" action="mohu.jsp" method="post" ">
      <table border="1px">
        <tr>
          <td>id:</td>
          <td><input type="text" name="id" id="login"></td>
        </tr>
        <tr>
          <td>link:</td>
          <td><input type="text" name="link" id="link"></td>
        </tr>
        <tr>
          <td>pwd:</td>
          <td><input type="text" name="pwd" id="pwd"></td>
        </tr>
        <tr>
          <td>roles:</td>
          <td><input type="text" name="roles" id="roles"></td>
        </tr>
        <tr>
          <td>uid:</td>
          <td><input type="text" name="uid" id="uid"></td>
        </tr>
        <tr>
          <td>username:</td>
          <td><input type="text" name="username" id="username"></td>
        </tr>     
        <tr>
          <td><input type="submit" value="模糊查询"></td>
        </tr>
      </table>
  </form>
  <table border="1">
     <tr>这是从mydatebase数据库中students表中所有结果</tr>
     <tr>
       <td width="100">id</td>
       <td width="100">link</td>
       <td width="100">pwd</td>
       <td width="100">roles</td>
       <td width="100">uid</td>
       <td width="100">username</td>
     </tr>
  <% 
     try{
         StudentDAO studentDao = new StudentDAO();
         ResultSet rs = studentDao.select();
         while(rs.next())
         {
            int id = rs.getInt(1);
    		String link = rs.getString(2);
    		String pwd = rs.getString(3);
    		String roles = rs.getString(4);
    		String uid = rs.getString(5);
    		String username = rs.getString(6);
   %>
        
    	   <tr>
    	      <td width="100" ><%=id %></td>
    	      <td width="100" ><%=link %></td>
    	      <td width="100" ><%=pwd %></td>
    	      <td width="100" ><%=roles %></td>
    	      <td width="100" ><%=uid %></td>
    	      <td width="100" ><%=username %></td>		
   		  </tr>   
  
   <%   
        } 
      }catch(Exception e){
         e.printStackTrace();
         out.println("异常1产生!");
      }
      %>
      
      <tr align="center"><td colspan="6">点击模糊查询可得到如下模糊查询结果</td></tr>
       <tr>
       <td width="100">id</td>
       <td width="100">link</td>
       <td width="100">pwd</td>
       <td width="100">roles</td>
       <td width="100">uid</td>
       <td width="100">username</td>
     </tr>
         

   <% 
    		if((ArrayList)request.getAttribute("stulist")!=null){
    	try{
    	    ArrayList stulist = (ArrayList)request.getAttribute("stulist");
    	    for(int i = 0;i<stulist.size();i++){
    	    StudentBean stu = (StudentBean) stulist.get(i); 
   %>
          
    	   <tr>
    	      <td width="100" ><%=stu.getId() %></td>
    	      <td width="100" ><%=stu.getLink() %></td>
    	      <td width="100" ><%=stu.getPwd() %></td>
    	      <td width="100" ><%=stu.getRoles() %></td>
    	      <td width="100" ><%=stu.getUid() %></td>
    	      <td width="100" ><%=stu.getUsername() %></td>		
   		  </tr>
   <%
            }
        
        }catch(Exception e){
          e.printStackTrace();
          
        }
        }
   %>
   </table>
   <br/>
   <a href="new.jsp">增加学生</a>
         		
  </body>
</html>

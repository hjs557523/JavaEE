<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'new.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	td{
		text-align: center;
		color: blue;
	}
		
	</style>
	<script type="text/javascript">
		
		function judgeNull(f1){
		
		
		  if(f1.id.value == ''){
		    alert("id绝对不能为空!");
		    return false;
		  }
		  
		  if(f1.link.value == ''){
		    alert("link最好不能为空!");
		    return false;
		  }
		  
		  if(f1.pwd.value == ''){
		    alert("pwd最好不能为空!");
		    return false;
		  }
		  
		  if(f1.roles.value == ''){
		    alert("roles最好不能为空!");
		    return false;
		  }
		  
		  if(f1.uid.value == ''){
		    alert("uid最好不能为空!");
		    return false;
		  }
		  
		  if(f1.username.value == ''){
		    alert("username最好不能为空!");
		    return false;
		  }
		  
		  return true;
		  
		   
		}
		
	</script>

  </head>
  
  <body>
  <form name="f1" id="f1" method="post" action="newConfirm.jsp"  onsubmit="return judgeNull(this);" >
      <table border="1">
        <tr>
          <td>id:</td>
          <td><input type="text" name="id" id="id"></td>
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
        <td><input type="submit" value="提交表单"></td>
        <td><input type="reset" value="重写表单"></td>
        </tr>
      </table>
  </form>
  </body>
</html>

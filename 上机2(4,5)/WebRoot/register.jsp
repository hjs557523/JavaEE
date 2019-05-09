<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>register.jsp</title>
    
    <style type="text/css">
    
    body{
        text-align:center;
        margin:0px auto;
        }
    
    td{
		text-align:center;
		font-weight:bold;
		border:1px solid;
	}
	
	
	table{
	    width:10%;
	    margin:0px auto;
	     
	    
	}

    </style>

	<script type="text/javascript">
	
	   function IsUserName(str) {
	    var reg=/^[a-zA-Z][\s\S]{5,9}$/;
	    return reg.test(str);
        }
        
       function IsPassword(str){
	    var reg=/^[a-zA-Z0-9]{6,15}$/;
	    return reg.test(str);
        } 
       
	
	   function IsEmail(str) {
	    var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	    return reg.test(str);
        }

       function IsPhone(str){
	    var reg=/^[0-9]{11}$/;
	    return reg.test(str);
        }
        
       function checkRadio(){
        var arr = document.getElementsByName("gender");
        for(var i=0;i<arr.length;i++){
          if(arr[i].checked)
           return true;
        }
        return false;
        }
        

       function validate(){	
        	
		if(!IsUserName(document.getElementById("username").value)){
		alert("用户名长度在6到10位之间且只能用字母开头");
		document.getElementById("username").focus();
		return false;
	    } 
	    
	    if(!IsPassword(document.getElementById("password").value)){
	    alert("密码填写不符合规范！");
	    document.getElementById("password").focus();
	    return false;
	    }
	    
        if(!checkRadio()){
        alert("您没有选择性别");
        return false;
        }
	    

	    
	    if(!IsEmail(document.getElementById("mail").value)){
		alert("邮箱填写不符合规范");
	    document.getElementById("mail").focus();
	    return false;
	    }
	    
	    if(!IsPhone(document.getElementById("phone").value)){
		alert("手机需要11位的号码");
	    document.getElementById("phone").focus();
	    return false;
	    }

	    alert("注册成功");
	    return true;
	    }
	
	</script>

  </head>
  
  <body>
      <form name="f1" id="f1" action="post.jsp" method="post" onsubmit="return validate()">
     		
      <table>
      <tr><h2>用户注册</h2></tr>
      <tr>注:加*为必填项</tr>
        <tr>
          <td>*用户名:</td>
          <td><input type="text" name="username" id="username"></td>
        </tr>
        
        <tr>
          <td>*密码:</td>
          <td><input type="password" name="password" id="password"></td>
        </tr>
        
        <tr>
          <td>*籍贯:</td>
          <td> 
              <select name = "place">
                  <option value="北京">北京</option>
                  <option value="上海">上海</option>
                  <option value="广州">广州</option>
                  <option value="深圳">深圳</option>
                  <option value="杭州">杭州</option>
                  <option value="汕头">汕头</option>
                  <option value="珠海">珠海</option>
              </select>
          </td>
        </tr> 
        
         <tr>
          <td>出生年月:</td>
          <td><input type="text" name="birth" id="birth"></td>
        </tr> 
        
        <tr>
          <td>*性别:</td>
          <td>
                         男性<input type="radio" name="gender" id="male" value="1">
                         女性<input type="radio" name="gender" id="female" value="0">
         </td>
        </tr> 
        
        <tr>
          <td>爱好:</td>
          <td><input type="text" name="hobby" id="hobby"></td>
        </tr> 
        
        <tr>
          <td>身高:</td>
          <td><input type="text" name="height" id="height"></td>
        </tr> 
        
        <tr>
          <td>*邮箱:</td>
          <td><input type="email" class="email" name="mail" id="mail"></td>
        </tr>
        
        <tr>
          <td>*手机:</td>
          <td><input type="text" name="phone" id="phone"></td>
        </tr>
        
        <tr>
          <td>个人介绍:</td>
          <td>
               <textarea name="introduce" id="introduce" rows="10" cols="20" ></textarea>
          </td>
        </tr>
        
         
        <tr>
          <td >
           <input type="submit" value="提交注册信息">
           </td>
           <td>
           <input type="reset" value="重置注册信息">
           </td>
        </tr>
      </table>
    </form>
    
    
    
  </body>
</html>

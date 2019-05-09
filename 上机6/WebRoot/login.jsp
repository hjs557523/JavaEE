<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
</head>
<body>

      <s:form action="checklogin" method="post">
      <table width="292" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="76" colspan="3"style="font-size:24px;text-align:center;color:black ">实训5：用户登陆</td>
        </tr>
        <tr>
          <td width="65" style="font-size:18px">用户名</td>
          <td colspan="2"><input name="user.userName" type="text"/></td>
        </tr>
        <tr>
          <td height="16" colspan="3"></td>
        </tr>
        <tr>
          <td style="font-size:18px">密码</td>
          <td colspan="2"><input name="user.userPassword" type="password" /></td>
        </tr>
        <tr>
          <td height="16" colspan="3"></td>
        </tr>
        
        <tr>
          <td height="16" colspan="3"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><input type="submit" value="登 录" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><table width="224" border="0" cellspacing="0" cellpadding="0">
            <tr>
			</br>
              <td height="24"><a href="#none" style="color: blue">忘记登录密码？</a></td>
              <td align="right"><a href="./Register.jsp" class="zc" style="font-size:13px; color:blue" >点这立即注册!</a></td>
            </tr>
            <br>
          </table></s:form></td>
        </tr>
      </table>

</body>
</html>

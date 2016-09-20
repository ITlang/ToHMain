<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 
    
    <link rel="stylesheet" type="text/css" href="style/login.css">

  </head>
  
  <body>
    <div id="tit">家的味道</div>
    
  <form name="login" action="servlet/login" method="post">
   <table border="0">
    <tr>
      <td><input type="text" name="name" placeholder="用户名"></td>
    </tr>
    <tr></tr>
    <tr>
      <td><input type="password" name="pwd" placeholder="密码"></td>
    </tr>
   <tr>
      <th><input type="submit" id="sub" value="登录"> </th>
      <th><a href="register.html">注册</a></th>
      </tr>
   </table>
  </form>
  </body>
</html>

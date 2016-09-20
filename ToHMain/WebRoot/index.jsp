<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   Connection con=null;
   Statement stmt=null;
   ResultSet rs=null;
   String Name = request.getParameter("Name");
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=dbToH","sa","123");
   String SQL="SELECT * FROM users where Phone = '"+Name+"'";
   stmt=con.createStatement();
   rs=stmt.executeQuery(SQL);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link rel="stylesheet" type="text/css" href="style/index.css">
    
  </head>
  
  <body>
    <img src="image/first.png">
    
    <span style="color:red;font-size:1.5em;">个人信息</span><br>
     <%while (rs.next()) { %>
    <div id="line"></div>
    昵称：<%=rs.getString("Name") %><br>
    <div id="line"></div>
    联系方式：<%=rs.getString("Phone") %><br>
    <div id="line"></div>
    住址：<%=rs.getString("uAddress") %><br>
    <div id="line"></div>
    简介：<%=rs.getString("uIntro") %><br>
     <% } %>
     
     <div id="add">
      <span>+</span>
     </div>
  </body>
</html>


























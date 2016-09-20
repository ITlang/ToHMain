package com.lgj.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//获取数据
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		username = request.getParameter("name");
		password = request.getParameter("pwd");

	    try {  
	  
	    	   Connection con=null;
	    	   Statement stmt=null;
	    	   ResultSet rs1=null;
	    	   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    	   con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=dbToH","sa","123");
	    	   String SQL="select * from users where Phone='"+ username + "'";
	    	   stmt=con.createStatement();
	    	   rs1=stmt.executeQuery(SQL);
	    	   System.out.print(username);

	  
	        if (rs1.next()) {  
	            // 说明用户是存在的  
	        	
	        	response.sendRedirect("../index.jsp?Name="+username);
	             
	        } else {  
	            // 说明用户名不存在  
	        	response.sendRedirect("../login.jsp");
	        }  
	    } catch (Exception ex) {  
	        ex.printStackTrace();  
	      
	    }  
				
		// 跳转
		
	}

}

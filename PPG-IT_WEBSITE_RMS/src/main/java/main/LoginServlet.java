package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
		 String Email = request.getParameter("sid");
		 String pass = request.getParameter("pass");
		 String loginType = request.getParameter("loginType");
	     
		 String url = "jdbc:mysql://db4free.net:3306/zetatech1";
		 String userName = "zetarms1";
		 String passWord = "zeta87654321";
		 Connection con = DriverManager.getConnection(url,userName,passWord);
		 ResultSet rs=null;
		 Statement st;
		 
		 if(loginType.equals("student")) {
			 String query = "select * from student_details_main where Email = '"+Email+"'";
	         st = con.createStatement();
	         rs = st.executeQuery(query);
	         rs.next();
	         
	         if(rs.getString(9).equals(pass)) {
	        	 RequestDispatcher rd = request.getRequestDispatcher("Student-Home.jsp"); 
				 rd.forward(request, response);
	         }else {
	        	 response.sendRedirect("index.jsp");
	         }
			 
		 }else if(loginType.equals("staff")) {
			 String query = "select * from staff_details_main where Staff_Email = '"+Email+"'";
	         st = con.createStatement();
	         rs = st.executeQuery(query);
	         rs.next();
	         
	         if(rs.getString(3).equals(pass)) {
	        	 RequestDispatcher rd = request.getRequestDispatcher("Staff.jsp"); 
				 rd.forward(request, response);
	         }else {
	        	 response.sendRedirect("index.jsp");
	         }
			 
		 }else {
			 PrintWriter out = response.getWriter();
			 out.print("Some Thing Wrong");
		 }
		 
		 
		 
		 
		
			 
	         
	         
			 
	       
	         
	         
	         
	         
	         
	         
	         
			 
		 }catch(Exception e) {
			 PrintWriter out = response.getWriter();
			 out.print(e);
			 
		 }
	   
	}

}

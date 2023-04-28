 package result;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;


public class loginResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		 String reg = request.getParameter("regno");
		 String dob = request.getParameter("DOB");
		 
		 
		 String url = "jdbc:mysql://db4free.net:3306/result_ms";
			String userName = "rootuseronline";
			String passWord = "rootuser123";
			Connection con ;
			ResultSet rs=null;
			Statement st;
			
              try 
              {
			      String query = "select * from rms where regno ='"+reg+"'";
				  con = DriverManager.getConnection(url,userName,passWord);
		          st = con.createStatement();
		          rs = st.executeQuery(query);
		          rs.next();
		        
		        if(dob.equals(rs.getString(15))) { 
		       
		        	
		        	 RequestDispatcher rd = request.getRequestDispatcher("result.jsp"); 
					 rd.forward(request, response);
		             
		        }   
				 else 
		             response.sendRedirect("index.jsp"); 
				 
               }catch(SQLException ee)
                {
			     ee.printStackTrace();
			    }
			         
	}

}

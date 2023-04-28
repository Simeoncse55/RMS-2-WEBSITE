 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<!doctype html>
<html lang="en">

<head>
  <title>Student Information-Result Portal</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <link rel="stylesheet" href="result.css">
</head>

<body>
  <div class=" grid-layout container-sm">
  <header id="heading">
    <!-- place navbar here -->

    <h4>PPG Institute of Technology</h4>
    <h6>Student Details and Exam Results</h6>
  </header>
  <br><br>
  <main>


 <!-- Nav tabs -->
 <ul class="nav nav-tabs" id="myTab" role="tablist">
   <li class="nav-item" role="presentation">
     <button class="nav-link active"   id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="Profile" aria-selected="true">Profile</button>
   </li>
   <li class="nav-item" role="presentation">
     <button class="nav-link" id="examsh-tab" data-bs-toggle="tab" data-bs-target="#examsh" type="button" role="tab" aria-controls="Exam Shedule" aria-selected="false">Exam Shedule</button>
   </li>
   <li class="nav-item" role="presentation">
     <button class="nav-link" id="result-tab" data-bs-toggle="tab" data-bs-target="#results" type="button" role="tab" aria-controls="Results" aria-selected="false">Results</button>
   </li>
   <li class="nav-item" role="presentation">
    <button class="nav-link" id="assesment-tab" data-bs-toggle="tab" data-bs-target="#assesment" type="button" role="tab" aria-controls="Assesment" aria-selected="false">Assesment</button>
  </li>
 </ul>
 
 <!-- Tab panes -->
 <div class="tab-content " >
  <!--PROFLE SECTION-->
    <div class="tab-pane active" id="profile" role="tabpanel" aria-labelledby="profile-tab"> 
   
             <div class="table-responsive-sm">
              <table class="table table-striped-columns
              table-hover	
              table-borderless
              table-primary
              align-middle">
                <thead class="table-light">
                  <caption>Table Name</caption>
                  <tr>
                    <th>Column 1</th>
                    <th>Column 2</th>
                    <th>Column 3</th>
                  </tr>
                  </thead>
                  <tbody class="table-group-divider">
                    <tr class="table-primary" >
                      <td scope="row">Item</td>
                      <td>Item</td>
                      <td>Item</td>
                    </tr>
                    <tr class="table-primary">
                      <td scope="row">Item</td>
                      <td>Item</td>
                      <td>Item</td>
                    </tr>
                  </tbody>
                  <tfoot>
                    
                  </tfoot>
              </table>
             </div>
             


   </div>
   <div class="tab-pane" id="examsh" role="tabpanel" aria-labelledby="exam_shedule-tab"> 
       
    <h1>vengadesh</h1>
<h2>vengadesh</h2> 
<h3>vengadesg</h3>

  </div>
   <div class="tab-pane" id="results" role="tabpanel" aria-labelledby="results-tab"> 
 

         <div class="table-responsive-sm">
          <table class="table table-striped-columns
          table-hover	
          table-borderless
          table-primary
          align-middle" id="results">
            <thead class="table-light" id="results">
              <caption>Examination Results </caption>
              <tr>
                <th>Semester</th>
                <th>Subject Code</th>
                <th>Grade</th>
                <th>Results</th>
              </tr>
              </thead>
              <tbody class="table-group-divider">
              <% String id = request.getParameter("regno");
                ResultSet rs=null;
              try{
              	String url = "jdbc:mysql://db4free.net:3306/result_ms";
          		String userName = "rootuseronline";
          		String passWord = "rootuser123";
          		String query ="select * from internalone where regno='"+id+"';";
          		
          		Connection con = DriverManager.getConnection(url,userName,passWord);
          		Statement st = con.createStatement();
                rs = st.executeQuery(query);
          	    rs.next();
          	%>
                <tr class="table-primary" >
                  <td scope="row">01</td>
                  <td><%=rs.getString(1) %></td>
                  <td><%=rs.getString(2) %></td>
                  <td>PASS</td>
                </tr>
                <tr class="table-primary">
                  <td scope="row">01</td>
                  <td><%=rs.getString(3) %></td>
                  <td><%=rs.getString(4) %></td>
                  <td>PASS</td>
                </tr>

                <tr class="table-primary">
                  <td scope="row">01</td>
                  <td><%=rs.getString(5) %></td>
                  <td><%=rs.getString(6) %></td>
                  <td>PASS</td>

                </tr>
                <tr class="table-primary">
                  <td scope="row">01</td>
                  <td><%=rs.getString(7) %></td>
                  <td><%=rs.getString(8) %></td>
                  <td>PASS</td>
                </tr>
                
                 <tr class="table-primary">
                  <td scope="row">01</td>
                  <td><%=rs.getString(9) %></td>
                  <td><%=rs.getString(10) %></td>
                  <td>PASS</td>
                </tr>
                
                 <tr class="table-primary">
                  <td scope="row">01</td>
                  <td><%=rs.getString(11) %></td>
                  <td><%=rs.getString(12) %></td>
                  <td>PASS</td>
                </tr>
                
                
                <%
          	   
              }
              catch(Exception e1)
              {
              	e1.printStackTrace();
              	
              }
              %>
              </tbody>
             
          </table>
         </div>
     </div>
   <div class="tab-pane" id="assesment" role="tabpanel" aria-labelledby="results-tab"> 
<h1>nethaji</h1>
<h2>nethaji</h2>
<h3>nethaji</h3>

   </div>

 </div>

      
         
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  </div>,k
  <!-- Bootstrap JavaScript Libraries -->
 <script 
 src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
 </script>
</body>

</html>
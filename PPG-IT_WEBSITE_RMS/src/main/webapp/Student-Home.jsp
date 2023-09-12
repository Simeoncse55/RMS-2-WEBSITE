<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
     <%@ page import="java.io.PrintWriter" %>
     <%@ page import="java.util.Date" %>
     <%@ page import="java.time.format.DateTimeFormatter" %>
     <%@ page import=" java.time.LocalDateTime" %>
     <%@ page import=" java.time.LocalDate" %>
     
     
<!DOCTYPE html>
<% 
String url = "jdbc:mysql://db4free.net:3306/zetatech1";
String userName = "zetarms1";
String passWord = "zeta87654321";
Connection con = DriverManager.getConnection(url,userName,passWord);
ResultSet rs=null;
Statement st;
String Email = request.getParameter("sid");
String query = "select * from student_details_main where Email = '"+Email+"'";
st = con.createStatement();
rs = st.executeQuery(query);
rs.next();
Date d = new Date(); 

session.setAttribute("mail",Email);


%>



<html lang="en">

<head>
  <title>Students Portal</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<link rel="stylesheet" href="Student.css">
<!--font awsome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>
    
  <header>

    <div class="container text-center pt-4">
      <div class="row align-item-center">

        <div class="col-12" style="width: 100%; text-align: right;" >
          <button class="btn" id="logout"><i class="bi bi-arrow-left-short"></i> Logout</button>
        </div>
</div>
      <div class="row">
        <div class="col-lg-11 col-sm-5">
          <img src="./images/profile.jpg" alt="profile image" width="120px" height="120px" style="border-radius: 50%; border: 2px solid  rgb(0, 60, 255); padding: 5px;" class="img-fluid">
           <h5 class="pt-3">Welcome Back <span style="font-weight: bold; color:  rgb(0, 60, 255);"><% out.print(rs.getString(2)); %></span></h5>
           <small>Today <span style="color:  rgb(0, 60, 255);"><% out.print(d); %></span></small>
         
        </div>
        

      </div>

    </div>

  </header>
  <section id="home">

    <div class="container text-center">
        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3 align-item-center">


          <div class="col box">
            <a href="./Profile.jsp">
            <div class="p-3">
              <img src="./images/account-avatar-multimedia-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Profile</h4>
            </div></a>
          </div>
                              
          <div class="col box">
            <a href="./result.html">
            <div class="p-3">
                <img src="./images/book-courses-education-learning-school-study-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Result</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/document-education-file-format-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Attendance</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/book-education-learning-school-science-study-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Internals</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/book-education-mobile-phone-school-smartphone-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Notes</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/insert-table-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Time table</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/information-svgrepo-com (1).svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Circular</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/achievement-education-learning-school-study-trophy-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Mentor</h4>
                 
            </div></a>
          </div>

         

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/education-internet-learning-math-seo-web-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>CGPA</h4>
                 
            </div></a>
          </div>

          <div class="col box">
            <a href="">
            <div class="p-3">
                <img src="./images/news-svgrepo-com.svg" width="60px" height="60px" alt="" class="img-fluid">
                <h4>Perfomance</h4>
                 
            </div></a>
          </div>
       
        </div>
      </div>

  </section>

  <footer>
    <!-- place footer here -->
    <div class="container text-center">
        <div class="row align-item-center">
            <div class="col pt-4">
              <small><a style="text-decoration: none;" href="https://www.ppg.edu.in/engg/">www.ppg.edu.in</a></small>
                <p class="pt-2">2023 &COPY;ZETA Tech. All Rights Reserved.</p>

            </div>
        </div>
    </div>
  </footer>
  <script src="https://kit.fontawesome.com/d6ad9d65a8.js" crossorigin="anonymous"></script>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
 
</body>

</html>
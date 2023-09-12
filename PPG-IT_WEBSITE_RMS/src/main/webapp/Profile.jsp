<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<!doctype html>
<%
String url = "jdbc:mysql://db4free.net:3306/zetatech1";
String userName = "zetarms1";
String passWord = "zeta87654321";
Connection con = DriverManager.getConnection(url,userName,passWord);
ResultSet rs=null;
Statement st;
 
String query = "select * from student_details_main where Email = '"+session.getAttribute("mail")+"'";
st = con.createStatement();
rs = st.executeQuery(query);
rs.next();


%>
<html lang="en">

<head>
  <title>Profile</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="profile.css">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <!--bootstrap icons-->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

</head>

<body>
 
  <main>

<div class="container">
  <div class="row pt-3 mar">
    <div class="col-lg-2 col-sm-6 col-md-2 left text-center profileImg">
      <img src="./images/profile.jpg" width="120px" height="120px" style="border: 2px solid rgb(13, 110, 253); border-radius: 50%; padding: 4px;" alt="" class="img-fluid">
    </div>

    <div class="col-lg-10 col-sm-6 col-md-4 pt-3 xm-6 center">
      <h6 style="font-weight: bold; text-transform: capitalize;"><%out.print(rs.getString(2)); %></h6>
      <h6 style="font-weight: 550;"><%out.print(rs.getInt(1)); %></h6>
      <h6>2020-2024</h6>
    </div>

  
  </div>
</div>

<section id="stuDetails">
<div class="container">

  <!--first row-->
  <div class="row pt-3">

    <div class="col-lg-3 col-sm-2 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-grid-fill"></i>Branch <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(4)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-2 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-book-half"></i>Course  <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(6)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-envelope-at-fill"></i>Email<br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(8)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-calendar-day"></i> Date Of Birth <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(9)); %></span></p>
    </div>

  </div>

  <!-- second row-->
  <div class="row pt-3">

    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-gender-ambiguous"></i>Gender <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(18)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-houses-fill"></i>Scholar Type <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(21)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-mortarboard-fill"></i> Admission Type<br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(20)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-person-fill"></i> Father Name <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(10)); %></span></p>
    </div>

  </div>

   <!-- Third row-->
   <div class="row pt-3">

    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-person-fill"></i>Mother Name <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(11)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-telephone-fill"></i> Father Number<br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(12)); %></span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-telephone-fill"></i>Mother Number<br><span style="font-weight: bold;  color: rgb(13, 110, 253);"> <%out.print(rs.getString(13)); %> </span></p>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
      <p><i class="bi bi-buildings-fill"></i> City<br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(14)); %> </span></p>
    </div>

  </div>

     <!-- fourth row-->
     <div class="row pt-3">

      <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
        <p><i class="bi bi-pin-map-fill"></i>State <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(15)); %></span></p>
      </div>
      <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
        <p><i class="bi bi-flag-fill"></i> Nationality <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(16)); %></span></p>
      </div>
      <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
        <p><i class="bi bi-suit-heart-fill"></i>Religion <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(19)); %></span></p>
      </div>
      <div class="col-lg-3 col-sm-3 col-md-3 col-xl-3 col-xs-3 box">
        <p><i class="bi bi-droplet-fill"></i> Blood Group <br><span style="font-weight: bold;  color: rgb(13, 110, 253);"><%out.print(rs.getString(17)); %></span></p>
      </div>
  
    </div>


</div>
</section>

  
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>
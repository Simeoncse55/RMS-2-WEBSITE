<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>PPG-IT-LOGIN</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="style.css">
  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
  <header>
    <div class="container text-center">
        <div class="row align-items-center">
       
          <div class="col">
          <img src="./images/insitution.png" width="90px" height="120px" alt="ppit" class="img-fluid"><br>
         <h4>PPG Institute of Technology</h4>
         <p style="color: rgb(100, 100, 100);"> Saravanampatti P.O, Coimbatore - 641035, Tamil Nadu, India. <a href=""><span style="color: rgb(45, 84, 255);">ppgit@ppg.edu.in</span></a></p>
          </div>
    
        </div>
      </div>
  </header>


  <main>

    <!--LOGIN SECTION STAFF AND STUDENTS-->
    <section id="login">
    <div class="container text-center">
        <div class="row align-items-center">
          <div class="col-lg-3 col-sm-0 col-xl-3 col-xxl-3 log-box"></div>

          <div class="col-lg-6 col-sm-0 col-xl-6 col-xxl-6 log-box">
            <h5 style="padding-top: 50px; color:rgb(13, 110, 253);">Login to Web-Portal</h5>
           <img src="./images/student.svg" width="120px" height="90px" alt="" class="img-fluid"><br>

           
           <form action="login" method="post">
              <input type="email" name="sid" id="reg" placeholder="Email"><br>
              <input type="password" name="pass" id="dob" placeholder="Password"><br>
              <select name="loginType" id="portal">
                 <option value="student">Student</option>
                 <option value="staff">Staff</option>
              </select>
              <button type="submit" class="btn">Login</button>
           </form>
           
           

          </div>

          <div class="col-lg-3 col-sm-0 col-xl-3 col-xxl-3 log-box"></div>

       
          
        </div>
      </div>
</section>
  </main>
  <footer>
    <!-- place footer here -->
    <div class="container text-center">
        <div class="row align-item-center">
            <div class="col">
                <p>2023 &copy; ZETA Tech. All Rights Reserved.</p>
                <small><a style="text-decoration: none;" href="https://www.ppg.edu.in/engg/">www.ppg.edu.in</a></small>

            </div>
        </div>
    </div>
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
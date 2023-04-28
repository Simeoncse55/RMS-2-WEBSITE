<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!doctype html>
<html lang="en">

<head>
  <title>PPG Result Portal</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>

<body>



<div class=" grid-layout container-sm">

  <header>
    <!-- place navbar here -->
    <h3 id="head">PPG Institute of Technology Result - Portal</h3>
    <h3 id="ss"></h3>
  </header>
  <main>



          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
              <img src="./images/vector.png"
                class="img-fluid" alt="PPG it logo">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
              <form action="login" method="get">
             
      
                <!-- Register number input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="RegisterNumber">Register Number</label>
                  <input type="text" id="reg" name="regno" class="form-control form-control-lg"
                    placeholder="Enter your Register Number" />
                    
                </div>
      
                <!-- Date of birth input -->
                <div class="form-outline mb-3">

                  <label class="form-label" for="dateofbirth">Date of Birth</label>

                  <input type="text" id="dob" name="DOB" placeholder="DD-MM-YYYY" class="form-control form-control-lg"/>
                     
                  
                </div>
      
                <div class="d-flex justify-content-between align-items-center">
                  <!-- Checkbox -->
                  <div class="form-check mb-0">
                    <input class="form-check-input me-2" type="checkbox"  id="conf" />
                    <label class="form-check-label" for="form2Example3">
                     Confirm this! Yes! I'm In!
                    </label>
                  </div>
                </div>
      
                <div class="text-center text-lg-start mt-4 pt-2">
                    
                  <input type="submit" id="lg" class="btn ">
                  
                   
                
                </div>
      
              </form>
            </div>
          </div>
        </div>
       


  </main>

  <footer>
   
  </footer>
</div>


  
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>



</html>
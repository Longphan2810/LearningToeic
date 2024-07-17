<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<section class="vh-100" style="background-color: rgb(244, 247, 252);">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      <div class="d-flex justify-content-center align-items-center mb-2">
			<h2 style="color: #32CD32;">NEKO</h2>
			<img alt="" src="/assets/image/logo.jpg" style="max-width: 50px">
			<h2 style="color: #32CD32;">VOCAB</h2>
			</div>
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
			
            <h3 class="mb-5" style="color: #32CD32;">Sign in</h3>

            <div data-mdb-input-init class="form-outline mb-4">
              <input type="email" id="typeEmailX-2" class="form-control form-control-lg" />
              <label style="color: #32CD32; class="form-label" for="typeEmailX-2">Email</label>
            </div>

            <div data-mdb-input-init class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" class="form-control form-control-lg" />
              <label style="color: #32CD32; class="form-label" for="typePasswordX-2" >Password</label>
            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-start mb-4">
              <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
              <label class="form-check-label" for="form1Example3"> Remember password </label>
            </div>

            <button data-mdb-button-init data-mdb-ripple-init class="btn btn-success btn-lg btn-block" type="submit">Login</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
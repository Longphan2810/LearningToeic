<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Fruit Store</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css" />


<style type="text/css">
button:hover {
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

a:hover {
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
	<section class="vh-100" style="background-color: rgb(244, 247, 252);">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
				<div class="d-flex justify-content-center align-items-center mb-2">
					<img alt="" src="/assets/image/logo.jpg" style="max-width: 100px"> 
					</div>
					<div class="d-flex justify-content-center align-items-center mb-2">

						<h2 style="color: #32CD32;">NEKO</h2>	
						<h2 style="color: #32CD32;">VOCAB</h2>
					</div>
					<div class="card shadow-2-strong" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">

							<h3 class="mb-5" style="color: #32CD32;">Sign up</h3>
							<form class="m-3" action="/register" method="post"
								>
								<div data-mdb-input-init class="form-outline mb-4">
									
									<label for="exampleInputUsername"
										class="form-label  text-light">Tên Username</label>
									
									<input type="text" required="true"  name="username"
										class="form-control bg-light text-dark" />
									<label style="color: #32CD32;"
										form-label" for="typeUsernameX-2">Username</label>
								</div>

								<div data-mdb-input-init class="form-outline mb-4">
									
									<input type="email" id="typeEmailX-2"
										class="form-control form-control-lg" name="email" />
									<label style="color: #32CD32;" form-label" for="typeEmailX-2">Email</label>
								</div>

								<div data-mdb-input-init class="form-outline mb-4">
									<input type="password" required="true" name="password"
										id="typePasswordX-2" class="form-control form-control-lg" />
									<label style="color: #32CD32;"
										form-label" for="typePasswordX-2">Password</label>
								</div>

								<button data-mdb-button-init data-mdb-ripple-init
									class="btn btn-success btn-lg btn-block" type="submit">Register</button>
								<a class="btn btn-danger" href="/home">Quay lại</a>
							</form>
						</div>
					</div>

				</div>
			</div>

		</div>
	</section>
<!--  thong bao -->


	<div class="toast-container  position-fixed bottom-0 end-0 p-3">
		<div id="liveToast" class="toast ${message!=null?'show':''}"
			role="alert" aria-live="assertive" aria-atomic="true">
			<div class="toast-header">
				<strong class="me-auto">Thông báo</strong>

				<button type="button" class="btn-close" data-bs-dismiss="toast"
					aria-label="Close"></button>
			</div>
			<div class="toast-body">${message}</div>
		</div>
	</div>
	

</body>
</html>

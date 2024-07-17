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
.background-register{
	background: rgba(68, 164, 209, 0.5);
}
</style>
</head>
<body>


	<div class="m-auto col-6 background-register rounded">
		<h2 class="text-center mt-3 text-success">Đăng Ký</h2>

		<form:form class="m-5" action="/home#register" method="post"
			modelAttribute="nguoiDung" enctype="multipart/form-data">

			<label for="exampleInputEmail1" class="form-label  text-light">Tên
				tài khoản</label><form:errors path="username" class="text-danger"></form:errors>
			<form:input type="text" path="username"
				class="form-control bg-light text-dark" />
			
			
			<label for="exampleInputEmail1" class="form-label  text-light">Email</label><form:errors path="email" class="text-danger"></form:errors>
			<form:input type="email" path="email" class="form-control bg-light text-dark" />

			<label for="exampleInputEmail1" class="form-label  text-light">Mật
				khẩu</label><form:errors path="password" class="text-danger"></form:errors>
			<form:password path="password" class="form-control bg-light text-dark" />

	




			<div class="d-flex justify-content-evenly mt-3">
			<a class="btn btn-danger" href="home">Quay lại</a>
				<button class="btn btn-primary ">Đăng Ký</button>
			</div>
		</form:form>
	</div>


</body>
</html>

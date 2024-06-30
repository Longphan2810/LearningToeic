
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Learing_Toeic</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link href="css/style.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/dashboard/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
</head>
<style>
<
style>.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.btn-bd-primary {
	--bd-violet-bg: #712cf9;
	--bd-violet-rgb: 112.520718, 44.062154, 249.437846;
	--bs-btn-font-weight: 600;
	--bs-btn-color: var(--bs-white);
	--bs-btn-bg: var(--bd-violet-bg);
	--bs-btn-border-color: var(--bd-violet-bg);
	--bs-btn-hover-color: var(--bs-white);
	--bs-btn-hover-bg: #6528e0;
	--bs-btn-hover-border-color: #6528e0;
	--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
	--bs-btn-active-color: var(--bs-btn-hover-color);
	--bs-btn-active-bg: #5a23c8;
	--bs-btn-active-border-color: #5a23c8;
}

.bd-mode-toggle {
	z-index: 1500;
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important;
}



.sidebar {
	height: 100%;
}

.offcanvas-md {
	height: 100%;
}
</style>

<body>
	<!-- header -->
	<header>
		<jsp:include page="../component/header.jsp"></jsp:include>
	</header>
	<div class="container-fluid h-100">
		<div class="row h-100">
			<!-- Source icon -->
			<jsp:include page="../component/icon.jsp"></jsp:include>
			<!-- Navbar -->

			<jsp:include page="../component/navbar.jsp"></jsp:include>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<h3 class="mt-3">600 từ vựng Toeic</h3>
				<h6>Đã học:</h6>
				<h6>Cần luyện tập:</h6>
				<div class="row g-4">
					<c:forEach var="i" begin="1" end="8">
						<div class="col-3">
							<div class="card">
								<img src="/img/car.jpg" class="card-img-top" style="height: 80%"
									alt="...">
								<div class="card-body text-center algin-self-center">
									<h5 class="card-title">Chủ đề</h5>
									<div class="row g-0" style="width: 100%; height:">
										<div class="col-9">
											<i class="bi bi-check-circle"></i> đã học 6/10
										</div>
										<div class="col-3">
											<i class="bi bi-heart-fill"></i>
										</div>

									</div>

								</div>
							</div>
						</div>
					</c:forEach>

				</div>



			</main>


		</div>
	</div>

</body>
</html>


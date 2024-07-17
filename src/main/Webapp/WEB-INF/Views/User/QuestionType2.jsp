<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<body>

	<div>
		<jsp:include page="../component/navbarQuestion.jsp"></jsp:include>
		<div class="progress" role="progressbar"
			aria-label="Success striped example" aria-valuenow="25"
			aria-valuemin="0" aria-valuemax="100">
			<div class="progress-bar progress-bar-striped bg-success"
				style="width: 25%"></div>
		</div>
	</div>
	<!-- content -->
	<div></div>
	<!-- Dap an -->
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6 row g-3">
			<h5>Chọn Từ</h5>
			<h4 class="text-center my-3">(noun) Kết quả / Hậu quả</h4>

			<!-- Type Dap ann -->

			<form action="" method="POST">
				<input class="form-control form-control-lg" type="text"
					placeholder="Nhập từ khóa" aria-label=".form-control-lg example">

				<div class="row g-2 mt-2">

					<c:forEach var="i" items="${output}">
						<div class="col-1 mx-1 card text-center border border-success shadow bg-body-tertiary rounded">
							<div class="card-body">
								${i}
							</div>
						</div>

					</c:forEach>
				</div>




				<input class="btn btn-success my-3 w-100 shadow rounded"
					type="submit" value="Kiểm tra">
			</form>






		</div>

		<div class="col-3"></div>
	</div>



</body>
</html>
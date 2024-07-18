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

<style>
.card:hover {
	transition: all 0.4s;
	background-color: black;
	color: red;
	background-color: black;
}

.btn.active {
	background-color: #007bff;
	color: white;
}

.card:active {
	color: red;
}
</style>
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


			<form action="/Question/${id}" method="post">
				<h4 class="text-center my-3">(${voca.vocabularyType})
					${voca.vietnameseVersion}</h4>
				<input type="hidden" name="vocaId" value="${voca.vocabularyId}" />

				<div class="row g-2">
					<c:forEach var="i" items="${listdapan}">
						<div class="col-6">
							<input name="dapan"
								class="btn w-100 py-5 align-items-center btn-success text-center"
								onclick="setActiveButton(this) " type="button"
								value="${i.englishVerion}">
						</div>

					</c:forEach>
				</div>
				<button type="submit" 
					class="btn btn-primary mt-2">Submit</button>
				<input type="hidden" id="dapan" value="${voca.englishVerion}" /> <input
					type="hidden" id="luachon" name="choice" value="" />
			</form>

		</div>

		<div class="col-3"></div>
	</div>

	<script>

	
	
		function setActiveButton(button) {
			// Xóa class active từ tất cả các button
			var buttons = document.querySelectorAll('input[name="dapan"]');
			buttons.forEach(function(btn) {
				btn.classList.remove('active');
			});

			// Thêm class active vào button được click
			button.classList.add('active');
			document.getElementById("luachon").setAttribute('value',button.value);
			
			console.log(button.value);
			// Đặt giá trị cho hidden input
			document.getElementById('selectedAnswer').value = button.value;
		}

		function submitForm() {
			document.getElementById('questionForm').submit();
		}
	</script>

</body>
</html>
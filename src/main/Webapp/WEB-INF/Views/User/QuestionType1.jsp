<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Neko Vocab</title>
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

.btn.disabled {
	opacity: 1; /* Giữ nguyên độ trong suốt */
	pointer-events: none; /* Vô hiệu hóa sự kiện chuột */
}
</style>
<body>

	<div>
		<jsp:include page="../component/navbarQuestion.jsp"></jsp:include>
		<div class="progress" role="progressbar"
			aria-label="Success striped example" aria-valuenow="25"
			aria-valuemin="0" aria-valuemax="100">
			<div class="progress-bar progress-bar-striped bg-success"
				style="width: 100%"></div>
		</div>
	</div>
	<!-- content -->
	<div></div>
	<!-- Dap an -->
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6 row g-3">
			<form action="/Question/${id}" method="post">
				<h5>Chọn Từ</h5>
				<h4 class="text-center my-1">(${voca.vocabularyType})
					${voca.vietnameseVersion}</h4>
				<input type="hidden" name="vocaId" value="${voca.vocabularyId}" />

				<div class="row g-2">
					<c:forEach var="i" items="${listdapan}">
						<div class="col-6">
							<input name="dapan"
								class="btn w-100 py-5 align-items-center btn-success text-center"
								onclick="setActiveButton(this);" type="button"
								value="${i.englishVerion}">
						</div>

					</c:forEach>
				</div>

				<input type="hidden" id="dapan" value="${voca.englishVerion}" /> <input
					type="hidden" id="luachon" name="choice" value="" />
			</form>

		</div>

		<div class="col-3"></div>
		<div class="col-3"></div>

		<div id="frame" class="col-6 row g-2 p-4 shadow-lg d-none mt-3">

			<div class="col-12 ">
				<h3>(${voca.vocabularyType}) ${voca.vietnameseVersion} :
					${voca.englishVerion}</h3>
				<form action="/Question/${id}" method="post">
					<input type="hidden" name="vocaId" value="${voca.vocabularyId}" />
					<input type="hidden" name="choice" value="${voca.englishVerion}" />
					<input class="btn btn-primary" type="submit" value="Continue">
				</form>

			</div>

		</div>
		<div class="col-3"></div>
	</div>

	<script>
		function setActiveButton(button) {
			var dapan = document.getElementById("dapan").value;
			// Xóa class active từ tất cả các button
			var buttons = document.querySelectorAll('input[name="dapan"]');
			buttons.forEach(function(btn) {
				btn.classList.remove('active');
				btn.disabled = true;
				btn.classList.add('disabled');
			});
			console.log(dapan);
			console.log(button.value);

			if (button.value == dapan) {
				document.getElementById("frame").style.backgroundColor = "green";
			} else {
				document.getElementById("frame").style.backgroundColor = "rgb(235, 52, 64)";
			}

			// Thêm class active vào button được click
			button.classList.add('active');
			document.getElementById("luachon").setAttribute('value',
					button.value);

			
			clearInterval(interval);
			// Đặt giá trị cho hidden input
			document.getElementById('luachon').value = button.value;
			document.getElementById('frame').classList.remove('d-none')

		}
		
		var progressBar = document.querySelector('.progress-bar');
		var duration = 15; // Thời gian giảm dần (60 giây)
		var currentProgress = 100; // Bắt đầu từ 100%

		var interval = setInterval(function() {
		    currentProgress -= (100 / duration); // Giảm dần 100% trong 60 giây

		    if (currentProgress <= 0) {
		        currentProgress = 0;
		        clearInterval(interval);
		    }
		    if(currentProgress == 0){
	        	document.getElementById("frame").style.backgroundColor = "rgb(235, 52, 64)";
		        document.getElementById('frame').classList.remove('d-none')
		        var buttons = document.querySelectorAll('input[name="dapan"]');
				buttons.forEach(function(btn) {
					btn.disabled = true;
					btn.classList.add('disabled');
				});
	        }

		    progressBar.style.width = currentProgress + '%';
		    progressBar.setAttribute('aria-valuenow', currentProgress);
		}, 1000); // Cập nhật mỗi giây (1000 ms)
	</script>

</body>
</html>
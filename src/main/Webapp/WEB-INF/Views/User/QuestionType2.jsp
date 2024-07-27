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
<style>
#inputChoice {
	background-color: white;
}
</style>

</head>
<body>
	<div>
		<jsp:include page="../component/navbarQuestion.jsp"></jsp:include>
		<h6 class="m-2">${count} / 12 câu</h6>
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
			<h5>Chọn Từ</h5>
			<h4 class="text-center my-3">(${voca.vocabularyType})
				${voca.vietnameseVersion}</h4>

			<!-- Type Dap ann -->
			<form action="/Question/${id}" method="POST">
				<input type="hidden" name="vocaId" value="${voca.vocabularyId}" />
				<input type="hidden" id="dapan"
					value="${voca.englishVerion.toUpperCase()}" /> <input
					class="form-control form-control-lg" type="text" id="inputChoice"
					name="choice" placeholder="Nhập từ khóa"
					aria-label=".form-control-lg example">

				<div class="row g-2 mt-2">

					<c:forEach var="i" items="${output}">
						<input onclick="chonchu(this)" type="button"
							class="col-1 mx-1 py-4 text-center" value="${i}">
					</c:forEach>
				</div>
				<input class="btn btn-success my-3 w-100 shadow rounded"
					type="button" onclick="check();" value="Kiểm tra">
			</form>

			<div id="frame" class="col-12 row g-2 p-4 shadow-lg d-none mt-2">

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


			</div>


		</div>




	<script>
	
	
		function chonchu(button){
			
			var traloi =  document.getElementById("inputChoice").value;
			var bien = button.value;
			document.getElementById("inputChoice").value = traloi + bien;
			//console.log(bien);
			//button.parentNode.removeChild(button);
			
			
			
		}
	
		function check() {
			var traloi = document.getElementById("inputChoice").value;
			var dapan = document.getElementById("dapan").value;
			traloi = traloi.toUpperCase();
			if (dapan == traloi) {
				
				document.getElementById("inputChoice").style.backgroundColor = "#198754";
			} else {
				
				document.getElementById("inputChoice").style.backgroundColor = "rgb(235, 52, 64)";
			}
			clearInterval(interval);
				document.getElementById('frame').classList.remove('d-none')
		}
		
		var progressBar = document.querySelector('.progress-bar');
		var duration = 30; // Thời gian giảm dần (60 giây)
		var currentProgress = 100; // Bắt đầu từ 100%

		var interval = setInterval(function() {
		    currentProgress -= (100 / duration); // Giảm dần 100% trong 60 giây

		    if (currentProgress <= 0) {
		        currentProgress = 0;
		        clearInterval(interval);
		        
		    }
		    if(currentProgress == 0){
		    	check();
		    	
		    }
		    progressBar.style.width = currentProgress + '%';
		    progressBar.setAttribute('aria-valuenow', currentProgress);
		}, 1000); // Cập nhật mỗi giây (1000 ms)
	</script>

</body>
</html>
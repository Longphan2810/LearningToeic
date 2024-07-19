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
<style>
#inputChoice {
	background-color: white;
	
}
</style>

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
			<h4 class="text-center my-3">(${voca.vocabularyType})
				${voca.vietnameseVersion}</h4>

			<!-- Type Dap ann -->
			<form action="/Question/${id}" method="POST">
				<input type="hidden" name="vocaId" value="${voca.vocabularyId}" />
				<input type="hidden" id="dapan" value="${voca.englishVerion.toUpperCase()}" />
				 <input 
					class="form-control form-control-lg" type="text" id="inputChoice"
					name="choice" placeholder="Nhập từ khóa"
					aria-label=".form-control-lg example">

				<div class="row g-2 mt-2">

					<c:forEach var="i" items="${output}">
							<input onclick="chonchu(this)" type="button" class="col-1 mx-1 py-4 text-center" value="${i}">
					</c:forEach>
				</div>
				<input class="btn btn-success my-3 w-100 shadow rounded"
					type="button" onclick="check();" value="Kiểm tra">
			</form>

			<div id="frame" class="col-12 row g-2 p-4 shadow-lg d-none mt-2">

				<div class="col-12 ">
					<h3>(${voca.vocabularyType}) ${voca.vietnameseVersion} :
						${voca.englishVerion}</h3>
					<form action="/Question/${id}">
						<input class="btn btn-success" type="submit" value="Countinue">
					</form>

				</div>

			</div>
			
		</div>

		
	
	</div>



	<script>
	
	
		function chonchu(button){
			
			var traloi =   document.getElementById("inputChoice").value;
			var bien = button.value;
			document.getElementById("inputChoice").value = traloi + bien;
			console.log(bien);
			button.parentNode.removeChild(button);
			
			
			
		}
	
		function check() {
			var traloi = document.getElementById("inputChoice").value;
			var dapan = document.getElementById("dapan").value;

			if (dapan == traloi) {
				
				document.getElementById("inputChoice").style.backgroundColor = "rgb(52, 235, 88)";
			} else {
				
				document.getElementById("inputChoice").style.backgroundColor = "rgb(235, 52, 64)";
			}
				document.getElementById('frame').classList.remove('d-none')
		}
	</script>

</body>
</html>
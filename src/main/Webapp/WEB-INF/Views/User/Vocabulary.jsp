<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="C"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
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

<style type="text/css">
.acctiveCustom {
	color: rgb(25, 145, 71);
}

.btn:hover {
	background-color: rgb(226, 241, 232);
}
</style>

</head>
<body>

	<div class="row container-fluid mx-auto">
		<%-- side bar --%>
		<div class=" border-end col-1 " style="height: 700px;">
			<a type="button" href="/home" class="btn p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
  <path
						d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z" />
</svg></a> <a type="button" href="/voca" class="btn  p-3 acctiveCustom "> <svg
					xmlns="http://www.w3.org/2000/svg" width="30" height="30"
					fill="currentColor" class="bi bi-card-checklist"
					viewBox="0 0 16 16">
  <path
						d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z" />
  <path
						d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0M7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0" />
	</svg> <br> <span style="font-size: 12px"> Vocabulary </span>

			</a> <a type="button" href="/statistic" class="btn p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-bar-chart-fill"
					viewBox="0 0 16 16">
  <path
						d="M1 11a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1zm5-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1z" />
</svg>

			</a> <a type="button" href="/info" class="btn p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
  <path fill-rule="evenodd"
						d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
</svg></a>


		</div>

		<%-- Content --%>
		<div class=" col-11   " style="height: 700px;">
			<%-- header content --%>
			<div class=" w-100  " style="height: 70px;">
				<div class="my-3 ms-3"
					style="font-weight: 700; font-size: 30px; color: rgb(25, 145, 71);">
					600 từ vựng toeic</div>
			</div>
			<div class=" w-100 shadow rounded row "
				style="overflow-y: scroll; height: 700px;">


				<%-- chu de --%>
				
				<C:forEach var="i" items="${u}">
					
					<div class=" my-3 col-4 chudehoc">
						<div class="card" style="width: 100%">
							<img src="./assets/image/download.png" class="card-img-top"
								style="width: 100% s; height: 160px" alt="...">
							<div class="card-body">
								<h5 class="card-title">Chủ Đề : ${i.thematicsName} </h5>
								<p class="card-text">Đã học : 1/${i.vocabularies.size()} từ vựng</p>
								<div class="w-100 text-center">
									<form action="" method="get">
										<button formaction="/Question/${i.thematicsId}" type="submit"
											class="btn btn-success">Bắt đầu</button>
									</form>

								</div>
							</div>
						</div>
					</div>

				</C:forEach>
				<%-- chu de end --%>




			</div>



		</div>


	</div>



</body>
</html>
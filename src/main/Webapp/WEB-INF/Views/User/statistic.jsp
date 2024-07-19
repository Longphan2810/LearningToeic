
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
			<div class="">
				<img style="width: 90px" class="img-logo mt-3" alt="img/favicon.png"
					src="./assets/image/favicon.png">
			</div>
			<a type="button" href="/home" class="btn p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
  <path
						d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z" />
</svg>

			</a> <a type="button" href="/voca" class="btn  p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="30" height="30"
					fill="currentColor" class="bi bi-card-checklist"
					viewBox="0 0 16 16">
  <path
						d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z" />
  <path
						d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0M7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0" />
	</svg>


			</a> <a type="button" href="/statistic" class="btn p-4  acctiveCustom">
				<svg xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-bar-chart-fill"
					viewBox="0 0 16 16">
  <path
						d="M1 11a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1zm5-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1z" />
</svg> <br> <span style="font-size: 12px"> Statistic </span>

			</a> <a type="button" href="/info" class="btn p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
  <path fill-rule="evenodd"
						d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
</svg>
			</a>


		</div>
		<%-- Content --%>
		<div class=" col-11" style="height: 700px;">
			<div class="d-flex mt-5">
				<div class="col-5">
					<div class="d-flex justify-content-evenly ">
						<div class="m-3 col-6 bg-success rounded">
							<div class="m-3 bg-light col-1 text-center rounded">			
								${vocabActive}	
							</div>
							<div class="d-flex justify-content-between">
								<h5 class="text-light ms-3">Word learned</h5>

								<a class="text-light me-3"><svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-star-fill"
										viewBox="0 0 16 16">
  										<path
											d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
								</svg></a>
							</div>

						</div>
						<div class="m-3  col-6 bg-primary rounded">
							<div class="m-3 pe-2 bg-light col-2 text-center rounded">${vocabUnlearned}</div>
							<div class="d-flex justify-content-between">
								<h5 class="text-light ms-3">unlearned words</h5>

								<a class="text-light me-3"><svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-star-fill"
										viewBox="0 0 16 16">
  										<path
											d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
								</svg></a>
							</div>

						</div>


					</div>

					<div class="m-3">
						<h6>Streak</h6>
						<div class="mt-3 border border-dark-subtle rounded-4">
							<div class="d-flex justify-content-evenly ">
								<div class="col-6 border-end border-dark-subtle">
									<div class="d-flex">
										<a class="m-2 text-warning"><svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="currentColor" class="bi bi-fire" viewBox="0 0 16 16">
  						<path
													d="M8 16c3.314 0 6-2 6-5.5 0-1.5-.5-4-2.5-6 .25 1.5-1.25 2-1.25 2C11 4 9 .5 6 0c.357 2 .5 4-2 6-1.25 1-2 2.729-2 4.5C2 14 4.686 16 8 16m0-1c-1.657 0-3-1-3-2.75 0-.75.25-2 1.25-3C6.125 10 7 10.5 7 10.5c-.375-1.25.5-3.25 2-3.5-.179 1-.25 2 1 3 .625.5 1 1.364 1 2.25C11 14 9.657 15 8 15" />
							</svg></a>
										<div>
											<h6 class="m-1">3 Day</h6>
											<p class="">Current streak</p>
										</div>

									</div>
									<h6>You had the streak today</h6>

								</div>
								<div class="col-6 ">
									<div class="d-flex">
										<a class="m-2 text-success"><svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="currentColor" class="bi bi-stopwatch-fill"
												viewBox="0 0 16 16">
  						<path
													d="M6.5 0a.5.5 0 0 0 0 1H7v1.07A7.001 7.001 0 0 0 8 16a7 7 0 0 0 5.29-11.584l.013-.012.354-.354.353.354a.5.5 0 1 0 .707-.707l-1.414-1.415a.5.5 0 1 0-.707.707l.354.354-.354.354-.012.012A6.97 6.97 0 0 0 9 2.071V1h.5a.5.5 0 0 0 0-1zm2 5.6V9a.5.5 0 0 1-.5.5H4.5a.5.5 0 0 1 0-1h3V5.6a.5.5 0 1 1 1 0" />
						</svg></a>
										<div>
											<h6 class="m-1">6 Day</h6>
											<p class="">Longest streak</p>
										</div>
									</div>
									<h6>Let's break this record</h6>

								</div>


							</div>
						</div>
					</div>
				</div>

				<div class="col-6 ms-5 ">
					<h5 class="m-4">Weed chart</h5>
					<div class="m-1 ms-3 border border-dark-subtle rounded">
						<div class="m-3">
							<div class="d-flex">
								<i class="bi bi-circle-fill me-2 text-success"></i>
								<p>Number of words learned</p>
							</div>
							<div class="d-flex">
								<i class="bi bi-circle-fill me-2 text-primary"></i>
								<p>Number of words reviewed</p>
							</div>

						</div>

						<div class=" grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Area chart</h4>
									<canvas id="areaChart" style="height: 250px"></canvas>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>


	</div>
	<script>
		document.addEventListener('DOMContentLoaded', function() {

			var areaData = {
				labels : [ "Sum", "Mon", "Tue", "Web", "Thu", "Fri", "Sat",
						"ToDay" ],
				datasets : [ {
					label : '# of Votes',
					data : [ 12, 19, 3, 5, 2 ],
					backgroundColor : [ 'rgba(75, 192, 75, 0.2)',
							'rgba(173, 216, 230, 0.2)',
							'rgba(75, 192, 75, 0.2)',
							'rgba(173, 216, 230, 0.2)',
							'rgba(75, 192, 75, 0.2)' ],
					borderColor : [ 'rgba(75, 192, 75, 1)',
							'rgba(173, 216, 230, 1)', 'rgba(75, 192, 75, 1)',
							'rgba(173, 216, 230, 1)', 'rgba(75, 192, 75, 1)' ],
					borderWidth : 1,
					fill : true
				} ]
			};

			var areaOptions = {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						},
						gridLines : {
							color : "rgba(204, 204, 204,0.1)"
						}
					} ],
					xAxes : [ {
						gridLines : {
							color : "rgba(204, 204, 204,0.1)"
						}
					} ]
				},
				legend : {
					display : true
				},
				elements : {
					point : {
						radius : 0
					}
				}
			};

			if (document.getElementById("areaChart")) {
				var areaChartCanvas = document.getElementById("areaChart")
						.getContext("2d");
				var areaChart = new Chart(areaChartCanvas, {
					type : 'line',
					data : areaData,
					options : areaOptions
				});
			}
		});
	</script>
</body>
</html>

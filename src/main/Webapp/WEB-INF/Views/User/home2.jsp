
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<style type="text/css">


::-webkit-scrollbar {
	width: 12px;
}


.acctiveCustom{
	color: rgba(25, 145, 71);
}
.navbar {
	background-color: rgb(29, 131, 9);

	height: 9vh
}



.btn-voca:hover {
	background: rgba(96, 240, 77, 0.5);
}

@
supports ((position:-webkit-sticky) or (position:sticky)) { .sticky-top
	{ position:-webkit-sticky;
	position: sticky;
	top: 0;
	z-index: 1020;
}
}
</style>

</head>
<body>

	<div class="row container-fluid mx-auto">
		<%-- side bar --%>
		<div class=" border-end col-1 " style="height: 700px;">
		<div class=""  >
					<img style="width:90px" class="img-logo mt-3" alt="img/favicon.png"
						src="./assets/image/favicon.png"> 
				</div>
			<a type="button" href="/home"
				class="text-decoration-none p-4 acctiveCustom "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
  <path
						d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z" />
</svg> <br> <span style="font-size: 12px" class="acctiveCustom">
					Home </span>

			</a> <a type="button" href="/voca" class="btn  p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="30" height="30"
					fill="currentColor" class="bi bi-card-checklist"
					viewBox="0 0 16 16">
  <path
						d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z" />
  <path
						d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0M7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0" />
	</svg>


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
</svg>
			</a>


		</div>
		<%-- Content --%>
		<div class=" col-11">
			<div class="main-panel content">
				<div class=" bg-light">
					<div class="background border-bottom " id="home">

						<nav class="container-fuint navbar sticky-top navbar-elixir py-3">
							<div class="col-3">
								<div class="d-flex">
									 <span class="text-white h4 ms-3"> Neko Vocab </span>
								</div> 

							</div>
						
							<div class="col-3 mb-3">
								<a class="ms-5 text-decoration-none btn btn-sm btn-primary"
									href="/login">Đăng nhập</a> <a
									class="ms-5 text-decoration-none btn btn-sm btn-success"
									href="/register">Đăng ký</a>
							</div>


						</nav>
						<div class="m-3 d-flex container-fuint">
							<div class="col-6 ">
								<div class="me-5 bg-light rounded">
									<h5 class="m-3">Explore over 50,000 of the most commonly
										used English vocabulary words</h5>

									<div class="d-flex">
										<div class="col-5 ms-2 mb-2">
											<a href="#" class="text-decoration-none"><div
													class="card" style="width: 18rem;">
													<div class="card-body btn-voca">
														<h5 class="card-title text-success text-center">vocabulary
															reviews</h5>

														<p class="card-text">Some quick example text to build
															on the card title and make up the bulk of the card's
															content.</p>

													</div>
												</div></a>
										</div>
										<div class="col-5 ms-5">
											<a href="voca" class="text-decoration-none"><div
													class="card" style="width: 18rem;">
													<div class="card-body btn-voca">
														<h5 class="card-title text-success text-center">learn
															new vocabulary</h5>

														<p class="card-text">Some quick example text to build
															on the card title and make up the bulk of the card's
															content.</p>

													</div>
												</div></a>
										</div>
									</div>
								</div>

								<div class="col-10 m-5">
									<div class="card" style="width: 31rem;">
										<div class="card-body">
											<h5 class="card-title">Continue learning</h5>

											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a href="#" class="btn btn-primary col-12">Learn new
												words</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6 rounded">
								<div id="carouselExampleIndicators"
									class="carousel slide rounded">
									<div class="carousel-indicators">
										<button type="button"
											data-bs-target="#carouselExampleIndicators"
											data-bs-slide-to="0" class="active" aria-current="true"
											aria-label="Slide 1"></button>
										<button type="button"
											data-bs-target="#carouselExampleIndicators"
											data-bs-slide-to="1" aria-label="Slide 2"></button>
										<button type="button"
											data-bs-target="#carouselExampleIndicators"
											data-bs-slide-to="2" aria-label="Slide 3"></button>
									</div>
									<div class="carousel-inner">
										<div class="carousel-item active">
											<img src="./assets/image/bg-slide1.jpg"
												class="d-block w-100 rounded" alt="...">
										</div>
										<div class="carousel-item">
											<img src="./assets/image/bg-slide2.jpg"
												class="d-block w-100 rounded" alt="...">
										</div>
										<div class="carousel-item">
											<img src="./assets/image/bg-slide3.jpg"
												class="d-block w-100 rounded" alt="...">
										</div>
									</div>
									<button class="carousel-control-prev" type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Previous</span>
									</button>
									<button class="carousel-control-next" type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide="next">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Next</span>
									</button>
								</div>
								<div class="col-11 m-2">
									<div class="card" >
										<div class="card-body">
											<h5 class="card-title">introduce about website</h5>
											<h6 class="card-subtitle mb-2 text-body-secondary">Neko
												vocab</h6>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>

											<h5 class="card-title">Relate to</h5>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="border-bottom" id="footer">
					<div class="d-flex mt-3">
						<div class=" col-3 ">
							<div class="d-flex">
								<img class="ms-3" alt="img/favicon.png"
									src="./assets/image/favicon.png"
									style="width: 40px; height: 40px">
								<h3>Neko vocab</h3>
							</div>
							<p class="card-text ms-4">Some quick example text to build on the
								card title and make.</p>
							<div class="d-flex justify-content-evenly">
								<i class="bi bi-facebook text-primary"></i> <i
									class="bi bi-messenger text-primary"></i> <i
									class="bi bi-browser-chrome text-danger"></i>
							</div>
						</div>

						<div class=" col-4">
							<img alt="" src="">
						</div>
						<div class=" col-3">
							<h3>Contact info</h3>
							<div class="d-flex">
								<i class="bi bi-envelope-at-fill text-primary"></i>
								<h6 class="ms-3">nekovocb@gmail.com</h6>
							</div>
							<div class="d-flex">
								<i class="bi bi-telephone-inbound-fill text-primary"></i>
								<h6 class="ms-3">+84 6325555555</h6>
							</div>
							<div class="d-flex">
								<i class="bi bi-geo-alt-fill text-danger"></i>
								<h6 class="ms-3" >Lien chieu,Da Nang,Viet Nam</h6>
							</div>
						</div>
					</div>
				</div>
=======
		
			
				
>>>>>>> branch 'main' of https://github.com/Longphan2810/LearningToeic.git
			</div>




		</div>


	</div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Neko Vocab</title>
<link rel="icon" type="image/x-icon" href="/assets/image/logo.jpg">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<style type="text/css">

.acctiveCustom{
	color: rgb(25, 145, 71);

}
.btn:hover {
	background-color: rgb(226, 241, 232);
}
.brand {
	background-color: rgb(25, 145, 71);
}

.bg_card {
	background-color: whitesmoke;
}
/* .setting_layout{
    box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;  } */
.form_header {
	font-size: 1.675em;
}
</style>

</head>
<body>

	<div class="row container-fluid mx-auto">	
	<%-- side bar --%>
	
		<div class=" border-end col-1 " style="height: 700px ; " >
			<div class=""  >
					<img style="width:90px" class="img-logo mt-3" alt="img/favicon.png"
						src="./assets/image/favicon.png"> 
				</div>
		<a type="button" href="/home" class="btn p-4  ">
		<svg xmlns="http://www.w3.org/2000/svg" width="33" height="33" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
  <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z"/>
</svg>




</a>
		<a type="button"  href="/voca" class="btn  p-4 ">
		
	<svg xmlns="http://www.w3.org/2000/svg" width="33" height="33" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z"/>
  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0M7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0"/>
	</svg>

		</a>
		<a type="button" href="/statistic" class="btn p-4  "> <svg
					xmlns="http://www.w3.org/2000/svg" width="33" height="33"
					fill="currentColor" class="bi bi-bar-chart-fill"
					viewBox="0 0 16 16">
  <path
						d="M1 11a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1zm5-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1z" />
</svg>

			</a>
		<a type="button" href="/info"  class="btn p-3  acctiveCustom">
		<svg xmlns="http://www.w3.org/2000/svg" width="33" height="33" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
</svg>

		<br>
			<span style="font-size: 12px">
	Information
	
	</span>
</a>
		
		
		</div>
	<%--------------------------- Content --------------------------%>
		<div class=" col-11" style="height: 700px;  ">
		<div class="row ">
		<h4 class="brand py-3 text-light">Cài Đặt</h4>
	</div>

	<div class=" rounded row container px-1 ">
		<div class="col-lg-1"></div>
		<div class="col-lg-3 ">
			<div>
				<label for="" class="form-label form_header text-success">Tài
					Khoản</label>
				<div class="card bg_card" style="width: 18rem;">
					<div class="card-body ">
						<div class="d-flex align-items-center mb-4">
							<div class="flex-shrink-0">
								<img
									src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-2.webp"
									alt="Generic placeholder image"
									class="img-fluid rounded-circle border border-dark border-3"
									style="width: 70px;">
							</div>
							<div class="flex-grow-1 ms-3">
								<div class="d-flex flex-row align-items-center mb-2">
									<p class="mb-0 me-2">Tran Luong</p>

								</div>
								<div>
									<button type="button" data-mdb-button-init data-mdb-ripple-init
										class="btn btn-outline-dark btn-rounded btn-sm"
										data-mdb-ripple-color="dark" data-toggle="modal" data-target="#editEmployeeModal">See profile</button>
								</div>
							</div>

						</div>
						<div class="d-flex py-4">
							<i class="fa fa-chevron-up mt-1 text-success px-1 "
								aria-hidden="true"></i> <a
								class="text-decoration-none text-dark bg_card" href="">Nâng
								Cấp</a>
						</div>
						<div class="d-flex py-4">
							<i class="fa fa-tag mt-1 text-success px-1" aria-hidden="true"></i>

							<a class="text-decoration-none px-1 text-dark" href="">Nhập
								Mã Mua Hàng</a>
						</div>
						<div class="d-flex py-4">
							<i class="fa fa-history mt-1 text-success px-1"
								aria-hidden="true"></i> <a
								class="text-decoration-none text-dark" href="">Lịch Sử Nhận
								Thưởng</a>
						</div>
					</div>
				</div>
				<br> <br>
				<div>
					<label for="" class="form-label form_header text-success">Cộng
						Đồng</label>
				</div>
				<div class="card bg_card text-left rounded">

					<div class="card-body d-flex ">
						<i class="fa fa-pencil-square-o mt-1 text-success px-1 "
							aria-hidden="true"></i> <a class="text-decoration-none text-dark"
							href="contact">Contact</a>
					</div>
				</div>
			</div>


		</div>
    <div class="col-lg-1"></div>
		<!-- card2 -->
		<div class="col-lg-3 ">
			
			
			<div>
				<label for="" class="form-label form_header text-success">Thông
					Báo</label>
			</div>
			<div class="card bg_card row d-flex text-start">

				<div class="card-body ">
					<div class="d-flex">
						<div class="flex-shrink-0">
							<i class="fa fa-bell" aria-hidden="true"></i>
						</div>
						<div class="flex-grow-1">
							<p>Nhắc Nhở Luyện Tập Hằng Ngày</p>
							<div class="flex-row align-items-center">

								<a href="" class="text-success text-decoration-none">Chưa
									Thiết Lập</a>
							</div>
							<div class="d-flex">
								<div class="flex-shrink-0">
									<i class="fa fa-fire" aria-hidden="true"></i>
								</div>
								<div class="flex-grow-1 me-auto">
									<div class="d-flex flex-row align-items-center">
										<label for="" class="form-label text-secondary">Cảnh
											Báo Mất Chuỗi Streak</label>
										<div class="form-check form-switch ms-auto">
											<input class="form-check-input" type="checkbox"
												id="flexSwitchCheckChecked" checked>

										</div>

									</div>
								</div>

							</div>

							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
    <div class="col-lg-1"></div>
    <!-- card-3 -->
    <div class="col-lg-3 ">
			<div>
				<label for="" class="form-label form_header text-success">Học Và Luyện Tập</label>
			</div>
			<div class="card bg_card text-start mb-5">

				<div class="card-body">
					<div class="d-flex py-4">
            <i class="fa fa-heart text-success mt-1" aria-hidden="true"></i> <a
              class="text-decoration-none text-dark bg_card" href="">Chọn Danh Mục Yêu Thích</a>
          </div>
          <div class="d-flex py-4">
         
			
			<i class="fa fa-wheelchair-alt heart text-success mt-1" aria-hidden="true"></i>
			
            <a class="text-decoration-none px-1 text-dark" href="">Cấu Hình Luyện Tập</a>
          </div>
          <div class="d-flex py-4">
            <i class="fa fa-history mt-1 text-success px-1"
              aria-hidden="true"></i> <a
              class="text-decoration-none text-dark" href="">Xem Hướng Dẫn</a>
          </div>
				</div>
			</div>
			<div>
				<label for="" class="form-label form_header text-success">Thông
					Báo</label>
			</div>
			<div class="card bg_card row d-flex text-start">

				<div class="card-body ">
					<div class="d-flex align-items-center mb-4">
							<div class="flex-shrink-0">
								<img
									src="/assets/image/download1.jpg"
									alt="Generic placeholder image"
									class="img-fluid rounded-circle border border-dark border-3"
									style="width: 70px;">
							</div>
							<div class="flex-grow-1 ms-3">
								<div class="d-flex flex-row align-items-center mb-2">
									<p class="mb-0 me-2">Tải App</p>

								</div>
								<div>
									<a class="text-decoration-none text-success "
							href="">Khả Dụng  Trên Cả Android Và IOS </a>
								</div>
							</div>

						</div>
				</div>
			</div>
		</div>
	</div>
	<!-- card3 -->
<div id="editEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">						
                        <h4 class="modal-title">Change Profile</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <textarea class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                            <input type="text" class="form-control" required>
                        </div>					
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-info" value="Save">
                    </div>
                </form>
            </div>
        </div>
    </div>
	
		</div>


	</div>



</body>
</html>
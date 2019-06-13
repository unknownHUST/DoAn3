<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <jsp:include page="header.jsp"/>
</head>
<body>

	<div class="site-wrap">
		<jsp:include page="header_page.jsp"/>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="/Miniproject/">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Shop</strong>
						<c:choose>
							<c:when test="${phanloai == 1}">
								<span class="mx-2 mb-0">/</span>Giày nam
							</c:when>
							<c:when test="${phanloai == 2}">
								<span class="mx-2 mb-0">/</span>Giày nữ
							</c:when>
						</c:choose>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row mb-5">
				<c:choose>
					<c:when test="${listSanPhams.size() != 0}">
					<div class="col-md-9 order-2">

						<div class="row">
							<div class="col-md-12 mb-5">
								<div class="float-md-left mb-4">
									<c:choose>
										<c:when test="${phanloai == 1}">
											<h2 class="text-black h5">Giày nam</h2>
										</c:when>
										<c:when test="${phanloai == 2}">
											<h2 class="text-black h5">Giày nữ</h2>
										</c:when>
										<c:otherwise>
											<h2 class="text-black h5">Shop All</h2>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="d-flex">
									<div class="dropdown mr-1 ml-md-auto">
										<button type="button" class="btn btn-secondary btn-sm dropdown-toggle"
											id="dropdownMenuOffset" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Latest</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuOffset">
											<a class="dropdown-item" href="/Miniproject/shop/1?page=1">Men</a> <a
												class="dropdown-item" href="/Miniproject/shop/2?page=1">Women</a> <a
												class="dropdown-item" href="#">Children</a>
										</div>
									</div>
									<!-- <div class="btn-group">
										<button type="button"
											class="btn btn-secondary btn-sm dropdown-toggle"
											id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuReference">
											<a class="dropdown-item" href="#">Relevance</a> <a
												class="dropdown-item" href="#">Name, A to Z</a> <a
												class="dropdown-item" href="#">Name, Z to A</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Price, low to high</a> <a
												class="dropdown-item" href="#">Price, high to low</a>
										</div>
									</div> -->
								</div>
							</div>
						</div>
						<div class="row mb-5">
							<c:forEach var="sanpham" items="${listSanPhams}">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
									<div class="block-4 text-center border">
										<figure class="block-4-image">
											<a href="/Miniproject/single/${sanpham.getIdSanPham()}"><img src='<c:url value="/resources/images/SanPham/${sanpham.getImageSanPham()}"/>'
												alt="Image placeholder" class="img-fluid"></a>
										</figure>
										<div class="block-4-text p-4">
											<h3 style="width: 204.98px; height: 48px;">
												<a href="/Miniproject/single/${sanpham.getIdSanPham()}">${sanpham.getTenSanPham()}</a>
											</h3>
											<p>${sanpham.getGiatien()} VND</p>
										</div>
									</div>
								</div>
							</c:forEach>
							
							<!-- <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/shoe_1.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Corater</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_2.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Polo Shirt</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_3.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">T-Shirt Mockup</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/shoe_1.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Corater</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_1.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Tank Top</a>
										</h3>
										<p class="mb-0">Finding perfect t-shirt</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/shoe_1.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Corater</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_2.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Polo Shirt</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_3.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">T-Shirt Mockup</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/shoe_1.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Corater</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_1.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Tank Top</a>
										</h3>
										<p class="mb-0">Finding perfect t-shirt</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
								<div class="block-4 text-center border">
									<figure class="block-4-image">
										<a href="shop-single.html"><img src="images/cloth_2.jpg"
											alt="Image placeholder" class="img-fluid"></a>
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="shop-single.html">Polo Shirt</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div> -->


						</div>
						<div class="row" data-aos="fade-up">
							<div class="col-md-12 text-center">
								<div class="site-block-27">
									<ul>
										<li><a href="?page=${page_active - 1}">&lt;</a></li>
										<!-- <li class="active"><span>1</span></li>
										<li class="active"><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li> -->
										<c:forEach var="pageNumber" begin="1" end="${sotrang}">
											<c:choose>
												<c:when test="${pageNumber == page_active}">
													<li class="active"><a href="?page=${pageNumber}">${pageNumber}</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="?page=${pageNumber}">${pageNumber}</a></li>												
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<li><a href="?page=${page_active + 1}">&gt;</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</c:when>
					<c:otherwise>
					<div class="col-md-9 order-2">
						<div class="col-md-12 text-center">
			            	<h2 class="display-3 text-black">Oops!</h2>
			            	<p class="lead mb-5">Không có kết quả hiển thị!</p>
			            	<p><a href="/Miniproject/" class="btn btn-sm btn-primary">Quay lại trang chủ</a></p>
			          	</div>
					</div>
					</c:otherwise>
				</c:choose>
					<div class="col-md-3 order-1 mb-5 mb-md-0">
						<div class="border p-4 rounded mb-4">
							<h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
							<ul class="list-unstyled mb-0">
								<li class="mb-1"><a href="/Miniproject/shop/1?page=1" class="d-flex"><span>Men</span>
										<span class="text-black ml-auto">(${soSPnam})</span></a></li>
								<li class="mb-1"><a href="/Miniproject/shop/2?page=1" class="d-flex"><span>Women</span>
										<span class="text-black ml-auto">(${soSPnu})</span></a></li>
								<li class="mb-1"><a href="#" class="d-flex"><span>Children</span>
										<span class="text-black ml-auto">(0)</span></a></li>
							</ul>
						</div>

						<div class="border p-4 rounded mb-4">
							<form action="/Miniproject/shop/search" method="get">
							<div class="mb-4">
								<h3 class="mb-3 h6 text-uppercase text-black d-block">Điều chỉnh giá</h3>
								<div id="slider-range" class="border-primary"></div>
								<input type="text" name="amount" id="amount" class="form-control border-0 pl-0 bg-white" disabled="" />
								<input id="abc" style="margin-left: 25%;" type="submit" class="buy-now btn btn-sm btn-primary" value="Search">
							</div>
							</form>

<!-- 							<div class="mb-4"> -->
<!-- 								<h3 class="mb-3 h6 text-uppercase text-black d-block">Color</h3> -->
<!-- 								<a href="#" class="d-flex color-item align-items-center"> <span -->
<!-- 									class="bg-danger color d-inline-block rounded-circle mr-2"></span> -->
<!-- 									<span class="text-black">Red (2,429)</span> -->
<!-- 								</a> <a href="#" class="d-flex color-item align-items-center"> -->
<!-- 									<span -->
<!-- 									class="bg-success color d-inline-block rounded-circle mr-2"></span> -->
<!-- 									<span class="text-black">Green (2,298)</span> -->
<!-- 								</a> <a href="#" class="d-flex color-item align-items-center"> -->
<!-- 									<span class="bg-info color d-inline-block rounded-circle mr-2"></span> -->
<!-- 									<span class="text-black">Blue (1,075)</span> -->
<!-- 								</a> <a href="#" class="d-flex color-item align-items-center"> -->
<!-- 									<span -->
<!-- 									class="bg-primary color d-inline-block rounded-circle mr-2"></span> -->
<!-- 									<span class="text-black">Purple (1,075)</span> -->
<!-- 								</a> -->
<!-- 							</div> -->

						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="site-section site-blocks-2">
							<div class="row justify-content-center text-center mb-5">
								<div class="col-md-7 site-section-heading pt-4">
									<h2>Categories</h2>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0"
									data-aos="fade" data-aos-delay="">
									<a class="block-2-item" href="/Miniproject/shop/2?page=1">
										<figure class="image">
											<img src='<c:url value="/resources/images/women.jpg"/>'
												alt="" class="img-fluid">
										</figure>
										<div class="text">
											<h3>Women</h3>
										</div>
									</a>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0"
									data-aos="fade" data-aos-delay="100">
									<a class="block-2-item" href="#">
										<figure class="image">
											<img src='<c:url value="/resources/images/children.jpg"/>'
												alt="" class="img-fluid">
										</figure>
										<div class="text">
											<h3>Children</h3>
										</div>
									</a>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0"
									data-aos="fade" data-aos-delay="200">
									<a class="block-2-item" href="/Miniproject/shop/1?page=1">
										<figure class="image">
											<img src='<c:url value="/resources/images/men.jpg"/>' alt=""
												class="img-fluid">
										</figure>
										<div class="text">
											<h3>Men</h3>
										</div>
									</a>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>

		<footer class="site-footer border-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 mb-5 mb-lg-0">
						<div class="row">
							<div class="col-md-12">
								<h3 class="footer-heading mb-4">Navigations</h3>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Sell online</a></li>
									<li><a href="#">Features</a></li>
									<li><a href="#">Shopping cart</a></li>
									<li><a href="#">Store builder</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Mobile commerce</a></li>
									<li><a href="#">Dropshipping</a></li>
									<li><a href="#">Website development</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Point of sale</a></li>
									<li><a href="#">Hardware</a></li>
									<li><a href="#">Software</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
						<h3 class="footer-heading mb-4">Promo</h3>
						<a href="#" class="block-6"> <img src="images/hero_1.jpg"
							alt="Image placeholder" class="img-fluid rounded mb-4">
							<h3 class="font-weight-light  mb-0">Finding Your Perfect
								Shoes</h3>
							<p>Promo from nuary 15 &mdash; 25, 2019</p>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="block-5 mb-5">
							<h3 class="footer-heading mb-4">Contact Info</h3>
							<ul class="list-unstyled">
								<li class="address">203 Fake St. Mountain View, San
									Francisco, California, USA</li>
								<li class="phone"><a href="tel://23923929210">+2 392
										3929 210</a></li>
								<li class="email">emailaddress@domain.com</li>
							</ul>
						</div>

						<div class="block-7">
							<form action="#" method="post">
								<label for="email_subscribe" class="footer-heading">Subscribe</label>
								<div class="form-group">
									<input type="text" class="form-control py-4"
										id="email_subscribe" placeholder="Email"> <input
										type="submit" class="btn btn-sm btn-primary" value="Send">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script data-cfasync="false"
								src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="icon-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>

				</div>
			</div>
		</footer>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
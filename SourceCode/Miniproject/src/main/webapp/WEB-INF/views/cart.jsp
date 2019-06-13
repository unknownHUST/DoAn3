<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Cart</title>
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
							class="text-black">Cart</strong>
					</div>
				</div>
			</div>
		</div>
		<c:choose>
			<c:when test="${listcart.getItemCart().size() >= 1 }">
				<div class="site-section">
					<div class="container">
						<div class="row mb-5">
							<form class="col-md-12" method="post">
								<div class="site-blocks-table">
									<table class="table table-bordered table-cart">
										<thead>
											<tr>
												<th>Code</th>
												<th class="product-thumbnail">Ảnh</th>
												<th class="product-name">Tên sản phẩm</th>
												<th class="product-price">Đơn giá</th>
												<th class="product-quantity">Số lượng</th>
												<th class="product-total">Size</th>
												<th class="product-remove">Loại bỏ?</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="itemcart" items="${listcart.getItemCart().values()}">
												<tr>
													<td>${itemcart.getChiTietSanPham().getIdChiTietSanPham()}</td>
													<td class="product-thumbnail">
														<a href="/Miniproject/single/${itemcart.getChiTietSanPham().getSanPham().getIdSanPham()}">
															<img src='<c:url value="/resources/images/SanPham/${itemcart.getChiTietSanPham().getSanPham().getImageSanPham()}"/>' alt="Image" class="img-fluid">
														</a>
													</td>
													<td class="product-name">
														<h2 class="h5 text-black">${itemcart.getChiTietSanPham().getSanPham().getTenSanPham() }</h2>
													</td>
													<td>${itemcart.getChiTietSanPham().getSanPham().getGiatien() }</td>
													<td>
														<div class="input-group mb-3" style="max-width: 120px;">
															<div class="input-group-prepend">
																<button class="btn btn-outline-primary js-btn-minus btn-minus-cart-one"
																	type="button">&minus;</button>
															</div>
															<input type="text" id="soluong" class="form-control text-center"
																value="${itemcart.getSoluongmua()}" placeholder=""
																aria-label="Example text with button addon"
																aria-describedby="button-addon1">
															<div class="input-group-append">
																<button class="btn btn-outline-primary js-btn-plus btn-plus-cart-one"
																	type="button">&plus;</button>
															</div>
														</div>
			
													</td>
													<td>${itemcart.getChiTietSanPham().getSizeSanPham().getTenSize() }</td>
													<td><button type="button" class="btn btn-primary btn-sm btn-remove-item-cart" style="background-color: red !important; border-color: red !important;">X</button></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</form>
						</div>
		
						<div class="row">
							<div class="col-md-6">
								<div class="row mb-5">
									<!-- <div class="col-md-6 mb-3 mb-md-0">
										<button class="btn btn-primary btn-sm btn-block">Update
											Cart</button>
									</div> -->
									<div class="col-md-6">
										<!-- <button class="btn btn-outline-primary btn-sm btn-block">Continue
											Shopping</button> -->
										<a href="/Miniproject/" class="btn btn-outline-primary btn-sm btn-block">Quay lại mua sắm</a>
									</div>
								</div>
								<!-- <div class="row">
									<div class="col-md-12">
										<label class="text-black h4" for="coupon">Coupon</label>
										<p>Enter your coupon code if you have one.</p>
									</div>
									<div class="col-md-8 mb-3 mb-md-0">
										<input type="text" class="form-control py-3" id="coupon"
											placeholder="Coupon Code">
									</div>
									<div class="col-md-4">
										<button class="btn btn-primary btn-sm">Apply Coupon</button>
									</div>
								</div> -->
							</div>
							<div class="col-md-6 pl-5">
								<div class="row justify-content-end">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-12 text-right border-bottom mb-5">
												<h3 class="text-black h4 text-uppercase">Thanh toán</h3>
											</div>
										</div>
										<!-- <div class="row mb-3">
											<div class="col-md-6">
												<span class="text-black">Subtotal</span>
											</div>
											<div class="col-md-6 text-right">
												<strong class="text-black">$230.00</strong>
											</div>
										</div> -->
										<div class="row mb-5">
											<div class="col-md-6">
												<span class="text-black">Tổng cộng: </span>
											</div>
											<div class="col-md-6 text-right">
												<strong class="text-black total-cart">${listcart.totalCart() } VNĐ</strong>
											</div>
										</div>
		
										<div class="row">
											<div class="col-md-12">
												<a href="/Miniproject/checkout" class="btn btn-primary btn-lg py-3 btn-block" >Xử lý đơn hàng</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:when>
			
			<c:otherwise>
				<div class="site-section">
			      <div class="container">
			        <div class="row">
			          <div class="col-md-12 text-center">
			            <h2 class="display-3 text-black">Opps!</h2>
			            <p class="lead mb-5">Có vẻ như bạn chưa có sản phẩm nào trong giỏ hàng.</p>
			            <p><a href="/Miniproject/" class="btn btn-sm btn-primary">Back to shop</a></p>
			          </div>
			        </div>
			      </div>
			    </div>
			</c:otherwise>
		</c:choose>

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
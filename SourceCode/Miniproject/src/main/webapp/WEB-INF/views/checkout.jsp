<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Checkout</title>
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
						<a href="/Miniproject/">Home</a> <span class="mx-2 mb-0">/</span> <a
							href="/Miniproject/cart">Cart</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Checkout</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<form id="formCheckout" action="/Miniproject/checkout" method="post">
					<div class="row">
						<div class="col-md-6 mb-5 mb-md-0">
							<h2 class="h3 mb-3 text-black">Thông tin khách hàng</h2>
							<div class="p-3 p-lg-5 border">
								<div class="form-group row">
									<div class="col-md-6">
										<label for="c_fname" class="text-black">Họ tên khách hàng <span class="text-danger">*</span></label> 
										<input type="text" class="form-control" id="hotenkhachhang" name="hotenkhachhang" required="required">
									</div>
									<div class="col-md-6">
										<label for="c_lname" class="text-black">Số điện thoại <span class="text-danger">*</span></label> 
										<input type="text" class="form-control" id="sodienthoai" name="sodienthoai" required="required">
									</div>
								</div>
	
								<div class="form-group row">
									<div class="col-md-12">
										<label for="c_address" class="text-black">Địa chỉ <span class="text-danger">*</span></label>
										<input type="text" class="form-control" id="diachigiaohang" name="diachigiaohang" placeholder="Địa chỉ giao hàng" required="required">
									</div>
								</div>
	
								<div class="form-group">
									<label for="c_order_notes" class="text-black">Ghi chú</label>
									<textarea name="c_order_notes" id="c_order_notes" cols="30" rows="5" class="form-control" placeholder="Viết ghi chú của bạn tại đây..."></textarea>
								</div>
	
							</div>
						</div>
						<div class="col-md-6">
	
							<div class="row mb-5">
								<div class="col-md-12">
									<h2 class="h3 mb-3 text-black">Order của bạn</h2>
									<div class="p-3 p-lg-5 border">
										<table class="table site-block-order-table mb-5">
											<thead>
												<th>Sản phẩm</th>
												<th>Đơn giá</th>
											</thead>
											<tbody>
												<c:forEach var="itemcart" items="${listcart.getItemCart().values()}">
												<tr>
													<td>${itemcart.getChiTietSanPham().getSanPham().getTenSanPham() } <strong class="mx-2">-</strong> ${itemcart.getChiTietSanPham().getSizeSanPham().getTenSize() } <strong class="mx-2">x</strong> ${itemcart.getSoluongmua()} </td>
													<td>${itemcart.getChiTietSanPham().getSanPham().getGiatien() }</td>
												</tr>
												</c:forEach>
													
												<!-- <tr>
													<td class="text-black font-weight-bold"><strong>Cart
															Subtotal</strong></td>
													<td class="text-black">$350.00</td>
												</tr> -->
												<tr>
													<td class="text-black font-weight-bold"><strong>Tổng cộng:</strong></td>
													<td class="text-black font-weight-bold"><strong>${listcart.totalCart() }</strong></td>
												</tr>
											</tbody>
										</table>
	
										<div class="border p-3 mb-3">
											<h3 class="h6 mb-0">
												<a class="d-block" data-toggle="collapse"
													href="#collapsebank" role="button" aria-expanded="false"
													aria-controls="collapsebank">Direct Bank Transfer</a>
											</h3>
	
											<div class="collapse" id="collapsebank">
												<div class="py-2">
													<p class="mb-0">Make your payment directly into our bank
														account. Please use your Order ID as the payment reference.
														Your order won’t be shipped until the funds have cleared in
														our account.</p>
												</div>
											</div>
										</div>
	
										<div class="border p-3 mb-3">
											<h3 class="h6 mb-0">
												<a class="d-block" data-toggle="collapse"
													href="#collapsecheque" role="button" aria-expanded="false"
													aria-controls="collapsecheque">Cheque Payment</a>
											</h3>
	
											<div class="collapse" id="collapsecheque">
												<div class="py-2">
													<p class="mb-0">Make your payment directly into our bank
														account. Please use your Order ID as the payment reference.
														Your order won’t be shipped until the funds have cleared in
														our account.</p>
												</div>
											</div>
										</div>
	
										<div class="border p-3 mb-5">
											<h3 class="h6 mb-0">
												<a class="d-block" data-toggle="collapse"
													href="#collapsepaypal" role="button" aria-expanded="false"
													aria-controls="collapsepaypal">Paypal</a>
											</h3>
	
											<div class="collapse" id="collapsepaypal">
												<div class="py-2">
													<p class="mb-0">Make your payment directly into our bank
														account. Please use your Order ID as the payment reference.
														Your order won’t be shipped until the funds have cleared in
														our account.</p>
												</div>
											</div>
										</div>
	
										<div class="form-group">
											<input type="submit" class="btn btn-primary btn-lg py-3 btn-block" value="Đặt hàng">
										</div>
	
									</div>
								</div>
							</div>
	
						</div>
					</div>
				</form>
				<!-- </form> -->
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
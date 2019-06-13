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
							class="text-black">${sp.getTenSanPham()}</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6">
						<img src='<c:url value="/resources/images/SanPham/${sp.getImageSanPham()}"/>' alt="Image" class="img-fluid">
					</div>
					
					<div class="col-md-6">
						<h2 class="text-black">${sp.getTenSanPham()}</h2>
						<p>${sp.getMotaSP()}</p>
						<p class="mb-4" style="margin-left: 60px;">-Miễn phí vận chuyển Hà Nội</p>
						<p class="mb-4" style="margin-left: 60px;">-Đổi trả miễn phí trong 7 ngày</p>
						<p class="mb-4" style="margin-left: 60px;">-Thanh toán khi nhận hàng</p>
						<p>
							<strong class="text-primary h4">${sp.getGiatien()} VND</strong>
						</p>
						
						<c:choose>
							<c:when test="${listctsp.size() != 0}">
								<h2 class="text-black">Chọn size và số lượng:</h2>
								<div class="mb-1 d-flex">
									<select id="idchitietsp" class="custom-select" style="width:150px; height: 43px; border-color: #7971ea;">
										<c:forEach var="chitietsanpham" items="${listctsp}">
											<option value="${chitietsanpham.getIdChiTietSanPham()}">Size ${chitietsanpham.getSizeSanPham().getTenSize()} (${chitietsanpham.getSoluong()} còn)</option>
										</c:forEach>
									</select>
									&nbsp; &nbsp;
									<div class="input-group mb-3" style="max-width: 110px;">
										<div class="input-group-prepend">
											<button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
										</div>
										<input type="text" id="soluongmua" name="soluongmua" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
										<div class="input-group-append">
											<button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
										</div>
									</div>
									
									<%-- <label for="option-sm" class="d-flex mr-3 mb-3"> 
										<span class="d-inline-block mr-2" style="top: -2px; position: relative;"><input type="radio" id="idchitietsp" name="idchitietsp" value="${chitietsanpham.getIdChiTietSanPham()}"></span> 
										<span class="d-inline-block text-black">Size ${chitietsanpham.getSizeSanPham().getTenSize()} (${chitietsanpham.getSoluong()})</span>
									</label>  --%>
									<!-- <label for="option-md" class="d-flex mr-3 mb-3"> <span
										class="d-inline-block mr-2"
										style="top: -2px; position: relative;"><input
											type="radio" id="option-md" name="shop-sizes"></span> <span
										class="d-inline-block text-black">Medium</span>
									</label> 
									<label for="option-lg" class="d-flex mr-3 mb-3"> <span
										class="d-inline-block mr-2"
										style="top: -2px; position: relative;"><input
											type="radio" id="option-lg" name="shop-sizes"></span> <span
										class="d-inline-block text-black">Large</span>
									</label> 
									<label for="option-xl" class="d-flex mr-3 mb-3"> <span
										class="d-inline-block mr-2"
										style="top: -2px; position: relative;"><input
											type="radio" id="option-xl" name="shop-sizes"></span> <span
										class="d-inline-block text-black"> Extra Large</span>
									</label> -->
									
								</div>
								<div class="mb-5">
									&nbsp;
									<!-- <div class="input-group mb-3" style="max-width: 120px;">
										<div class="input-group-prepend">
											<button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
										</div>
										<input type="text" id="soluongmua" name="soluongmua" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
										<div class="input-group-append">
											<button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
										</div>
									</div> -->
		
								</div>
								<p>
									<button type="button" class="buy-now btn btn-sm btn-primary btn-add-to-cart">Add To Cart</button>
									<a href="/Miniproject/cart" style="background-color: #FF4000; border-color: #FF4000;" class="buy-now btn btn-sm btn-primary"><span class="icon icon-shopping_cart" title="Giỏ hàng"></span>Xem giỏ hàng</a>
								</p>
							</c:when>
							<c:otherwise>
								<div>
									<img style="width: 280px; height: 200px;" src='<c:url value="/resources/images/icon_sold_daynitgiare.png"/>' alt="Image" class="img-fluid">
									<br>
								</div>
								<a href="/Miniproject/" style="background-color: #FF4000; border-color: #FF4000;" class="buy-now btn btn-sm btn-primary">Back to shop</a>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</div>
		</div>

		<div class="site-section block-3 site-blocks-2 bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-7 site-section-heading text-center pt-4">
						<h2>Các sản phẩm nổi bật</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="nonloop-block-3 owl-carousel">
							<c:forEach var="sp" items="${listSanPhamTrangChu}">
								<div class="item">
									<div class="block-4 text-center">
										<figure class="block-4-image">
											<img src='<c:url value="/resources/images/SanPham/${sp.getImageSanPham()}"/>' alt="Image placeholder"
												class="img-fluid">
										</figure>
										<div class="block-4-text p-4">
											<h3>
												<a href="/Miniproject/single/${sp.getIdSanPham()}">${sp.getTenSanPham()}</a>
											</h3>
											
											<p>${sp.getGiatien()} VND</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<%-- <div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src='<c:url value="/resources/images/shoe_1.jpg"/>' alt="Image placeholder"
											class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="#">Corater</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src='<c:url value="/resources/images/cloth_2.jpg"/>' alt="Image placeholder"
											class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="#">Polo Shirt</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src='<c:url value="/resources/images/cloth_3.jpg"/>' alt="Image placeholder"
											class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="#">T-Shirt Mockup</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="block-4 text-center">
									<figure class="block-4-image">
										<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' alt="Image placeholder"
											class="img-fluid">
									</figure>
									<div class="block-4-text p-4">
										<h3>
											<a href="#">Corater</a>
										</h3>
										<p class="mb-0">Finding perfect products</p>
										<p class="text-primary font-weight-bold">$50</p>
									</div>
								</div>
							</div> --%>
						</div>
					</div>
				</div>
			</div>
		</div>

		
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
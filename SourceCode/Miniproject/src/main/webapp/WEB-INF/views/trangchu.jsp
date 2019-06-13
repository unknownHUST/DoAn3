<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<jsp:include page="header.jsp"/>
</head>
<body>
	<div class="container-fluid header">
		<nav class="navbar navbar-expand-lg navbar-light none-navbar">
		    <a class="navbar-brand" href="#">LOGO SHOP</a>
		    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
		        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		    </button>
		
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		        <ul class="navbar-nav mr-auto navbar-center">
		            <li class="nav-item active">
		                <a class="nav-link" href="#">TRANG CHỦ<span class="sr-only">(current)</span></a>
		            </li> &nbsp;
		            <!-- <li class="nav-item dropdown">
		                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
		                    aria-haspopup="true" aria-expanded="false">
		                    Danh mục sản phẩm
		                </a>
		                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		                    <a class="dropdown-item" href="#">Action</a>
		                    <a class="dropdown-item" href="#">Another action</a>
		                    <div class="dropdown-divider"></div>
		                    <a class="dropdown-item" href="#">Something else here</a>
		                </div>
		            </li> -->
		            <li class="nav-item"><a class="nav-link" href="#">GIÀY NAM</a></li> &nbsp;
		            <li class="nav-item"><a class="nav-link" href="#">GIÀY NỮ</a></li> &nbsp;
		            <li class="nav-item"><a class="nav-link" href="#">LIÊN HỆ</a></li>
		        </ul>
		        <ul class="navbar-nav mr-auto navbar-right">
		            <li class="nav-item"><a class="nav-link" href="#">Đăng nhập</a></li> &nbsp;
		            <li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li> &nbsp;
		            <li class="nav-item">
			            <a class="nav-link" href="#"><img src='<c:url value="/resources/images/shopping-cart.png"/>' width="24px" height="24px" alt=""></a>		            
		            </li>
		        </ul>
		        <!-- <form class="form-inline my-2 my-lg-0">
		            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		        </form> -->
		    </div>
		</nav>
		
		<div class="event-header container">
			<span style="font-size: 32px;">TÊN CHƯƠNG TRÌNH KHUYẾN MẠI</span><br>
			<span style="font-size: 20px;">dd/mm/yyyy - dd/mm/yyyy</span><br>
			<span style="font-size: 64px;">Sale up 50%</span><br>
			<button type="button" class="btn btn-success">XEM NGAY</button>
		</div>
	</div>
	
	<div class="container-fluid body-info">
		<div class="row">
			<div class="col-12 col-sm-4 col-md-4">
				<img style="width: 72px; height: 72px;" src='<c:url value="/resources/images/icon-award.png"/>' alt=""><br>
				<span style="font-size: 32px;">CHẤT LƯỢNG</span><br>
				<span>Cam kết mang đến cho bạn chất lượng sản phẩm tốt nhất.</span>
			</div>
			
			<div class="col-12 col-sm-4 col-md-4">
				<img style="width: 72px; height: 72px;" src='<c:url value="/resources/images/icon-piggy-bank.png"/>' alt=""><br>
				<span style="font-size: 32px;">TIẾT KIỆM CHI PHÍ</span><br>
				<span>Mang sản phẩm với giá rẻ nhất đến tay người tiêu dùng.</span>
			</div>
			
			<div class="col-12 col-sm-4 col-md-4">
				<img style="width: 72px; height: 72px;" src='<c:url value="/resources/images/icon-shipped.png"/>' alt=""><br>
				<span style="font-size: 32px;">GIAO HÀNG</span><br>
				<span>Cam kết giao hàng nhanh chóng, thủ tục đơn giản.</span>
			</div>
		</div>
	</div>
	
	<div style="margin-top: 100px; text-align: center; font-size: 36px;" class="container body-sanpham">
		<span style="color: red;">SẢN PHẨM HOT</span> <br> <br>
		<div class="row">
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			  	&nbsp;
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			  	&nbsp;
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			  	&nbsp;
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			  	&nbsp;
			</div>
		</div>
		<br>
		<div class="row">
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
			
			<div class="card col-md-3" style="width: 18rem;">
			  	<img src='<c:url value="/resources/images/SanPham/sanpham.jpg"/>' class="card-img-top" alt="">
			  	<div class="card-body">
			    	<h5 class="card-title">Giày thể thao Vans</h5>
			    	<a href="#" style="padding: 5px 30px !important; margin-left: 0px;" class="btn btn-primary">Xem</a>
			  	</div>
			</div>
		</div>
		
	</div>
	
	<div class="container-fluid footer">
		<div class="row thongtinshop">
			<div class="col-md-4">
				<span>LOGO SHOP</span>
				
			</div>
			
			<div class="col-md-2">
				<span>Hỗ trợ</span>
			</div>
			
			<div class="col-md-2">
				<span>Dịch vụ khác</span>
			</div>
			
			<div class="col-md-4">
				<span>Góp ý</span>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
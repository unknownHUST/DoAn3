<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<header class="site-navbar" role="banner">
			<div class="site-navbar-top">
				<div class="container">
					<div class="row align-items-center">

						<div
							class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
							<form action="/Miniproject/shop/searchname" method="get" class="site-block-top-search">
								<span class="icon icon-search2"></span> <input type="text" name="searchname"
									class="form-control border-0" placeholder="Search">
							</form>
						</div>

						<div
							class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
							<div class="site-logo">
								<a href="/Miniproject/" class="js-logo-clone">IT3941</a>
							</div>
						</div>

						<div class="col-6 col-md-4 order-3 order-md-3 text-right">
							<div class="site-top-icons">
								<ul>
									<!-- <li><a href="#"><span class="icon icon-person"></span></a></li> -->
									<li><a href="#"><span class="icon icon-heart-o"></span></a></li>
									<li><a href="/Miniproject/cart" class="site-cart"> <span class="icon icon-shopping_cart" title="Giỏ hàng"></span><%--  <span class="count">${slCart}</span> --%></a></li>
									<li class="d-inline-block d-md-none ml-md-0"><a href="#"
										class="site-menu-toggle js-menu-toggle"><span
											class="icon-menu"></span></a>
									</li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<nav class="site-navigation text-right text-md-center"
				role="navigation">
				<div class="container">
					<ul class="site-menu js-clone-nav d-none d-md-block">
						<li class="has-children active"><a href="/Miniproject/">Home</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
								<li class="has-children"><a href="#">Sub Menu</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="has-children"><a href="/Miniproject/shop/0?page=1">Shop</a>
							<ul class="dropdown">
								<li><a href="/Miniproject/shop/1?page=1">Giày nam</a></li>
								<li><a href="/Miniproject/shop/2?page=1">Giày nữ</a></li>
								<li><a href="#">Trẻ em</a></li>
							</ul>
						</li>
						<li><a href="/Miniproject/about/">About</a></li>
						<li><a href="/Miniproject/contact/">Contact</a></li>
					</ul>
				</div>
			</nav>
		</header>
</body>
</html>
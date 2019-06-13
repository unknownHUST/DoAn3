<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Admin-Dashboard</title>

    <!-- Fontfaces CSS-->
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/css/font-face.css"/>' media="all">
	<link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/font-awesome-4.7/css/font-awesome.min.css"/>' media="all">
	<link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/font-awesome-5/css/fontawesome-all.min.css"/>' media="all">
	<link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/mdi-font/css/material-design-iconic-font.min.css"/>' media="all">

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/bootstrap-4.1/bootstrap.min.css"/>' media="all">

    <!-- Vendor CSS-->
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/animsition/animsition.min.css"/>' media="all">
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>' media="all">
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/wow/animate.css"/>' media="all">
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/css-hamburgers/hamburgers.min.css"/>' media="all">
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/slick/slick.css"/>' media="all">
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/select2/select2.min.css"/>' media="all">
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/vendor/perfect-scrollbar/perfect-scrollbar.css"/>' media="all">

    <!-- Main CSS-->
    <link rel="stylesheet" href='<c:url value="/resources/admin_resource/css/theme.css"/>' media="all">
</head>
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="/Miniproject/admin">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="active has-sub">
                            <a href="/Miniproject/admin">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Charts</a>
                        </li>
                        <li>
                            <a href="table.html">
                                <i class="fas fa-table"></i>Tables</a>
                        </li>
                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-calendar-alt"></i>Calendar</a>
                        </li>
                        <li>
                            <a href="map.html">
                                <i class="fas fa-map-marker-alt"></i>Maps</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-copy"></i>Pages</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="login.html">Login</a>
                                </li>
                                <li>
                                    <a href="register.html">Register</a>
                                </li>
                                <li>
                                    <a href="forget-pass.html">Forget Password</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>UI Elements</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="/Miniproject/admin">
                    <img src='<c:url value="/resources/admin_resource/images/icon/admin-dashbourd-logo.png"/>' alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a href="/Miniproject/admin">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="/Miniproject/admin/products">
                                <i class="fas fa-table"></i>Sản phẩm</a>
                        </li>
                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Thống kê</a>
                        </li>
                        <li>
                            <a href="/Miniproject/admin/hoadon">
                                <i class="far fa-check-square"></i>Kiểm duyệt hóa đơn</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Tìm kiếm..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <!-- <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>You have 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a email notification</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Your account has been blocked</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a new file</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">john doe</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">john doe</a>
                                                    </h5>
                                                    <span class="email">johndoe@example.com</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-money-box"></i>Billing</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                    	<div class="row">
                            <div class="col-lg-12">
                                <form action="/Miniproject/admin/products/addproduct" method="post" enctype="multipart/form-data" class="form-horizontal">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Thêm sản phẩm</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        	<div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="select" class=" form-control-label">Danh mục</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="madanhmuc" id="madanhmuc" class="form-control">
                                                    	<c:forEach var="danhmuc" items="${listdanhmuc}">
                                                        <option value="${danhmuc.getIdDanhMucSanPham()}">${danhmuc.getTenDanhMuc()}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Tên sản phẩm</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="tensanpham" name="tensanpham" placeholder="Nhập tên sản phẩm..." class="form-control">
                                                    
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Đơn giá</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="giasanpham" name="giasanpham" placeholder="Nhập giá sản phẩm..." class="form-control">
                                                    
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="select" class=" form-control-label">Giới tính</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="gioitinh" id="gioitinh" class="form-control">
                                                        <option value="all">All</option>
                                                        <option value="male">Nam</option>
                                                        <option value="female">Nữ</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">Mô tả sản phẩm</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea name="motasanpham" id="motasanpham" rows="5" placeholder="Content..." class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="file-input" class=" form-control-label">File ảnh</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="file" id="fileanh" name="fileanh" class="form-control-file">
                                                </div>
                                            </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" id="btnthemsanpham" type="button" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                    </div>
                                </div>
                                </form>
                                
                            </div>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src='<c:url value="/resources/admin_resource/vendor/jquery-3.2.1.min.js"/>'></script>
    <!-- Bootstrap JS-->
    <script src='<c:url value="/resources/admin_resource/vendor/bootstrap-4.1/popper.min.js"/>'></script>
    <script src='<c:url value="/resources/admin_resource/vendor/bootstrap-4.1/bootstrap.min.js"/>'></script>
    <!-- Vendor JS       -->
	<script src='<c:url value="/resources/admin_resource/vendor/slick/slick.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/wow/wow.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/animsition/animsition.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/counter-up/jquery.waypoints.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/counter-up/jquery.counterup.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/circle-progress/circle-progress.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/perfect-scrollbar/perfect-scrollbar.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/chartjs/Chart.bundle.min.js"/>'></script>
	<script src='<c:url value="/resources/admin_resource/vendor/select2/select2.min.js"/>'></script>
    <!-- Main JS-->
    <script src='<c:url value="/resources/admin_resource/js/main.js"/>'></script>
    <script src='<c:url value="/resources/admin_resource/js/custom.js"/>'></script>

</body>
</html>
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
                    	<div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE-->
                                <h3 class="title-5 m-b-35">Bill</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                    	<form action="/Miniproject/admin/hoadon" method="post">
	                                        <div style="width: 200px;" class="rs-select2--light rs-select2--sm">
	                                            <select class="js-select2" name="status">
	                                                <option selected="selected" value="0">All</option>
	                                                <option value="Processed">Đã xử lý</option>
	                                                <option value="waiting">Đang chờ xử lý</option>
	                                                <option value="Denied">Đã hủy đơn</option>
	                                            </select>
	                                            <div class="dropDownSelect2"></div>
	                                        </div>
	                                        <input type="submit" class="au-btn au-btn-icon au-btn--green au-btn--small" value="duyệt">
                                    	</form>
                                    </div>
                                </div>
                                <div class="table-responsive m-b-40">
                                	<c:set var="processed" value="Processed"></c:set>
                                	<c:set var="denied" value="Denied"></c:set>
                                	<c:set var="wait" value="wwaiting"></c:set>
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                            	<th>ID Hóa đơn</th>
                                                <th>Tên khách hàng</th>
                                                <th>Số điện thoại</th>
                                                <th>Địa chỉ</th>
                                                <th>Tình trạng</th>
                                                <th>Time</th>
                                                <th>Hình thức thanh toán</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="hoadon" items="${listhdbanhang}">
                                            <tr>
                                            	<td>${hoadon.getIdHoaDon()}</td>
                                                <td>${hoadon.getTenKhachHang()}</td>
                                                <td>${hoadon.getSdtKhachHang()}</td>
                                                <td>${hoadon.getDiachigiaohang()}</td>
                                                <c:choose>
                                                	<c:when test="${hoadon.getTinhtrang() == processed}">
		                                                <td class="process">Processed</td>
		                                                <td>${hoadon.getTimeOrder()}</td>
		                                                <td>${hoadon.getHinhthucthanhtoan()}</td>
		                                                <td>
		                                                    <div class="table-data-feature">
		                                                        <a href="/Miniproject/admin/hoadon/chitiethoadon/${hoadon.getIdHoaDon()}" class="item" data-toggle="tooltip" data-placement="top" title="Chi tiết hóa đơn">
		                                                            <i class="zmdi zmdi-more"></i>
																</a>
		                                                    </div>
		                                                </td>
                                                	</c:when>
                                                	<c:when test="${hoadon.getTinhtrang() == denied}">
		                                                <td class="denied">Denied</td>
		                                                <td>${hoadon.getTimeOrder()}</td>
		                                                <td>${hoadon.getHinhthucthanhtoan()}</td>
		                                                <td>
		                                                    <div class="table-data-feature">
		                                                        <a href="/Miniproject/admin/hoadon/chitiethoadon/${hoadon.getIdHoaDon()}" class="item" data-toggle="tooltip" data-placement="top" title="Chi tiết hóa đơn">
		                                                            <i class="zmdi zmdi-more"></i>
																</a>
		                                                    </div>
		                                                </td>
                                                	</c:when>
                                                	<c:otherwise>
                                                		<td>waiting</td>
		                                                <td>${hoadon.getTimeOrder()}</td>
		                                                <td>${hoadon.getHinhthucthanhtoan()}</td>
		                                                <td>
		                                                    <div class="table-data-feature">
		                                                    	<button id="xacthuchoadon" class="item" data-toggle="tooltip" data-placement="top" title="Xác thực">
		                                                            <i>&plus;</i>
		                                                        </button>
		                                                        <button id="huyhoadon" class="item" data-toggle="tooltip" data-placement="top" title="Hủy bỏ đơn hàng">
		                                                            <i>x</i>
		                                                        </button>
		                                                        <a href="/Miniproject/admin/hoadon/chitiethoadon/${hoadon.getIdHoaDon()}" class="item" data-toggle="tooltip" data-placement="top" title="Chi tiết hóa đơn">
		                                                            <i class="zmdi zmdi-more"></i>
																</a>
		                                                    </div>
		                                                </td>
                                                	</c:otherwise>
                                                </c:choose>
                                            </tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE-->
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
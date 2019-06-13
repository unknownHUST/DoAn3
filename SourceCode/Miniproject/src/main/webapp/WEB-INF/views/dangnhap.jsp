<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
	<jsp:include page="header.jsp"/>

</head>
<body class="body-login">
	<div class="body-flex-login">
		<div class="container-login">
			<div class="container-login-left">
				<div class="welcome">
					<span>Welcome</span><br>
					<p>Đây là Đồ án 3!</p>	
				</div>
			</div>
			<div class="container-login-right">
				<div class="text-dangnhapdangky">
					<span>Đăng nhập</span>
					<p>Welcome back! Log in to your account.</p>
				</div>
				<div class="form-dangnhapdangky">
					<form action="">
						<div class="input-style">
							<img alt="icon-oval" src='<c:url value="/resources/images/icon-mail.png" />'>
							<input type="text" name="email" id="email" placeholder="Email"><br>						
						</div>
						<br>
						<div class="input-style">
							<img alt="icon-oval" src='<c:url value="/resources/images/icon-password.png" />'>
							<input class="input-style" type="password" name="password" id="password" placeholder="Mật khẩu"><br>
						</div>
						<button class="btn" type="submit" onClick="return false;">Log in</button>
					</form>				
				</div>
				<div class="contact">
					<a href="#"><img alt="icon-oval" src='<c:url value="/resources/images/icon-facebook.png" />'></a>
					<a href="#"><img alt="icon-oval" src='<c:url value="/resources/images/icon-google-plus.png" />'></a>
					<a href="#"><img alt="icon-oval" src='<c:url value="/resources/images/icon-twitter.png" />'></a>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
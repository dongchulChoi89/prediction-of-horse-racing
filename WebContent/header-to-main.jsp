<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<header class="header clearfix"> <!-- Navigation Menu Starts -->
	<nav class="navbar navbar-default navbar-fixed-top box-shadow-10">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.do"><img class="img-responsive" src="images/logo.png?ver=1" /></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a data-scroll-nav="0" class="active" href="main.do">HOME</a></li>
				<li><a data-scroll-nav="1" href="#">경마의 3요소 </a></li>
				<li><a data-scroll-nav="2" href="#">경마용어 </a></li>
				<li><a data-scroll-nav="3" href="#">경마정보 </a></li>
				<li><a data-scroll-nav="4" href="#">Modeling </a></li>
				<li><a data-scroll-nav="5" href="#">Results </a></li>
				<li><a data-scroll-nav="6" href="#">최종예측마 </a></li>
				<li><a href="game.do" target="_blank">Game </a></li>
				<li><a data-scroll-nav="8" href="#">Q&A </a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav> <!-- Navigation Menu End --> </header>
</body>
</html>
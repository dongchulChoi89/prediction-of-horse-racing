<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="Chomok- One Page Parallax">
        <meta name="keywords" content="portfolio, one page, creative, webdesign, professional, material, corporate, business, multipurpose, landing page">
        <meta name="author" content="Kazi Mohammed Erfan">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Joining Title -->
        <title>The Last Horse</title>
        
        <!-- Place favicon.ico in the root directory -->
        <!--<link rel="shortcut icon" href="images/favicon/favicon.png">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon-114x114.png">-->
        
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,600i,700,700i" rel="stylesheet">
        
        <!-- Jquery Fancybox CSS -->
        <link href="css/jquery.fancybox.css" rel="stylesheet">
        
        <!-- Animate CSS -->
    	<link href="css/animate.css" rel="stylesheet">
        <!-- Material Icons CSS -->
        <link rel="stylesheet" href="fonts/iconfont/material-icons.css">
        <!-- Pixeden Icon CSS -->
        <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css">
        <!-- Pixeden Icon CSS -->
        <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
        <!-- FontAwesome CSS -->
        <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">
        <!-- Materialize CSS -->
        <link rel="stylesheet" href="css/materialize.min.css">
        <!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.css">
        <!-- Transition CSS -->
		<link rel="stylesheet" href="css/transition.css">
        <!-- Navbar CSS -->
        <link rel="stylesheet" href="css/navbar.css">
        <!-- Banner CSS -->
        <link rel="stylesheet" href="css/banner.css">
        <!-- Service CSS -->
        <link rel="stylesheet" href="css/service.css">
        <!-- About-Us CSS -->
        <link rel="stylesheet" href="css/about-us.css">
	        <!-- Our-Clients CSS -->
        <link rel="stylesheet" href="css/our-clients.css">
        <!-- Portfolio CSS -->
        <link rel="stylesheet" href="css/portfolio.css">
        <!-- priceing-table CSS -->
        <link rel="stylesheet" href="css/priceing-table.css">
        <!-- Testinomial CSS -->
        <link rel="stylesheet" href="css/testinomial.css">
        <!-- Faq CSS -->
        <link rel="stylesheet" href="css/faq.css">
        <!-- Contact us CSS -->
        <link rel="stylesheet" href="css/contact-us.css">
        <!-- Footer CSS -->
        <link rel="stylesheet" href="css/footer.css">
        <!-- Home CSS -->
        <link rel="stylesheet" href="css/home.css">
        <!-- Slick Slider CSS -->
        <link rel="stylesheet" href="css/slick.css">
        <!-- Slick-Theme Slider CSS -->
        <link rel="stylesheet" href="css/slick-theme.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Faq CSS -->
        <link rel="stylesheet" href="css/faq.css">
        
        <style type="text/css">
			.item{
			    display:block;
			}
			
			.carousel-caption{
			    color:#000;
			    position:static;
			}
			.table-controller {
			padding-top: 50%;
			}
			.info-table {
			}
        </style>
        
        <!--[if lt IE 9]>
            <script src="js/html5shiv.min.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
        
        <!-- Mordernizr CSS -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="js/vendor/jquery-1.12.0.min.js"></script>	
		<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Header Start -->
		<c:import url="header-to-main.html" />
	<!-- Header End -->
	<section class="database-main">
		<!--  Carousel - consult the Twitter Bootstrap docs at 
		http://twitter.github.com/bootstrap/javascript.html#carousel -->
		<div id="this-carousel-id" class="carousel slide"><!-- class of slide for animation -->
		    <div class="container-fluid">
			  <div class="carousel-inner row">
				<div class="item active"><!-- class of active since it's the first item -->
				  <div class="carousel-caption col-xs-offset-2 col-xs-8">
				  <h1>h1. Bootstrap heading <small>Secondary text</small></h1>
					<table class="table info-table">
					<tr>
						<th>마명</th>
						<th>마번</th>
						<th>출생일</th>
						<th>성별</th>
						<th>털색</th>
						<th>경주마 등록일</th>
						<th>생산국</th>
						<th>부마명</th>
						<th>모마명</th>
						<th>조교사</th>
						<th>마주</th>
					</tr>
					<c:forEach items="${horseList }" var="horse">
					<tr>
						<td>${horse.hname }</td>
						<td>${horse.hnum }</td>
						<td>${horse.birthdate }</td>
						<td>${horse.gender }</td>
						<td>${horse.color }</td>
						<td>${horse.regdate }</td>
						<td>${horse.country }</td>
						<td>${horse.father }</td>
						<td>${horse.mother }</td>
						<td>${horse.trainerName}</td>
						<td>${horse.ownerName}</td>
					</tr>
					</c:forEach>
			</tbody></table>
				  </div>
				</div>
				<div class="item">
				  <div class="carousel-caption col-xs-offset-2 col-xs-8">
					<h1>h1. Bootstrap heading <small>Secondary text</small></h1>
					<table class="table info-table">
						<tr>
							<th>순위</th>
							<th>ID</th>
							<th>이름</th>
							<th>금액</th>
							<th>email</th>
						</tr>
					<c:forEach var="user" items="${userList}" varStatus="sts">
						<tr>
							<td>${user.rank }</td>
							<td>${user.pid }</td>
							<td>${user.pname }</td>
							<td>${user.curMoney }</td>
							<td>${user.email }</td>
						</tr>
					</c:forEach>
				</table>
				  </div>
				</div>
				<div class="item"> <img src="http://placehold.it/1200x480" alt="" />
				  <div class="carousel-caption">
					<p>Caption text here</p>
				  </div>
				</div>
			  </div><!-- /.carousel-inner -->
		  </div>
		  <!--  Next and Previous controls below
				href values must reference the id for this carousel -->
			<a class="carousel-control left table-controller" href="#this-carousel-id" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right table-controller" href="#this-carousel-id" data-slide="next">&rsaquo;</a>
		</div><!-- /.carousel -->
		
	</section>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.carousel').carousel({
		  interval: 5000
		});
	  });
	</script>

</body>
</html>
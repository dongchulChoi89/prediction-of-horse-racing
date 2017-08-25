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
					<tr>
						<td>가람산성</td>
						<td>28194</td>
						<td>2010-03-10</td>
						<td>수  </td>
						<td>갈색</td>
						<td>2012-07-11</td>
						<td>한국</td>
						<td>볼포니</td>
						<td>커맬라</td>
						<td>지용훈</td>
						<td>이선호</td>
					</tr>
				
					<tr>
						<td>가속불패</td>
						<td>31430</td>
						<td>2012-03-23</td>
						<td>거  </td>
						<td>갈색</td>
						<td>2014-05-21</td>
						<td>한국</td>
						<td>사이코배블</td>
						<td>허니비</td>
						<td>박대흥</td>
						<td>(주)자성실업</td>
					</tr>
				
					<tr>
						<td>가속신화</td>
						<td>34971</td>
						<td>2014-02-05</td>
						<td>암  </td>
						<td>갈색</td>
						<td>2017-02-10</td>
						<td>한국</td>
						<td>록하드텐</td>
						<td>스톱앤드채트</td>
						<td>서범석</td>
						<td>(주)늘푸른목장</td>
					</tr>
				
					<tr>
						<td>가을의전설</td>
						<td>34795</td>
						<td>2013-10-16</td>
						<td>수  </td>
						<td>갈색</td>
						<td>2016-03-04</td>
						<td>호주</td>
						<td>CASINO PRINCE</td>
						<td>CHINESE WHISPERS</td>
						<td>배대선</td>
						<td>고영희</td>
					</tr>
				
					<tr>
						<td>가이아선더</td>
						<td>33571</td>
						<td>2013-02-21</td>
						<td>수  </td>
						<td>갈색</td>
						<td>2015-04-10</td>
						<td>한국</td>
						<td>원쿨캣</td>
						<td>나우코프위드디스</td>
						<td>박종곤</td>
						<td>이웅열</td>
					</tr>
				
					<tr>
						<td>가자가자</td>
						<td>35345</td>
						<td>2014-03-27</td>
						<td>암  </td>
						<td>갈색</td>
						<td>2016-06-17</td>
						<td>한국</td>
						<td>제이에스홀드</td>
						<td>미소피아</td>
						<td>구자흥</td>
						<td>조건진</td>
					</tr>
				
					<tr>
						<td>가장먼저</td>
						<td>35585</td>
						<td>2014-04-15</td>
						<td>암  </td>
						<td>갈색</td>
						<td>2016-05-27</td>
						<td>한국</td>
						<td>호크윙</td>
						<td>선더우먼</td>
						<td>박천서</td>
						<td>한영석</td>
					</tr>
				
					<tr>
						<td>갈라캣</td>
						<td>32737</td>
						<td>2011-05-07</td>
						<td>수  </td>
						<td>밤색</td>
						<td>2013-07-04</td>
						<td>미국</td>
						<td>D'WILDCAT</td>
						<td>FROM BEHIND</td>
						<td>임봉춘</td>
						<td>이수근</td>
					</tr>
				
					<tr>
						<td>갈색전령</td>
						<td>34656</td>
						<td>2012-04-07</td>
						<td>거  </td>
						<td>갈색</td>
						<td>2014-08-28</td>
						<td>미국</td>
						<td>SILVER TRAIN</td>
						<td>LAST OASIS</td>
						<td>양재철</td>
						<td>김성진</td>
					</tr>
				
					<tr>
						<td>감격의순간</td>
						<td>35892</td>
						<td>2014-03-30</td>
						<td>암  </td>
						<td>밤색</td>
						<td>2016-05-27</td>
						<td>한국</td>
						<td>캐피털스팬딩</td>
						<td>리버브룩</td>
						<td>우창구</td>
						<td>이보원</td>
					</tr>
				
					<tr>
						<td>감동의챔피언</td>
						<td>31744</td>
						<td>2012-04-25</td>
						<td>거  </td>
						<td>회색</td>
						<td>2014-07-03</td>
						<td>한국</td>
						<td>이터널챔피언</td>
						<td>챌린지퀸</td>
						<td>최봉주</td>
						<td>조금제</td>
					</tr>
				
					<tr>
						<td>강대강</td>
						<td>34207</td>
						<td>2013-05-10</td>
						<td>거  </td>
						<td>밤색</td>
						<td>2015-09-24</td>
						<td>한국</td>
						<td>델라고브롬</td>
						<td>스페셜레드</td>
						<td>박윤규</td>
						<td>권인택</td>
					</tr>
				
					<tr>
						<td>강서으뜸</td>
						<td>36932</td>
						<td>2015-02-16</td>
						<td>수  </td>
						<td>회색</td>
						<td>2017-03-24</td>
						<td>한국</td>
						<td>한센</td>
						<td>그레이트브리지</td>
						<td>이관호</td>
						<td>(주)디알엠씨티</td>
					</tr>
				
					<tr>
						<td>강성대국</td>
						<td>34049</td>
						<td>2013-02-19</td>
						<td>수  </td>
						<td>밤색</td>
						<td>2015-03-27</td>
						<td>한국</td>
						<td>인그란디어</td>
						<td>포토스톤</td>
						<td>김점오</td>
						<td>박양호</td>
					</tr>
				
					<tr>
						<td>강철시대</td>
						<td>33474</td>
						<td>2013-02-25</td>
						<td>수  </td>
						<td>흑갈색</td>
						<td>2015-03-27</td>
						<td>한국</td>
						<td>호크윙</td>
						<td>레드머리너</td>
						<td>유재길</td>
						<td>허건호</td>
					</tr>
				
					<tr>
						<td>강촌의아침</td>
						<td>35643</td>
						<td>2014-02-19</td>
						<td>암  </td>
						<td>갈색</td>
						<td>2016-06-10</td>
						<td>한국</td>
						<td>델라고브롬</td>
						<td>선더앤드아이스</td>
						<td>김대근</td>
						<td>최상섭</td>
					</tr>
				
					<tr>
						<td>강톨이</td>
						<td>31571</td>
						<td>2012-03-03</td>
						<td>거  </td>
						<td>갈색</td>
						<td>2016-11-04</td>
						<td>한국</td>
						<td>SUPER SAVER</td>
						<td>말라베이</td>
						<td>김순근</td>
						<td>김형근</td>
					</tr>
				
					<tr>
						<td>강호시대</td>
						<td>29297</td>
						<td>2010-02-10</td>
						<td>수  </td>
						<td>밤색</td>
						<td>2012-03-28</td>
						<td>미국</td>
						<td>FLATTER</td>
						<td>MAMA I'M HOME</td>
						<td>김동철</td>
						<td>(주)선우패션</td>
					</tr>
				
					<tr>
						<td>개나리</td>
						<td>34911</td>
						<td>2013-04-23</td>
						<td>암  </td>
						<td>밤색</td>
						<td>2015-05-29</td>
						<td>캐나다</td>
						<td>PHILANTHROPIST</td>
						<td>HAPPY TO BE HOME</td>
						<td>박대흥</td>
						<td>김원숙</td>
					</tr>
				
					<tr>
						<td>개척자</td>
						<td>33533</td>
						<td>2013-03-25</td>
						<td>거  </td>
						<td>회색</td>
						<td>2016-07-08</td>
						<td>한국</td>
						<td>시에로골드</td>
						<td>그레이톰보이</td>
						<td>박윤규</td>
						<td>박덕희</td>
					</tr>
				
					</table>
				  </div>
				</div>
				<div class="item">
				  <div class="carousel-caption">
					<p>Caption text here</p>
				  </div>
				</div>
				<div class="item"><img src="http://placehold.it/1200x480" alt="" />
				  <div class="carousel-caption">
					<p>Caption text here</p>
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
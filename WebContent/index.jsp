<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en"> <!--<![endif]--><head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="Chomok- One Page Parallax">
        <meta name="keywords" content="portfolio, one page, creative, webdesign, professional, material, corporate, business, multipurpose, landing page">
        <meta name="author" content="Kazi Mohammed Erfan">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Joining Title -->
        <title>빅데이터분석 / 경주마예측</title>

        <!-- Place favicon.ico in the root directory -->
        <!--<link rel="shortcut icon" href="images/favicon/favicon.png">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon-114x114.png">-->

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,600i,700,700i" rel="stylesheet">
		
        
        <!-- Jquery Fancybox CSS -->
        <link href="css/jquery.fancybox.css" rel="stylesheet"><strong></strong>
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
        <!-- Screen Shot Start -->
        <link rel="stylesheet" href="css/screenshot.css">
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
        
        <!--[if lt IE 9]>
            <script src="js/html5shiv.min.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
        
        <!-- Mordernizr CSS -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!-- Preloader Start -->
        <div id="preloader">
          <div class="preloader-wrapper big active">
            <div class="spinner-layer spinner-blue-only">
              <div class="circle-clipper left">
                <div class="circle"></div>
                  </div><div class="gap-patch">
                    <div class="circle"></div>
                  </div><div class="circle-clipper right">
                <div class="circle"></div> 
              </div> 
            </div> 
          </div> 
        </div>
		<!-- Preloader End -->
		<!-- Header Start -->
        	<c:import url="header-to-main.jsp"/>	
        <!-- Header End -->
        <!-- Banner Start -->
        <section class="banner clearfix wow fadeInUp" data-wow-duration="0.9s" data-scroll-index="0">
        	<div class="container">
            	<!-- Caption Start -->
            	<div class="caption">
                	<h1 class="text-black white-text wow fadeInUp" data-wow-duration="1.8s">경주마 예측</h1>
                    <h3 class="white-text text-semibold mb-50 wow fadeInUp" data-wow-duration="2.4s">
                    	한국마사회에서 제공하는 공공빅데이터를 분석, 우승 경주마를 예측합니다
                    </h3>
                    <button data-scroll-nav="1" class="white-bg text-uppercase text-bold btn waves-effect subscribe-submit mb-70 wow fadeInUp" data-wow-duration="2.6s">GET STARTED NOW</button>
                    
                </div>
                <!-- Caption End -->
                <!-- Sofware img Start -->
                <div class="software-img text-center wow fadeInUp"  data-wow-duration="2.4s">
                	<img class="img-responsive" src="images/software-img/1.jpg" alt=""/>
                </div>
                <!-- Sofware img End -->
            </div>
        </section>
        <!-- Banner End -->
        <!-- Service Start -->
        <section class="service" data-scroll-index="1">
        <center>
        	<div class="container">
            	<div class="row">
            	<h1 class="dark-gray-text wow fadeInUp" data-wow-duration="0.5s">경마의 3요소</h1>
                	<div class="col-sm-4 col-md-4 wow fadeInUp" data-wow-duration="1.0s">
                    	<div class="block text-center">
                        	<center><img class="img-responsive" src="images/1.png" alt=""/></center><br>
                            <h3 class="text-semibold dark-gray-text padding-bottom-20">말</h3>
                            <p>말의 체중, 나이, 승군, 부담중량 등은 중요한 변수입니다</p>                            
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-4 wow fadeInUp" data-wow-duration="2.0s">
                    	<div class="block text-center">
                        	<center><img class="img-responsive" src="images/2.png" alt=""/></center><br>
                            <h3 class="text-semibold dark-gray-text padding-bottom-20">기수</h3>
                            <p>기수의 전체 승수, 최근 1년 승수 등은 중요한 변수입니다</p>                            
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-4 wow fadeInUp" data-wow-duration="2.4s">
                    	<div class="block text-center">
                        	<center><img class="img-responsive" src="images/3.png" alt=""/></center><br>
                            <h3 class="text-semibold dark-gray-text padding-bottom-20">조교사</h3>
                            <p>조교사의 조, 나이, 승수 등은 중요한 변수입니다</p>                            
                        </div>
                    </div>                                          
                </div>
            </div>
        </center>
        </section>
        <!-- Service End -->
        
        <!-- Faq Start -->
        <section class="faq white-bg-third clearfix" data-scroll-index="2">
            <div class="container">
            	<div class="section-title text-center mb-45">
                    <div class="row">
                        <div class="col-centered col-sm-10 col-md-10">
                            <h1 class="dark-gray-text wow fadeInUp" data-wow-duration="1.0s">경마 주요 용어</h1>
                            <p class="wow fadeInUp" data-wow-duration="1.2s">경마에서 쓰이는 주요 용어입니다</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                	<!-- Col Start -->
                	<div class="col-sm-6 col-md-6 wow fadeInUp" data-wow-duration="1.6s">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingfive">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
                                            <i class="more-less glyphicon glyphicon-minus waves-effect"></i>
                                            	승식
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapsefive" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingfive">
                                    <div class="panel-body">
					                            단승식 : 1등 말 하나 맞추기<br>연승식 : 1~3등 말 하나 맞추기<br>복연승식 : 1~3등 말 두 마리 맞추기<br>복승식 : 1~2등 말 두 마리 맞추기<br>쌍승식 : 1등, 2등말 각각 맞추기<br>삼복승식 : 1~3등 말 세 마리 맞추기
					                                                      
                                    </div>
                                </div>
                            </div>
                    
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingsix">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            	출전표 / 경기결과표
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapsesix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsix">
                                    <div class="panel-body">
      						                               출전표 : 해당 경기에 참여한 말, 기수, 조교사에 관한 정보<br>경기결과표 : 각 경기의 결과를 요약
                                    </div>
                                </div>
                            </div>
                    
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingseven">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            	경주거리
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseseven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingseven">
                                    <div class="panel-body">
                                        1000부터 2300까지 10가지 종류
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingeight">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseeight" aria-expanded="false" aria-controls="collapseeight">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                           	군
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseeight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingeight">
                                    <div class="panel-body">
      					                               말의 수준에 따라 나누는 군
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Col End -->
                    <!-- Col Start -->
                    <div class="col-sm-6 col-md-6 wow fadeInUp" data-wow-duration="2.0s">
                        <div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="more-less glyphicon glyphicon-minus"></i>
                                            	승군점수
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
					                                          비슷한 수준의 말끼리 겨루도록 군을 나누게 되는데, 이때 군 간의 이동을 가능하게 하는 점수<br>경기에서 1, 2, 3등을 하는 경우 승군점수를 받게 되고, 일정 점수 이상인 경우 승급한다 
                                    </div>
                                </div>
                            </div>
                    
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            	부담중량
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
      						                              경주마 간의 능력차이가 현저하므로 인위적으로 경주 능력을 비슷하게 만들기 위해 사용되는 지표
                                    </div>
                                </div>
                            </div>
                    
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                            	승률
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        	말의 총 승률, 1년 승률은 별도
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingfour">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                           	기타
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapsefour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfour">
                                    <div class="panel-body">
                                        	국가, 나이, 성별, 체중, 데뷔일 등
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Faq End -->
        
        <!-- About-US Start -->
       	<section class="about-us padding-tb-150" data-scroll-index="3">
        	<!-- Container Start -->
        	<center><h1 class="dark-gray-text wow fadeInUp" data-wow-duration="0.5s">경마 정보</h1><br><br><br></center>
        	<div class="container">        	
            	<div class="row padding-bottom-150">
                	<div class="col-sm-12 col-md-6 wow fadeInUp" data-wow-duration="1.0s">
                    	<img class="img-responsive" src="images/software-img/11.PNG" alt="">
                    </div>
                    <div class="col-sm-12 col-md-6 padding-left-65 wow fadeInUp" data-wow-duration="1.6s">
                    	<h1 class="dark-gray-text mb-46">한국마사회 공공데이터 포털</h1>
                        <p>정부는 정부 3.0을 내걸고 혁신을 이루기 위하여 공공데이터 활용에 관한 법률을 시행하였습니다. 2013년 10월에 시행된 이른바 '공공데이터 제공 및 이용 활성화에 관한 법률'이 그것입니다.</p>
                        <p>경주, 경주마, 조교사, 기수, 마주, 배당률 등에 대한 경마에 관한 정보를 한국마사회 공공데이터 포털에서 제공합니다.</p>
                        <p>해당 사이트 링크는 다음과 같습니다.<br>
                        <a style="color:black" href="https://kradata.kra.co.kr/main.do">https://kradata.kra.co.kr/main.do</a>
                        </p>                                                
                    </div>
                </div>
                <div class="row padding-bottom-150">
                	<div class="col-sm-12 col-md-6 col-md-push-6 wow fadeInUp" data-wow-duration="2.6s">
                    	<img class="img-responsive" src="images/software-img/22.PNG" alt="">
                    </div>
                	<div class="col-sm-12 col-md-6 padding-right-65 col-md-pull-6 wow fadeInUp" data-wow-duration="2.0s">
                    	<h1 class="dark-gray-text mb-46">Open API</h1>
                        <p>한국마사회 공공데이터 포털에서 회원가입을 한 후, 해당 API를 신청하면 인증키가 발급됩니다.</p>
                        <p>해당 요청인자에 맞추어 API에 자료를 요청하며 XML 형태로 파일이 제공됩니다.</p>
                        <p>2014년 08월부터 2017년 08월까지 필요한 데이터를 수집합니다. 500,000개 이상의 데이터 양입니다.</p><br>
                        <p>이를 가공하여 Data Mart를 구성합니다.</p>
                    </div> 
                </div>
                <center><div class="row">
                	<div class="col-sm-12 col-md-12 padding-left-65 wow fadeInUp" data-wow-duration="1.6s">
                    	<h1 class="dark-gray-text mb-46">Data Mart 변수 설명</h1>
                    	<img class="img-responsive" src="images/software-img/333.png" alt="">                    	                                                
                    </div>                    
                    <div class="padding-left-65 wow fadeInUp" data-wow-duration="1.6s">
                        <p>
                        [1:15] 경주결과
						[16] 경주 횟수
						[17:40] 순위와 순위백분율 변수
						[41:48] 승리 횟수와 승률 변수
						[49:50] 최초 경주일과 최종 경주일
						[51:53] 경주 횟수, 기간, 주기
						[54:59] 경주결과를 기수/조교사/마주 측면에서 집계
						[60:69] 경주마 정보
						[70:72] 최근 경기 결과
						[73:76] 최근 경기 패턴
						[77:163] 구간별 경주기록의 요약 변수
						[164:179] 마체중 관련 변수
						[180:203] 1위와의 기록차에 대한 기수/조교사/마주별 요약 변수
						[204:213] 기수/조교사 변수
						[214:215] 배당률 변수
                        </p>                                                                        
                    </div>
                </div></center>
                
            </div>
            <!-- Container End -->
        </section> 
        <!-- About-US End -->
        
        <!-- ScreenShot Start -->
        <section class="screenshot clearfix" data-scroll-index="4">
        	<div class="container">
            	<div class="section-title text-center mb-45">
                    <div class="row">
                        <div class="col-centered col-sm-12 col-md-8">
                            <h1 class="white-text wow fadeInUp" data-wow-duration="1.0s">Modeling</h1>
                            <p class="white-text wow fadeInUp" data-wow-duration="1.6s">KNN, C5.0, RandomForest, SVMRadial을 이용하여 Data Mart를 분석, 예측합니다.</p>
                        </div>
                    </div>
                </div>
                <div id="carousel-example-generic" class="carousel carousel-fade slide wow fadeInUp" data-wow-duration="2.0s" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                  </ol>
                	<div class="macbook" >
                        <img class="img-responsive" src="images/screenshot/macbook.png" alt=""/>
                    </div>
                  <!-- Wrapper for slides -->
                  <div class="carousel-inner" role="listbox">
                  	<!-- Item Start -->
                    <div class="item active">
                        <div class="row">
                            <!-- Col Start -->
                            <div class="col-sm-4 col-md-4">
                            	<div class="caption-text">
                                	<h2 class="white-text mb-30">K-Nearest Neighbor</h2>
                                    <p class="white-text">기존 데이터 중 가장 유사한 K개의 데이터를 이용해서 새로운 데이터를 예측합니다.</p>
                                </div>
                            </div>
                            <!-- Col End -->
                            <!-- Col Start -->
                            <div class="col-sm-8 col-md-8">
                                <div class="img-slider">
                                    <p class="white-text">
                                	<br><br><br>
                                	<br>                                                                                   
                                 	system.time(mdl_knn<- train(myformula,data=m_tr_ex,method="knn",
                                 	<br>preProcess=c("center","scale"),tuneLength=10,trControl=trainControl(method="cv")))
									mdl_knn
									<br>confusionMatrix(mdl_knn)
									<br>res_mat_knn<-table(predict(mdl_knn, newdata=m_tt, type="raw"),m_tt$targ)
									<br>res_mat_knn*100/sum(res_mat_knn)
									<br>mdl_knn_Imp <<- varImp(mdl_knn)
									<br>plot(mdl_knn_Imp,top=20,cex=2,main="knn")
                                	</p>
                                </div>
                            </div>
                            <!-- Col End -->
                        </div>
                    </div>
                    <!-- Item End -->
                   <!-- Item Start -->
                    <div class="item">
                        <div class="row">
                            <!-- Col Start -->
                            <div class="col-sm-4 col-md-4">
                            	<div class="caption-text">
                                	<h2 class="white-text mb-30">C5.0 Decision Trees and Rule-Based Models</h2>
                                    <p class="white-text">의사결정나무를 이용하여 어떤 항목에 대한 관측 값과 목표 값을 연결하여 예측합니다.</p>
                                </div>
                            </div>
                            <!-- Col End -->
                            <!-- Col Start -->
                            <div class="col-sm-8 col-md-8">
                                <div class="img-slider">
                                    <p class="white-text">
                                	<br><br><br>
                                	<br>                                                                                   
                                 	system.time(mdl_C50 <- train(myformula,data=m_tr_ex,method = "C5.0"))
									<br>mdl_C50
									<br>confusionMatrix(mdl_C50)
									<br>res_mat_C50<-table(predict(mdl_C50, newdata=m_tt, type="raw"),m_tt$targ)
									<br>res_mat_C50*100/sum(res_mat_C50)
									<br>mdl_C50_Imp <- varImp(mdl_C50)
									<br>plot(mdl_C50_Imp,top=20,cex=2,main="C50")
                                	</p>
                                </div>
                            </div>
                            <!-- Col End -->
                        </div>
                    </div>
                    <!-- Item End -->
                    <!-- Item Start -->
                    <div class="item">
                        <div class="row">
                            <!-- Col Start -->
                            <div class="col-sm-4 col-md-4">
                            	<div class="caption-text">
                                	<h2 class="white-text mb-30">Breiman and Culter’s random forests for classifiation and regression</h2>
                                    <p class="white-text">의사결정나무를 랜덤으로 만들어, 나온 결과를 투표방식으로 예측합니다.</p>
                                </div>
                            </div>
                            <!-- Col End -->
                            <!-- Col Start -->
                            <div class="col-sm-8 col-md-8">
                                <div class="img-slider">
                                	<p class="white-text">
                                	<br><br><br>
                                	<br>                                                                                   
                                 	system.time(mdl_rf <- train(myformula,data=m_tr_ex,method="rf",TuneLength=5,<br>trControl=trainControl(method='cv',number=10,classProbs = TRUE),importance=TRUE))
									<br>mdl_rf
									<br>confusionMatrix(mdl_rf)
									<br>res_mat_rf<-table(predict(mdl_rf, newdata=m_tt, type="raw"),m_tt$targ)
									<br>res_mat_rf*100/sum(res_mat_rf)
									<br>mdl_rf_Imp <<- varImp(mdl_rf)
									<br>plot(mdl_rf_Imp,top=20,cex=2,main="randomForest")
                                	</p>                                    
                                </div>
                            </div>
                            <!-- Col End -->
                        </div>
                    </div>
                    <!-- Item End -->
                    <!-- Item Start -->
                    <div class="item">
                        <div class="row">
                            <!-- Col Start -->
                            <div class="col-sm-4 col-md-4">
                            	<div class="caption-text">
                                	<h2 class="white-text mb-30">Support Vector Machine</h2>
                                    <p class="white-text">두 카테고리 중 어느 하나에 속한 데이터의 집합이 주어졌을 때, 주어진 데이터 집합을 바탕으로 하여 새로운 데이터가 어느 카테고리에 속할지 판단하는 비확률적 이진 선형 분류 모델을 이용, 예측합니다.</p>
                                </div>
                            </div>
                            <!-- Col End -->
                            <!-- Col Start -->
                            <div class="col-sm-8 col-md-8">
                                <div class="img-slider">
                                    <p class="white-text">
                                	<br><br>
                                	<br>                                                                                   
                                 	system.time(mdl_svmradial <- train(myformula,data=m_tr_ex[,-61],method="svmRadial",<br>preProcess = "range", tuneLength = 5,scaled=TRUE,trControl=trainControl(number=100)))
									<br>mdl_svmradial
									<br>confusionMatrix(mdl_svmradial)
									<br>res_mat_svm_tr<-table(predict(mdl_svmradial, newdata=m_tr_ex, type="raw"),m_tr_ex$targ)
									<br>res_mat_svm_tr*100/sum(res_mat_svm_tr)
									<br>res_mat_svm<-table(predict(mdl_svmradial, newdata=m_tt, type="raw"),m_tt$targ)
									<br>res_mat_svm*100/sum(res_mat_svm)
									<br>mdl_svmradial_Imp <<- varImp(mdl_svmradial)
									<br>plot(mdl_svmradial_Imp,top=20,cex=2,main="svmRadial")
									<br>names(m_tr_ex)
                                	</p>
                                </div>
                            </div>
                            <!-- Col End -->
                        </div>
                    </div>
                    <!-- Item End -->
                  </div>
                
                  <!-- Controls -->
                  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span><i class="fa fa-angle-left white-text" aria-hidden="true"></i></span>
                  </a>
                  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span><i class="fa fa-angle-right white-text" aria-hidden="true"></i></span>
                  </a>
                </div>
            </div>
        </section>
        <!-- ScreenShot End -->
        
        <!-- Portfolio Section Start -->
        <section class="portfolio padding-top-100 padding-bottom-150" data-scroll-index="5">
        	<!-- Container Section Start -->
        	<div class="container">
            	<!-- Section Title Start -->
            	<div class="section-title text-center">
                	<div class="row">
                    	<div class="col-centered col-sm-10 col-md-8">
                            <h1>결과값 및 시각화</h1>
                        </div>
                    </div>
                </div>
                <!-- Section Title End -->
                <!-- Filter Selection Section Start -->
                <div class="filter-product wow fadeInUp" data-wow-duration="0.4s">
                    <ul id="filters" class="clearfix portfolio-gal-filter" data-option-key="filter">
                        <li><a href="#filter" class="active" data-option-value="*">All</a></li>
                        <li><a href="#filter" data-option-value=".knn">KNN</a></li>
                        <li><a href="#filter" data-option-value=".c5">C5.0</a></li>
                        <li><a href="#filter" data-option-value=".r">Random Forest</a></li>
                        <li><a href="#filter" data-option-value=".s">SVM</a></li>
                        <li><a href="#filter" data-option-value=".result">최종결과</a></li>
                    </ul>
                </div>
                <!-- Filter Selection Section End -->
                <!-- Portfolio-Filter Start -->
				<div class="portfolio-gal isotope masonry_wrapper">
                    <div class="row">
                    	<div class="col-xs-12 col-sm-4 knn wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/k1.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/k1.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>KNN 결과값1</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 knn wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/k2.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/k2.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>KNN 결과값2</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 knn wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/k3.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/k3.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>KNN 시각화</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 c5 wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/c1.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/c1.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>C5.0 결과값1</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 c5 wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/c2.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/c2.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>C5.0 결과값2</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 c5 wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/c3.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/c3.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>C5.0 시각화</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 r wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/r1.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/r1.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>Random Forest 결과값1</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 r wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/r2.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/r2.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>Random Forest 결과값2</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 r wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/r3.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/r3.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>Random Forest 시각화</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 s wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/r1.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/s1.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>SVM 결과값1</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 s wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/r2.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/s2.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>SVM 결과값2</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 s wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/r3.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/s3.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>SVM 시각화</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 result wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/result1.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/result1.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>최종 결과값1</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 result wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/result2.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/result2.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>최종 결과값2</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 result wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/result3.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/result3.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>최종 시각화1</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-4 result wow fadeInUp" data-wow-duration="1.0s">
                            <a class="img fancybox" href="images/portfolio-img/result4.png" data-fancybox-group="gallery">
                            	<div class="image">
                                	<img class="img-responsive" src="images/portfolio-img/result4.png" alt=""/>
                                </div>
                                <div class="image-detail">
                                	<p>최종 시각화2</p>
                                </div>
                            </a>
                        </div>
                    </div>                    
        		</div>
                <!-- Portfolio-Filter End -->                
            </div>
            <!-- Container Section End -->
        </section>
        <!-- Portfolio Section End -->
        
        <!-- Pricing table Start -->
        <div class="priceing-table white-bg-sec clearfix" data-scroll-index="6">
        	<div class="container">
            	<div class="section-title text-center mb-45">
                    <div class="row">
                        <div class="col-centered col-sm-10 col-md-8">
                            <h1 class="dark-gray-text wow fadeInUp" data-wow-duration="1.0s">최종 예측마</h1>
                            <p class="wow fadeInUp" data-wow-duration="1.2s">공공빅데이터를 KNN, C5.0, RandomForest, SVM로 모델링 및 분석한 최종 예측마 5마리입니다.<br>1~3등까지의 말을 경마게임을 통하여 최종 추천해드립니다.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-1 col-md-1 wow fadeInUp" data-wow-duration="1.6s"></div>
                    <!-- Pricing -->
                    <div class="col-sm-2 col-md-2 wow fadeInUp" data-wow-duration="1.4s">
                        <div class="pricing hover-effect">
                        	<div class="price-shadow">
                                <div class="pricing-head">
                                    <h2 class="white-text text-uppercase">원리더</h2>                                    
                                </div>
                                <ul class="pricing-content list-unstyled text-center">
                                    <li>원산지 : 한국</li>
                                    <li>성별 : 수</li>
                                    <li>나이 : 3</li>
                                    <li>무게 : 560</li>
                                    <li>총 승수 : 55</li>
                                    <li>총 상금 : 5,500,000원</li>  
                                    <li>기수 : 신형철</li>
                                    <li>기수무게 : 54</li>
                                    <li>기수승수 : 686</li>
                                    <li>조교사 : 김윤섭</li>                                                                      
                                </ul>
                                <div class="pricing-footer text-center">                                    
                                </div>
                             </div>   
                        </div>
                    </div>
                    <div class="col-sm-2 col-md-2 wow fadeInUp" data-wow-duration="1.6s">
                        <div class="pricing hover-effect">
                        	<div class="price-shadow">
                                <div class="pricing-head">
                                    <h2 class="white-text text-uppercase">인키타투스</h2>                                    
                                </div>
                                <ul class="pricing-content list-unstyled text-center">
                                    <li>원산지 : 미국</li>
                                    <li>성별 : 수</li>
                                    <li>나이 : 3</li>
                                    <li>무게 : 550</li>
                                    <li>총 승수 : 29</li>
                                    <li>총 상금 : 2,880,000원</li>  
                                    <li>기수 : 이찬호</li>
                                    <li>기수무게 : 51</li>
                                    <li>기수승수 : 188</li>
                                    <li>조교사 : 지용훈</li>
                                </ul>
                                <div class="pricing-footer text-center">                                    
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="col-sm-2 col-md-2 wow fadeInUp" data-wow-duration="1.6s">
                        <div class="pricing hover-effect">
                        	<div class="price-shadow">
                                <div class="pricing-head">
                                    <h2 class="white-text text-uppercase">쾌도여왕</h2>                                    
                                </div>
                                <ul class="pricing-content list-unstyled text-center">
                                    <li>원산지 : 한국</li>
                                    <li>성별 : 암</li>
                                    <li>나이 : 4</li>
                                    <li>무게 : 540</li>
                                    <li>총 승수 : 130</li>
                                    <li>총 상금 : 12,960,000원</li>  
                                    <li>기수 : 방춘식</li>
                                    <li>기수무게 : 52</li>
                                    <li>기수승수 : 354</li>
                                    <li>조교사 : 홍대유</li>
                                </ul>
                                <div class="pricing-footer text-center">                                    
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="col-sm-2 col-md-2 wow fadeInUp" data-wow-duration="1.6s">
                        <div class="pricing hover-effect">
                        	<div class="price-shadow">
                                <div class="pricing-head">
                                    <h2 class="white-text text-uppercase">정삼품</h2>                                    
                                </div>
                                <ul class="pricing-content list-unstyled text-center">
                                    <li>원산지 : 한국</li>
                                    <li>성별 : 수</li>
                                    <li>나이 : 2</li>
                                    <li>무게 : 535</li>
                                    <li>총 승수 : 24</li>
                                    <li>총 상금 : 2,400,000원</li>  
                                    <li>기수 : 김동수</li>
                                    <li>기수무게 : 49</li>
                                    <li>기수승수 : 24</li>
                                    <li>조교사 : 지용철</li>
                                </ul>
                                <div class="pricing-footer text-center">                                    
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="col-sm-2 col-md-2 wow fadeInUp" data-wow-duration="1.6s">
                        <div class="pricing hover-effect">
                        	<div class="price-shadow">
                                <div class="pricing-head">
                                    <h2 class="white-text text-uppercase">초동레이스</h2>                                    
                                </div>
                                <ul class="pricing-content list-unstyled text-center">
                                    <li>원산지 : 한국</li>
                                    <li>성별 : 거세</li>
                                    <li>나이 : 3</li>
                                    <li>무게 : 565</li>
                                    <li>총 승수 : 107</li>
                                    <li>총 상금 : 10,680,000원</li>  
                                    <li>기수 : 유승완</li>
                                    <li>기수무게 : 52</li>
                                    <li>기수승수 : 107</li>
                                    <li>조교사 : 최영주</li>
                                </ul>
                                <div class="pricing-footer text-center">                                    
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 wow fadeInUp" data-wow-duration="1.6s"></div>
                    </div>
                    <!-- End Pricing -->
                </div>
            </div>    
        </div>
        <!-- Pricing table End -->
        
        <!-- Contact Us Start -->
        <section class="contact-us sky-bg clearfix" data-scroll-index="8">
        	<div class="container">
                <div class="section-title text-center mb-45">
                    <div class="row">
                        <div class="col-centered col-sm-10 col-md-8">
                            <h1 class="white-text wow fadeInUp" data-wow-duration="1.0s">Q&A</h1>                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Col Start -->
                    <div class="col-sm-5 col-md-5">
                    	<!-- Address Start -->
                        <div class="address white-bg wow fadeInUp" data-wow-duration="1.0s">
                        	<div class="block wow fadeInUp" data-wow-duration="1.8s">
                                <h2 class="dark-gray-text text-uppercase text-semibold">OUR ADDRESS</h2>
                                <p>서울특별시 강남구 역삼1동 강남대로94길 20</p>
                            </div>    
                            <div class="block wow fadeInUp" data-wow-duration="2.0s">
                                <h2 class="dark-gray-text text-uppercase text-semibold">CALL US</h2>
                                <p>02-539-8879</p>                                
                            </div>    
                            <div class="block wow fadeInUp" data-wow-duration="2.2s">
                                <h2 class="dark-gray-text text-uppercase text-semibold">EMAIL US</h2>
                                <a href="mailto:contactus@email.com">choi@acorn.com</a>
                            </div>    
                        </div>
                        <!-- Address End -->
                    </div>
                    <!-- Col End -->
                    <!-- Col Start -->
                    <div class="col-sm-7 col-md-7 wow fadeInUp" data-wow-duration="1.0s">
                    	<!-- Form Start -->
                        <div class="form white-bg">
                        	<div class="form-group wow fadeInUp" data-wow-duration="1.8s">
                            	<input type="text" class="form-control" placeholder="이름"/>
                            </div>
                            <div class="form-group wow fadeInUp" data-wow-duration="2.0s">
                            	<input type="email" class="form-control" placeholder="email"/>
                            </div>
                            <div class="form-group wow fadeInUp" data-wow-duration="2.2s">
                            	<input type="text" class="form-control" placeholder="제목"/>
                            </div>
                            <div class="form-group wow fadeInUp" data-wow-duration="2.4s">
                            	<textarea class="form-control" placeholder="내용"></textarea>
                            </div>
                            <div class="send-btn mt-30 wow fadeInUp" data-wow-duration="2.6s">
                            	<input type="submit" class="btn-sky waves-effect waves-light" value="SEND MESSAGE">
                            </div>
                        </div>
                        <!-- Form End -->
                    </div>
                    <!-- Col End -->
                </div>    
           </div>     
        </section>
        <!-- Contact Us End -->
        <!-- Footer Start -->
        <footer class="footer white-bg clearfix wow fadeInUp" data-wow-duration="1.0s">
        	<div class="scroll-top-btn">
                <a href="#header" data-scroll-goto="0" data-section="top" class="waves-effect scroll-top position-absolute white-bg padding-all-1623 radius-full box-shadow-10 mr-30 top-0 mt-reverse-30 waves-effect"><i class="fa fa-angle-up font-25 dark-gray-text"></i></a>
            </div>
        	<div class="container">
            	<div class="row">
                	<!-- Col Start -->
                    <div class="col-sm-6 col-md-6">
                    	<div class="social-icon">                        	
                        </div>
                    </div>
                    <!-- Col End -->
                    <!-- Col Start -->
                    <div class="col-sm-6 col-md-6">
                    	<div class="copy-right">
                        	<p>CHOI © All Rights Reserved </p>
                        </div>
                    </div>
                    <!-- Col End -->
                </div>
            </div>
        </footer>
        <!-- Footer End -->
        <!-- jQuery JS -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Min JS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Smooth Scroll JS -->
        <script src="js/materialize.min.js"></script>
        <!-- Fancybox JS -->
        <script src="js/jquery.fancybox.js"></script>
        <!-- Fancybox-Pack JS -->
        <script src="js/jquery.fancybox.pack.js"></script>
        <!-- Isotope Pkgd Ls -->
        <script src="js/isotope/isotope.pkgd.js"></script>
        <!-- Sloppy Masonry JS -->
		<script src="js/isotope/jquery.isotope.sloppy-masonry.min.js"></script>
        <!-- Wow JS -->
        <script src="js/wow.js"></script>
        <!-- Sticky JS -->
        <script src="js/jquery.sticky.js"></script>
        <!-- Scrolllt JS -->
        <script src="js/scrollIt.min.js"></script>
        <!-- Slick Slider JS -->
        <script src="js/slick.min.js"></script>
        <!-- Main JS -->
        <script src="js/main.js"></script>
    </body>
</html>
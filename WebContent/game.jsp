<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>우승마 예측</title>
		<!-- Bootstrap Core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-toggle.min.css" rel="stylesheet">
		<link href="css/game.css?ver=3" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/jquery-ui.css">
		<!-- Navbar CSS -->
        <link rel="stylesheet" href="css/navbar.css">
		
	</head>
	<body>
	<!-- Header Start -->
		<c:import url="header-to-main.jsp" />
	<!-- Header End -->
	<div id="game-container" class="container-fluid">
		<div class="row" id="canvas-container">
			<div class="col-sm-10 col-sm-offset-1">
				<canvas id="game" width="1455px" height="850px"
					style="border-radius: 0px 0px 8px 8px"></canvas>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8" id="menus">
				<div class="row">
					<h1>17.02.19 10 Round</h1>
					<br>
					<h4>Data를 통해 출전마 16마리 중<br>가능성이 높은 말 5마리를 추출하여 시뮬레이션</h4>
				</div>
				<img src="img/number1.png" class="numberImg img-responsive"> <img
					src="img/number2.png" height="50%" class="numberImg img-responsive">
				<img src="img/number3.png" height="50%"
					class="numberImg img-responsive">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 col-sm-offset-1 table-responsive"
						id="mainView">
						<table id="horseTable" class="table">
							<tr>
								<td>1번 말</td>
								<td>2번 말</td>
								<td>3번 말</td>
								<td>4번 말</td>
								<td>5번 말</td>
							</tr>
							<tr align="center">
							<c:forEach var="hl" items="${fiveHorseList}" varStatus="status">
								<td class="horseExplain"><img src="img/Horse__${status.index}.png"
									class="horseImg img-responsive"><br>
									마명 : ${hl.hname}<br>
									중량 : 5 ton<br>
									최근 성적(10 경기)<br>
									1등 / 2등 / 3등<br>
									${hl.first} / ${hl.second} / ${hl.third}
								</td>
							</c:forEach>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-md-4 col-md-offset-4 col-sm-offset-1">
					<br>
					<button type="button" class="btn btn-primary btn-lg btn-block"
						id="start-menu">S T A R T</button>
					<br> <br>
				</div>
			</div>
		</div>

		<div id="gameResult" align="center" class="row"></div>
		<input type="hidden" id="gameState" />
	</div>
		<script src="http://code.jquery.com/jquery-1.10.2.js?ver=1 "></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?ver=1"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-toggle.min.js"></script>
<script type="text/javascript" src="js/game_manager.js"></script>
<script type="text/javascript" src="js/menu_manager.js"></script>
<script type="text/javascript">
	function goPage(){
		$(location).attr("href", "${path}/game.do");
	}
</script>
	</body>
</html>
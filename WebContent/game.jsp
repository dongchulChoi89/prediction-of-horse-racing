<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<!-- Bootstrap Core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-toggle.min.css" rel="stylesheet">
		
		<link href="css/game.css?ver=3" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/jquery-ui.css">
		
		<!-- Custom CSS -->
		<link href="css/stylish-portfolio.css" rel="stylesheet">
	</head>
	<body>
	<div id="game-container" class="container-fluid">
		<div class="row">
			<div id="finalResult" class=" table-responsive">
			</div>
		</div>
		<div class="row" id="canvas-container">
			<div class="col-sm-10 col-sm-offset-1">
				<canvas id="game" width="1455px" height="850px"
					style="border-radius: 0px 0px 8px 8px"></canvas>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8" id="menus">
				<div class="row">
					<h1>pent A corn 경마장</h1>
					<br>
					<h3>1등할 말을 골라주세요.</h3>
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
							<c:set var="cntt" value="0" />
							<c:forEach var="hl" items="${flist}">
							
								<td class="horseExplain" onclick="alloc('${hl.hname}','${hl.hnum }');"><img src="img/Horse__${cntt}.png"
									class="horseImg img-responsive"><br>
									마명 : ${hl.hname}<br>
									누적 상금 : ${hl.totprize }<br><br>
									1등 / 2등 / 3등<br>
									${hl.first} / ${hl.second} / ${hl.third}
								</td>
							
							<c:set var="cntt" value="${cntt+1}" />
							</c:forEach>
							</tr>
						</table>
					</div>
					<div
						class="col-md-2 col-md-offset-1 col-sm-offset-1 well table-responsive"
						style="color: black;">
						<table class="table table-condensed horseTable">
							<tr>
								<td>랭킹 1위:</td>
								<td>${playerList[0].pid }</td>
							</tr>
							<tr>
								<td>랭킹 2위:</td>
								<td>${playerList[1].pid }</td>
							</tr>
							<tr>
								<td>랭킹 3위:</td>
								<td>${playerList[2].pid }</td>
							</tr>
							<tr>
								<td>랭킹 4위:</td>
								<td>${playerList[3].pid }</td>
							</tr>
							<tr>
								<td>선택한 말</td>
								<td><div class="col-md-12">
										<label id="selectedHorse"></label>
									</div></td>
							</tr>
							<tr>
								<td><div class="col-md-12">현재 소지액</div></td>
								<td><div class="col-md-12">
										<label><fmt:formatNumber type="currency"
												value="${user.curMoney }" /></label>
									</div></td>
							</tr>
							<tr>
								<td colspan="2">배팅액.
									<div class="col-md-12">
										<input type="text" id="amount" readonly
											style="border: 0; color: #f6931f; font-weight: bold; text-align: center"><br>
										<br>
										<div id="slider"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="col-md-12"><input type="checkbox"
									id="betBtn" checked data-toggle="toggle" data-on="Betting!!"
									data-off="Cancel betting" data-onstyle="success"
									data-style="slow" data-offstyle="danger"></td>
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
	var horseNames=["${flist[0].hname}","${flist[1].hname}","${flist[2].hname}","${flist[3].hname}","${flist[4].hname}"];
	var horseNums=["${flist[0].hnum}","${flist[1].hnum}","${flist[2].hnum}","${flist[3].hnum}","${flist[4].hnum}"];
	var player = [ {
		id : "${user.pid}",
		curMoney : parseInt('${user.curMoney}'),
		playerBetMoney : Math.floor(parseInt('${user.curMoney}') / 2),
		benefit:0,
		hnum : NaN,
		hname: "",
		realHorseNum:""
	}, {
		id : "${playerList[0].pid}",
		curMoney : parseInt('${playerList[0].curMoney}'),
		playerBetMoney :Math.floor(parseInt('${playerList[0].curMoney}')/4),
		benefit:0,
		hnum : NaN,
		hname: "",
		realHorseNum:""
	}, {
		id : "${playerList[1].pid}",
		curMoney : parseInt('${playerList[1].curMoney}'),
		playerBetMoney :Math.floor(parseInt('${playerList[1].curMoney}')/4),
		benefit:0,
		hnum : NaN,
		hname: "",
		realHorseNum:""
	}, {
		id : "${playerList[2].pid}",
		curMoney : parseInt('${playerList[2].curMoney}'),
		playerBetMoney :Math.floor(parseInt('${playerList[2].curMoney}')/4),
		benefit:0,
		hnum : NaN,
		hname: "",
		realHorseNum:""
	}, {
		id : "${playerList[3].pid}",
		curMoney : parseInt('${playerList[3].curMoney}'),
		playerBetMoney :Math.floor(parseInt('${playerList[3].curMoney}')/4),
		benefit:0,
		hnum : NaN,
		hname: "",
		realHorseNum:""
	} ];
	function alloc(hname, hnum){
		player[0].hname=hname;
		player[0].realHorseNum=hnum;
	}
	$(function() {
		$("#slider").slider({
			value : player[0].curMoney / 2,
			min : 100,
			max : player[0].curMoney,
			step : 100,
			slide : function(event, ui) {
				$("#amount").val(ui.value.toLocaleString('krw', {
					style : 'currency',
					currency : 'krw'
				}));
				player[0].playerBetMoney = parseInt(ui.value);
				console.log(player[0].playerBetMoney);
			}
		});
		$("#amount").val($("#slider").slider("value").toLocaleString('krw', {
			style : 'currency',
			currency : 'krw'
		}));
	});
</script>
	</body>
</html>
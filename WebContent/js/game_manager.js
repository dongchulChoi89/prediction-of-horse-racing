var canvas = document.getElementById("game");
var ctx = canvas.getContext("2d");
var mainLoop;												// main game
var initLoop;												// before game
var pause = false;											// game Check
var aniNum = 40;											// frame variable
var gameOver = false;										// is the game finished?
var winner;													// winner number
var iflag = true;											// is the game finished? - 2
var mStatus = 0;											// mini horse statue
var endDistance = 1300;										// end condition of game (distance)
var elapsedTime = 0;
var frame=50;

/* objects */
// background setting
var background = {
    x: 0,
    y: 0,
    image: {},
    swidth: 3072,
    sheight: 1536,
    dx: 0,
    dy: 0,
    dwidth: canvas.width,
    dheight: canvas.height / 2
};// background setting

// background setting - crowd
var crowd = {
    x: 0,
    y: 0,
    image: {},
    swidth: 2560,
    sheight: 371,
    dx: 0,
    dy: 0,
    dwidth: canvas.width * 2,
    dheight: canvas.height / 2 - 48
};// background setting - crowd

// background setting - fence
var fence = {
    x: 0,
    y: 0,
    image: {},
    swidth: 960,
    sheight: 80,
    dx: 0,
    dy: canvas.height / 2 - 80,
    dwidth: canvas.width * 8,
    dheight: 80
};// background setting - fence

// background setting - track
var track = {
    x: 0,
    y: 0,
    image: {},
    swidth: 960,
    sheight: 342,
    dx: 0,
    dy: canvas.height / 2 - 40,
    dwidth: canvas.width * 2,
    dheight: canvas.height / 2
};// background setting - track

// rest of distance
var tempX = 0;
// mini horse position
var rankPos = [70, 135, 200, 260, 310];
// mini horse size
var rankPosSize = [1.2, 1, 0.8, 0.6, 0.6];

//horse object
var horses = [
	{
		number: 1, image: {}, pos: {x: 0, y: canvas.height/2 - 10}, source_size: {w: 128, h: 128},// num, img, pos, src size
		name:"원리더", sec: {image: {}, pos: {x: canvas.width - 180, y: 50}, sSize: {w: 128, h: 128}, tSize: {w: 128, h: 128}, 
		sprite: {x: 0,y: 384}},// mini map horse
		target_size: {w: 128,h: 128},// score board horse
		sprite: {sprite_x: 0,sprite_y: 0}, dx: 7, rank: 1,
		// target size, sprite, acceleration, rank
		possibility: [0.6, 0.2, 0.2], dx_step: [-10, 7, 13], max_break: 5, horseStatue: 0, rankPosition: 1.2, movedDistance: 0
		// moving mechanism
	},
	{
		number: 2, image: {}, pos: {x: 0, y: canvas.height / 2 + 20}, source_size: {w: 128, h: 128}, name:"인키타투스",
		sec: {image: {}, pos: {x: canvas.width - 180, y: 150}, sSize: {w: 128, h: 128}, tSize: {w: 128, h: 128},
		sprite: {x: 0, y: 384}}, target_size: {w: 128, h: 128}, sprite: {sprite_x: 0, sprite_y: 0}, dx: 7, rank: 1,
		possibility: [0.3, 0.3, 0.4], dx_step: [-23, 5, 8], max_break: 5, horseStatue: 8, rankPosition: 1, movedDistance: 0
	},
	{
		number: 3, image: {}, pos: {x: 0, y: canvas.height/2+70}, source_size: {w: 128, h: 128}, name:"쾌도여왕", sec: {image: {},
		pos: {x: canvas.width - 180, y: 200}, sSize: {w: 128, h: 128}, tSize: {w: 128, h: 128}, sprite: {x: 0,y: 384}},
		target_size: {w: 128, h: 128}, sprite: {sprite_x: 0, sprite_y: 0}, dx: 7, rank: 1, possibility: [0.2, 0.6, 0.2],
		dx_step: [-13, 2, 7], max_break: 5, horseStatue: 3, rankPosition: 0.8, movedDistance: 0
    },
    {
		number: 4, image: {}, pos: {x: 0, y: canvas.height/2+120}, source_size: {w: 128, h: 128}, name:"정상품", sec: {image: {},
		pos: {x: canvas.width - 180, y: 250}, sSize: {w: 128, h: 128}, tSize: {w: 128, h: 128}, sprite: {x: 0, y: 384}},
		target_size: {w: 128, h: 128}, sprite: {sprite_x: 0, sprite_y: 0}, dx: 7, rank: 1, possibility: [0.6, 0.2, 0.2],
		dx_step: [-5, 7, 9], max_break: 5, horseStatue: 6, rankPosition: 0.6, movedDistance: 0
    },
    {
		number: 5, image: {}, pos: {x: 0, y: canvas.height/2+200}, source_size: {w: 128, h: 128}, name:"초동레이스", sec: {image: {},
		pos: {x: canvas.width-180, y: 300}, sSize: {w: 128, h: 128}, tSize: {w: 128, h: 128}, sprite: {x: 0,y: 384}},
		target_size: {w: 128, h: 128}, sprite: {sprite_x: 0, sprite_y: 0}, dx: 7, rank: 1, possibility: [0.5, 0.45, 0.05],
		dx_step: [-22, 7, 60], max_break: 5, horseStatue: 2, rankPosition: 0.6, movedDistance: 0
    }
];// horse

// minimap
var miniMap = {
    distance: 1300,
    image: {},
    sx: 40,
    sy: 60,
    swidth: 1000,
    sheight: 50,
    dx: 40,
    dy: 60,
    dwidth: 1000,
    dheight: 50,
    color: "rgba(200,100,100,0.3)"
};
// miniMap

// score board
var scoreBoard = {
    box: {
        color: "rgba(100,100,100,0.8)",
        box_x: canvas.width - 450,
        box_y: 100,
        width: 420,
        height: 300
    },
    text: {
        text_color: "white",
        text_x: canvas.width - 430,
        text_y: 160,
        text_maxW: 300
    },
    n: horses.length
};
// score board

// distance board
var timeBoard = {
    x: canvas.width - 290,
    y: 80,
    maxW: 270
}; // distance board

// finish line
var finishLine = {
    image: {},
    x: 0,
    y: 0,
    swidth: 282,
    sheight: 700,
    dx: canvas.width + 80,
    dy: canvas.height / 2,
    dwidth: 282,
    dheight: 700
};// finish line

// rank
var rank = new Array(horses.length);
// rank

// countdown
var numbers = [{
        number: 0,
        image: {},
        x: 0,
        y: 0,
        dx: canvas.width / 2 - 300,
        dy: canvas.height / 2 - 335,
        swidth: 598,
        sheight: 357,
        dwidth: 598,
        dheight: 357
    },
    {
        number: 1,
        image: {},
        x: 0,
        y: 0,
        dx: canvas.width / 2 - 150,
        dy: canvas.height / 2 - 335,
        swidth: 250,
        sheight: 335,
        dwidth: 250,
        dheight: 335
    },
    {
        number: 2,
        image: {},
        x: 0,
        y: 0,
        dx: canvas.width / 2 - 150,
        dy: canvas.height / 2 - 335,
        swidth: 250,
        sheight: 335,
        dwidth: 250,
        dheight: 335
    },
    {
        number: 3,
        image: {},
        x: 0,
        y: 0,
        dx: canvas.width / 2 - 150,
        dy: canvas.height / 2 - 335,
        swidth: 250,
        sheight: 335,
        dwidth: 250,
        dheight: 335
    }
];// countdown

var startLine = {
    image: {},
    x: 0,
    y: 0,
    swidth: 282,
    sheight: 700,
    dx: 300,
    dy: canvas.height / 2,
    dwidth: 282,
    dheight: 700
};
var prize = {
    image: {},
    x: 0,
    y: 0,
    swidth: 128,
    sheight: 128,
    dx: 300,
    dy: canvas.height / 2,
    dwidth: 128,
    dheight: 128
};/* Object */


// finish game
function collisionDetection() {
	var rankNum = new Array(5); // rankNum
	var resMsg = new Array(5); // result message
	if (!gameOver)
		if (endDistance - elapsedTime <= 0 || rank[0].pos.x >= finishLine.dx) {
			for (var index = 0; index < horses.length; index++) {
				if (horses[index].rank == 0) {
					alert(horses[index].name + "이(가) 1등으로 들어왔습니다!!");
					winner = horses[index].number; // save a winner number
				}
				rankNum[index] = rank[index].number;
				resMsg[index] = horses[rankNum[index]-1].name;
				gameOver = true; // almost finish
				$("#gameState").val("gameOver");
			}
		}
	if (gameOver && iflag) { // almost finish
		var msg = "<br>";
		var h_th = "";
		$.each(resMsg, function(index, res) {
			if(index<3){
				switch(index){
					case 0:
						h_th = "st";
						break;
					case 1:
						h_th = "nd";
						break;
					case 2:
						h_th = "rd";
						break;
				}
				msg += "<h" + (index + 1) + ">" + (index + 1) + h_th +" : " + res + "</h" + (1 + index) + "><br>";
			} else {
				msg += "<h4>" + (index + 1) + "th : " + res + "</h4><br>";
			}
		}) // result print
		msg += "<h2>Thank You!</h2>";
		msg += "<button type='button' class='btn' onclick='javascript:goPage()'>R E S T A R T</button>"
		$("#gameResult").html(msg);
		$("#gameResult").fadeIn(3000);
        iflag = false; // real finish game
        aniNum = 40; // animation frame
    }
}// finish game

/* Drawing */
// horse Picture
function drawHorse(param) {
	ctx.beginPath();
	$.each(horses, function(index, horse) {
		if (param == -1) {
			ctx.drawImage(
				horse.sec.image,
				horse.sec.sprite.x,
				1536,
				horse.source_size.w,
				horse.source_size.h,
				horse.pos.x,
				horse.pos.y - 100,
				horse.target_size.w * (1 + (0.5 * horse.number)),
				horse.target_size.h * (1 + (0.5 * horse.number))
			);
		} else {
			ctx.drawImage(
				horse.image,
				horse.sprite.sprite_x,
				horse.sprite.sprite_y,
				horse.source_size.w,
				horse.source_size.h,
				horse.pos.x,
				horse.pos.y - 100,
				horse.target_size.w * (1 + (0.5 * horse.number)),
				horse.target_size.h * (1 + (0.5 * horse.number))
			);
		}
		ctx.closePath();
	});
}// horse Picture

// scoreBoard horse
function drawMiniHorse() {
	$.each(horses, function(index, horse) {
		ctx.beginPath();
		ctx.drawImage(
			horse.sec.image,
			horse.sec.sprite.x,
			horse.sec.sprite.y,
			horse.sec.sSize.w,
			horse.sec.sSize.h,
			horse.sec.pos.x,
			horse.sec.pos.y,
			horse.sec.tSize.w * horse.rankPosition,
			horse.sec.tSize.h * horse.rankPosition
		);
		ctx.closePath();
	});
}// scoreBoard horse

function drawMiniMap() {
	ctx.beginPath();
	ctx.fillStyle = miniMap.color;
	ctx.fillRect(miniMap.dx, miniMap.dy, miniMap.dwidth, miniMap.dheight);
	ctx.st
	ctx.stroke();
	$.each(rank.reverse(), function(index, horse) {
		if (miniMap.distance > 0)
			ctx.drawImage(
				horse.sec.image,
				horse.sec.sprite.x,
				horse.sec.sprite.y,
				horse.sec.sSize.w,
				horse.sec.sSize.h,
				elapsedTime + horse.dx * 1.4,
				horse.mini.arc_y,
				horse.sec.tSize.w,
				horse.sec.tSize.h
			);
	})
	ctx.closePath();
	rank.reverse();
}

// rest of distance
function drawElapasedTime() {
	ctx.beginPath();
	ctx.font = "30px Arial";
	ctx.fillStyle = "black";
	for (var i = 0; i < horses.length; i++) {
		if (horses[i].rank == 0); {
			if (tempX < horses[i].pos.x) tempX = horses[i].pos.x;
			miniMap.distance = endDistance - tempX; // Rest Of Distance
		}
	}
	if (endDistance - elapsedTime >= 0)
		ctx.fillText("Rest of Distance : " + parseInt((endDistance - elapsedTime)) + " M", timeBoard.x, timeBoard.y, timeBoard.maxW);
	else ctx.fillText("Winner : NO. " + winner + " horse", timeBoard.x, timeBoard.y, timeBoard.maxW); // winner
	ctx.closePath();
}

function drawScoreBoard() {
	ctx.beginPath();
	ctx.fillStyle = scoreBoard.box.color;
	ctx.fillRect(scoreBoard.box.box_x, scoreBoard.box.box_y, scoreBoard.box.width, scoreBoard.box.height);
	ctx.closePath();
	ctx.beginPath();
	ctx.fillStyle = scoreBoard.text.text_color;
	for (var idx = 0; idx < scoreBoard.n; idx++) {
		switch (idx) // rank
		{
			case 0:
				ctx.font = "36px Arial";
				ctx.fillText((idx + 1) + "st : " + rank[idx].name, scoreBoard.text.text_x, scoreBoard.text.text_y + 50 * idx, 300);
				break;
			case 1:
				ctx.font = "31px Arial";
				ctx.fillText((idx + 1) + "nd : " + rank[idx].name, scoreBoard.text.text_x, scoreBoard.text.text_y + 53 * idx, 300);
				break;
			case 2:
				ctx.font = "28px Arial";
				ctx.fillText((idx + 1) + "rd : " + rank[idx].name, scoreBoard.text.text_x, scoreBoard.text.text_y + 50 * idx, 300);
			    break;
			default:
				ctx.font = "24px Arial";
				ctx.fillText((idx + 1) + "th : " + rank[idx].name, scoreBoard.text.text_x, scoreBoard.text.text_y + 50 * idx, 300);
		}
	}
	ctx.closePath();
}

/* Name Match */
function horseNameMatch(){
}

// background
function drawBackground(dx) {
	if (!gameOver) {
		if (background.x >= 3072) background.x = 0;
		else background.x += dx;
	}
	ctx.beginPath();
	ctx.drawImage(
		background.image,
		background.x,
		background.y,
		background.swidth,
		background.sheight,
		background.dx,
		background.dy,
		background.dwidth,
		background.dheight
	);
	ctx.closePath();
}

function drawCrowd(dx, xPos) {
	if (xPos != undefined)
		crowd.x = xPos;
	if (!gameOver) {
		if (crowd.x >= 2560) crowd.x = -1280;
		else crowd.x += dx;
	}
	ctx.beginPath();
	ctx.drawImage(
		crowd.image,
		crowd.x,
		crowd.y,
		crowd.swidth,
		crowd.sheight,
		crowd.dx,
		crowd.dy,
		crowd.dwidth,
		crowd.dheight
	);
	ctx.closePath();
}

function drawTrack() {
	ctx.beginPath();
	ctx.drawImage(
		track.image,
		track.x,
		track.y,
		track.swidth,
		track.sheight,
		track.dx,
		track.dy + 40,
		track.dwidth,
		track.dheight * 1.35
	);
	ctx.closePath();
}

// moving mechanism
function calDx(horse) {
	var ranDx = Math.random();
	var disRand = Math.random();
	if (horse.pos.x > canvas.width / 3 && horse.max_break > 0) {
		horse.dx -= 1.2;
		horse.max_break--;
	} else {
		if (ranDx <= horse.possibility[0]) {
			horse.dx = disRand * horse.dx_step[0] * 0.4;
		} else if (ranDx <= horse.possibility[0] + horse.possibility[1]) {
			horse.movedDistance += (horse.dx_step[1] < 0) ? 0 : horse.dx_step[1] * 0.4;
			horse.dx = disRand * 0.4 + horse.dx_step[1] * 0.4;
		} else {
			horse.movedDistance += (horse.dx_step[2] < 0) ? 0 : horse.dx_step[2] * 0.4;
			horse.dx = disRand * 0.2 + horse.dx_step[2] * 0.4;
		}
		if (horse.max_break < 5) horse.max_break++;
	}
	horse.movedDistance += 20 + horse.dx;
	if (!gameOver) horse.pos.x += horse.dx;
	else horse.pos.x += (20 + horse.dx) * 3;
}// moving mechanism

function drawStartLine(dx, xPos) {
	if (xPos != undefined)
		startLine.dx = xPos;
	if (startLine.dx >= start.width) startLine.x = 0;
	else startLine.dx -= dx;
	ctx.beginPath();
	ctx.drawImage(
		startLine.image,
		startLine.x,
		startLine.y,
		startLine.swidth,
		startLine.sheight,
		startLine.dx,
		startLine.dy,
		startLine.dwidth,
		startLine.dheight
	);
	ctx.closePath();
}

function drawFinishLine(dx) {
	if (finishLine.dx >= finishLine.width) finishLine.x = 0;
	else finishLine.dx -= dx;
	ctx.beginPath();
	ctx.drawImage(
		finishLine.image,
		0,
		0,
		finishLine.swidth,
		finishLine.sheight,
		finishLine.dx,
		finishLine.dy,
		finishLine.dwidth,
		finishLine.dheight
	);
	ctx.closePath();
}

function drawFenceBack() {
	ctx.beginPath();
	ctx.drawImage(
		fence.image,
		fence.x,
		fence.y,
		fence.swidth,
		fence.sheight,
		fence.dx,
		fence.dy + 33,
		fence.dwidth * 0.25,
		fence.dheight * 0.6
	);
	ctx.closePath();
}

function drawFenceFront(dx) {
	if (!gameOver) {
		if (fence.x >= 240) fence.x = 0;
		else fence.x += dx;
	}
	ctx.beginPath();
	ctx.drawImage(
		fence.image,
		fence.x,
		fence.y,
		fence.swidth,
		fence.sheight,
		fence.dx,
		fence.dy + 420,
		fence.dwidth * 0.5,
		fence.dheight * 2
	);
	ctx.closePath();
}

// moving mechanism 2
function updateHorse() {
	var isFirst = true;
	mStatus = (mStatus < 12) ? mStatus + 1 : 0;
	// horse update(pos, animation frame)..
	$.each(horses, function(idx, horse) {
		horse.rank = rank.indexOf(horse); // rank save
		horse.sec.pos.y = rankPos[horse.rank]; // mini horse position
		horse.rankPosition = rankPosSize[horse.rank]; // mini horse size
		calDx(horse);
		horse.sprite.sprite_x = (horse.target_size.w * horse.horseStatue); // horse
		horse.sec.sprite.x = (horse.sec.tSize.w * parseInt(mStatus / 4)); // mini
		horse.horseStatue = (horse.horseStatue < 10) ? horse.horseStatue + 1 : 0; // movings
	});
}

function updateRank() {
	rank = new Array();
	$.each(horses, function(idx, horse) {
		rank.push(horse);
	});
	// definition of sorting
	rank.sort(function(a, b) {
	if (a.pos.x > b.pos.x)
		return -1;
	else if (a.pos.x < b.pos.x)
		return 1;
	else
		return 0;
    })
}

function loadImage() {
	// init image
	$.each(horses, function(index, horse) {
		var horseImg = new Image();
		var horseMiniImg = new Image();
		horseImg.src = "img/horse-" + index + ".png";
		horseMiniImg.src = "img/horse--" + index + ".png";
		horse.image = horseImg;
		horse.sec.image = horseMiniImg;
	})
	var trackImage = new Image();
	trackImage.src = "img/track1.png";
	var backImage = new Image();
	backImage.src = 'img/hihi.png';
	var finishLineImage = new Image();
	finishLineImage.src = 'img/line.png';
	var fenceImage = new Image();
	fenceImage.src = "img/fence.png";
	var startImage = new Image();
	startImage.src = "img/start.png";
	var num1Image = new Image();
	num1Image.src = "img/number1.png";
	var num2Image = new Image();
	num2Image.src = "img/number2.png";
	var num3Image = new Image();
	num3Image.src = "img/number3.png";
	var startLineImage = new Image();
	startLineImage.src = "img/line.png";
	var crowdImage = new Image();
	crowdImage.src = "img/crowddd.png";
	var prizeImage = new Image();
	prizeImage.src = "img/prize.png";
	numbers[0].image = startImage;
	numbers[1].image = num1Image;
	numbers[2].image = num2Image;
	numbers[3].image = num3Image;
	track.image = trackImage;
	fence.image = fenceImage;
	finishLine.image = finishLineImage;
	background.image = backImage;
	startLine.image = startLineImage;
	crowd.image = crowdImage;
	prize.image = prizeImage;
}

function loadLevel() {
	loadImage();
	initView();
	flowView();
}

function draw() {
	elapsedTime++;
	if (miniMap.distance <= 100) aniNum = 20;
	// canvas
	ctx.clearRect(0, 0, canvas.width, canvas.height);
	// object drawing section
	drawBackground(16);
	drawStartLine(1);
	drawTrack();
	if (endDistance - elapsedTime < 40 && endDistance - elapsedTime > 0)
		drawFinishLine(24);
	else if (endDistance - elapsedTime <= 0 || gameOver) drawFinishLine(0);
	drawCrowd(16);
	drawFenceBack();
	drawHorse(0);
	drawFenceFront(8);
	// object position setting
	updateRank();
	collisionDetection();
	updateHorse();
	drawElapasedTime();
	drawScoreBoard();
	drawMiniHorse();
	// configuration of FPS
	mainLoop = setTimeout(function() {
		if (gameOver && pause == false) {
			window.setTimeout(function() {
				pause = true;}, 5000);
		}
		if (!pause) {
			requestAnimationFrame(draw);
		} else {
			ctx.clearRect(0, 0, canvas.width, canvas.height);
			callResult();
		}
	}, 1000 / frame);
}

function initView() {
	background.image.onload = function() {
		drawBackground(0);
	}
	track.image.onload = function() {
		drawTrack();
	}
	startLine.image.onload = function() {
		drawStartLine(0);
	}
	fence.image.onload = function() {
		drawFenceBack();
		drawFenceFront(0);
	}
	crowd.image.onload = function() {
		drawCrowd(0);
	}
}

function flowView() {
	drawBackground(8);
	drawTrack();
	drawCrowd(5);
	drawFenceBack();
	drawStartLine(6);
	drawFenceFront(2);
	initLoop = setTimeout(function() {
		if (pause) {
			pause = false;
			return;
		}
		window.requestAnimationFrame(flowView);
	}, 1000 / 120);
}

function drawCount(t) {
	ctx.beginPath();
	ctx.clearRect(0, 0, canvas.width, canvas.height);
	drawBackground(0);
	drawCrowd(0, 0);
	drawTrack();
	drawStartLine(0, 90);
	drawFenceBack();
	drawHorse(-1);
	drawFenceFront(0);
	ctx.drawImage(t.image,
		t.x,
		t.y,
		t.swidth,
		t.sheight,
		t.dx,
		t.dy,
		t.dwidth,
		t.dheight
	);
	ctx.closePath();
}

function count() {
	setTimeout(function() {
		if (numbers.length == 0) return;
		drawCount(numbers.pop());
		window.requestAnimationFrame(count);
	}, 1000);
}

function init() {
	// start main loop
	pause = true;
	background.x = 0;
	count();
	window.setTimeout(draw, 5000)
}
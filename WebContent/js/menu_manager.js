var readyFlag = false;

function allocHorse() {
    generate = function(length) {
        var arr = [];
        var n;
        for (var i = 0; i < length; i++) {
            do
                n = Math.floor(Math.random() * 5 + 1);
            while (arr.indexOf(n) !== -1)
            arr[i] = n;
        }
        return arr;
    }
    var pool = generate(5);
}


// start click
$(document).ready(function(){
	loadLevel();
	$("#start-menu").on("click", function() {
		$(this).effect("highlight", 1000);
		$(this).attr("disabled","disabled");
		start();
	})
	$(".horseExplain").on("click", function() {
		$(this).effect("highlight", 1000);
		$(this).attr("disabled","disabled");
	})

	// 

	// No Drag!!!
	$(document).on("dragstart", function(e) {
		return false;
	})
	// No Select!!
	$(document).on("selectstart", function(e) {
		return false;
	})
})

// start
function start() {
	$("#menus").hide("fade", 2000, init);
	allocHorse();
}

// result
function callResult() {
	function whenError() {
		alert("error");
	}
}
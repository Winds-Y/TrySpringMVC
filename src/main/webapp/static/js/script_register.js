$(document).ready(function() {
	$(".menu li").click(function(event) {
		/* Act on the event */
		var Num=$(this).index("li");
		$(".menu li").removeClass('on').eq(Num).addClass('on');
		$(".cont").hide().eq(Num).show();
	});
});
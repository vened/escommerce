jQuery(document).ready(function() {

    $("#TopMenu li:last-child").addClass("last");
    $("#HomeSlogan li:last-child").addClass("last");
    $("#HomeSlogan li:first-child").hide();
    $("#HomeSlogan li").hover(function () {
        $(this).addClass("hover");
        $(this).prev().addClass("prev");
    }, function () {
        $(this).removeClass("hover");
        $(this).prev().removeClass("prev");
    });
    $(".panes").hover(function () {
        $(this).children('a').show();
    }, function () {
        $(this).children('a').hide();
    });
    $("#HomeCenter .moduletable ul li:last-child").addClass("last");
    $("#Aside .menu li:last-child").addClass("last");
    $(".MaincolModule .moduletable:last-child").addClass("last");


    // инициализация скролла вместе с плагином autoscroll
    $("#scroller").scrollable({circular: true}).autoscroll({autoplay: true});
    
    // элементы ul.tabs работают как закладки для контента, содержащегося в div сразу после div.panes
	$("ul.tabs").tabs("div.panes > div", {
		effect: 'fade',
		fadeInSpeed: 700
	});

});
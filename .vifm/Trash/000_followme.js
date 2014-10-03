var doctHeight = 0;
var topPadding = 10;

$(function () {
    var offset = $("#followme").offset();
    docHeight = $(document).height();
    $(window).scroll(function () {
        var followHeight = $("#followme").height();
        if ($(window).scrollTop() > offset.top - topPadding) {
            var newPos = ($(window).scrollTop() - offset.top) + topPadding;
            var maxPos = docHeight - (followHeight);
            if (newPos > maxPos) { newPos = maxPos; }
            $("#followme").css("margin-top", newPos);
        }
        else {
            $("#followme").css("margin-top", 0);
        }
    });
});
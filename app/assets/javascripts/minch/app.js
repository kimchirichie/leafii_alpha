$(document).ready(function() {

	$("#digitalFeedback").hide();
	$("#IQCFeedback").hide();
	$("#scarsinFeedback").hide();

	$("#digitalOpen").click(function(){
        $("#digitalFeedback").slideToggle("slow");
    });

    $("#iqcOpen").click(function(){
        $("#IQCFeedback").slideToggle("slow");
    });

    $("#scarsinOpen").click(function(){
        $("#scarsinFeedback").slideToggle("slow");
    });

      $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });

});
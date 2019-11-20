$(document).ready(function(e){
	
$(".tp-add").on("click", function(e){
 $('html,body').animate({ scrollTop: 0 }, 'slow');
 e.preventDefault();	
	
});


	
	
	
	//  $(".text-service").hide('slow');
	//  $(".text-turn").hide('slow');
	
$(".uk-image-link-service").hover(
	   function(){ 
	 // $(".text-service").show('slow');
	  $(".uk-bg-cover-service").addClass("uk-hover");
	   
	   },
       function(){ 
	   //$(".text-service").hide('slow');
	   $(".uk-bg-cover-service").removeClass("uk-hover");
	   }	
);

$(".uk-image-link-turn").hover(
	   function(){ 
	  
	   //  $(".text-turn").show('slow'); 
         $(".uk-bg-cover-turn").addClass("uk-hover");
	   },
       function(){ 
	
	 //  $(".text-turn").hide('slow'); 
	   $(".uk-bg-cover-turn").removeClass("uk-hover");
	   }
  	
);

var slideUpServ = {
    distance: '150%',
    origin: 'left',
    opacity: null,
	delay: 2000
};

var slideUpTurn = {
    distance: '150%',
    origin: 'right',
    opacity: null,
	delay: 2000
};

//$(".uk-cover-container").fadeInScroll();
ScrollReveal().reveal('.serv', slideUpServ);
ScrollReveal().reveal('.turn', slideUpTurn);

var p = $(".sidemenu");
    var toggle = false;
    p.fly_sidemenu({

    btnContent: "",
    position: "left",
    customSelector: "li",
    hideButton: false

});

$(".nav-side").click (function () {
    if (!toggle) {
        setTimeout(function() {
            p.toggleMenu();
        }, 100);
    }
    toggle=!toggle;
}); 


	
});
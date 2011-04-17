$(function(){
    $.fn.carouselSlide = function(obj){
        alert('carousel rodando');
    };
    //$('#carousel_here').carouselSlite({time: 5});
    
    $.fn.underlineText = function(clazz) {
    	this.bind('mouseenter mouseleave', function() {
    		if ($(this).hasClass(clazz)) {
    			$(this).removeClass(clazz);
    		} else {
    			$(this).addClass(clazz);
    		}
    	});
    }
    
    $('.highlight-list-home li a p').underlineText('textUnderline');
});

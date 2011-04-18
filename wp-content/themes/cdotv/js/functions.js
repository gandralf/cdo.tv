$(function(){
    $.fn.carouselSlide = function(obj){
        var actual = 0;
        var clicked = null;
        var fade = obj.fade ? obj.fade : false;
        var data = obj.data;
        var data_length = data.length;
        var elem = $(this);
        var html = '';
        var time = obj.time > 0 ? obj.time : 5;
        time = time * 1000;
        function constructDiv(){
            html += '<div class="img"></div><div class="window"><h2></h2><h6></h6></div>';
            html += '<div class="clear"></div><ul class="thumbs">';
            for(var i = 0; i < data_length;i++){
                html += '<li rel="'+i+'"><a href="#">'+data[i][0].thumb+'</a></li>';
            }
            elem.html(html);
        }
        function setCarousel(data_carousel){
            if(fade) elem.animate({opacity:0.5}, 150);
            if(data_carousel.img) elem.find('.img').html(data_carousel.img);
            else elem.find('.img').html('');
            elem.find('.window h2').html(data_carousel.title);
            elem.find('.window h6').html(data_carousel.description);
            var span = elem.find('.thumbs li a .actual');
            if(span.length <= 0){
                span = '<span class="actual">xxx</span>';
            }
            elem.find('.thumbs li a').eq(actual).append(span);
            elem.animate({opacity:1}, 150);
            if(actual < data_length - 1) actual++;
            else actual = 0;
            clicked = null;
        }
        function changeCarousel(){
            actual = clicked ? clicked : actual;
            setCarousel(data[actual][0]);
        }
        if(data_length >= 1){
            constructDiv();
            changeCarousel();
            elem.find('.thumbs li').live('click', function(e){
                e.stopPropagation();
                e.preventDefault();
                clicked = $(this).attr('rel');
                changeCarousel();
                clearInterval(interval);
                interval = setInterval(changeCarousel, time);
            });
            if(data_length > 1) interval = setInterval(changeCarousel, time);
        }
    };
    $('#carousel_here').carouselSlide({time: 2, fade: true, data: dataCarousel});
    
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

$(function(){
    $.fn.carouselSlide = function(obj){
        var actual = 0;
        var fade = obj.fade ? obj.fade : false;
        var data = obj.data;
        var data_length = data.length;
        var elem = $(this);
        var time = obj.time > 0 ? obj.time : 5;
        time = time * 1000;
        function setCarousel(data_carousel){
            if(fade) elem.animate({opacity:0.5}, 150);
            elem.css('background-image', 'url('+data_carousel.img+')');
            elem.find('.window h2').text(data_carousel.title);
            elem.find('.window h6').text(data_carousel.description);
            var span = elem.find('.thumbs li a .actual');
            if(span.length <= 0){
                span = '<span class="actual">xxx</span>';
            }
            elem.find('.thumbs li a').eq(actual).append(span);
            elem.animate({opacity:1}, 150);
            if(actual < data_length - 1) actual++;
            else actual = 0;
        }
        function changeCarousel(){
            setCarousel(data[actual][0]);
        }
        changeCarousel();
        setInterval(changeCarousel, time);
    };
    $('#carousel_here').carouselSlide({
        time: 2,
        fade: true,
        data: [
            [{id: 1,title: '1Titulo destaque',
            description: '1descricao destaque e mais um pouco...',
            img: '/wp-content/uploads/2011/04/liguagem-php-d7f12-e1303074110334.jpg',
            thumb: '/wp-cont1ent/uploads/2011/04/liguagem-php-d7f121-e1303075382594.jpg',
            url: 'http://www.xuxa.com.br'}],
            [{id: 2,title: '2Titulo destaque',
            description: '2descricao destaque e mais um pouco...',
            img: '/wp-content/uploads/2011/04/liguagem-php-d7f12-e13030741103341.jpg',
            thumb: '/wp-content/uploads/2011/04/liguagem-php-d7f121-e1303075382594.jpg',
            url: 'http://www.xuxa.com.br'}],
            [{id: 3,title: '3Titulo destaque',
            description: '3descricao destaque e mais um pouco...',
            img: '/wp-content/uploads/2011/04/liguagem-php-d7f12-e1303074110334.jpg',
            thumb: '/wp-co3ntent/uploads/2011/04/liguagem-php-d7f121-e1303075382594.jpg',
            url: 'http://www.xuxa.com.br'}],
            [{id: 4,title: '4Titulo destaque',
            description: '4descricao destaque e mais um pouco...',
            img: '/wp-content/uploads/2011/04/liguagem-php-d7f12-e13030741103341.jpg',
            thumb: '/wp-content/uploads/2011/04/liguagem-php-d7f121-e1303075382594.jpg',
            url: 'http://www.xuxa.com.br'}]]
    });
    
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

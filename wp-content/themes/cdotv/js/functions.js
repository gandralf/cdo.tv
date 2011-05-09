function prepareMouseOverImage(image, originalURL){
	image.mouseOverImage=originalURL;
	image.onload=function(){return true;};
	image.normalImage=grayscale(image, false);
	
	$(image).parent().mouseover(function(){
		var img = $(this).find("img");
		img.attr("src", img.get(0).mouseOverImage);
	})

	$(image).parent().mouseout(function(){
		var img = $(this).find("img");
		img.attr("src", img.get(0).normalImage);
	})
	
	image.src=image.normalImage;
}


function grayscale(image, bPlaceImage)
{
  var myCanvas=document.createElement("canvas");
  var myCanvasContext=myCanvas.getContext("2d");

  var imgWidth=image.width;
  var imgHeight=image.height;
  // You'll get some string error if you fail to specify the dimensions
  myCanvas.width= imgWidth;
  myCanvas.height=imgHeight;
// alert(imgWidth);
  myCanvasContext.drawImage(image,0,0);

  // The getImageData() function cannot be called if the image is not from the same domain.
  // You'll get security error
  var imageData=myCanvasContext.getImageData(0,0, imgWidth, imgHeight);
  for (i=0; i<imageData.height; i++)
  {
    for (j=0; j<imageData.width; j++)
    {
	  var index=(i*4)*imageData.width+(j*4);
	  var red=imageData.data[index];
	  var green=imageData.data[index+1];
	  var blue=imageData.data[index+2];
	  var alpha=imageData.data[index+3];
	  var average=(red+green+blue)/3;
   	  imageData.data[index]=average;
   	  imageData.data[index+1]=average;
   	  imageData.data[index+2]=average;
   	  imageData.data[index+3]=alpha;
	}
  }
  myCanvasContext.putImageData(imageData,0,0,0,0, imageData.width, imageData.height);
 // myCanvasContext.drawIMage(imageData,0,0);//,0,0, imageData.width, imageData.height);

  if (bPlaceImage)
  {
	  var myDiv=document.createElement("div");
	  myDiv.appendChild(myCanvas);
	  image.parentNode.appendChild(myCanvas);//, image);
  }
  return myCanvas.toDataURL();
}



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
                html += '<li rel="'+i+'"><a href="'+data[i][0].url+'">'+data[i][0].thumb+'</a></li>';
            }
            elem.html(html);
        }
        function setCarousel(data_carousel){
            if(fade) elem.animate({opacity:0.5}, 150);
            if(data_carousel.img){
                elem.find('.img').html(data_carousel.img);
                elem.find('.img img').attr('title', data_carousel.title);
            }
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
            elem.find('.img').live('click', function(e){
                e.stopPropagation();
                e.preventDefault();
                window.location.href = elem.find('.actual').parents('a').attr('href');
            });
            if(data_length > 1) interval = setInterval(changeCarousel, time);
        }
    };
	
	if(typeof dataCarousel != 'undefined'){
		$('#carousel_here').carouselSlide({time: 2, fade: true, data: dataCarousel});
    }
	
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
    
   $('.panel-thumbnail-federaciones li a img').each(function(i, v) {
    	var img = $(v);
    	img.attr('id', 'img-federacion-' + i);
    	img.attr('name', 'img-federacion-' + i);
    	prepareMouseOverImage(document.getElementById(img.attr('id')), img.attr('src'));
    });
});

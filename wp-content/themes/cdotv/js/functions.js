function prepareMouseOverImage(image, originalURL)
{
	image.mouseOverImage=originalURL;
	image.onload=function(){return true;};
	image.normalImage=grayscale(image, false);

	image.onmouseover=function()
	{
	//alert("a");
		this.src=this.mouseOverImage;
	}

	image.onmouseout=function()
	{
//	alert(this.normalImage.src);
		this.src=this.normalImage;
	}
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
//  alert(imgWidth);
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
    
   $('.panel-thumbnail-federaciones li a img').each(function(i, v) {
    	var img = $(v);
    	img.attr('id', 'img-federacion-' + i);
    	img.attr('name', 'img-federacion-' + i);
    	//alert(img.attr('id'));
    	prepareMouseOverImage(document.getElementById(img.attr('id')), img.attr('src'));
    	//img.attr('onload', 'javascript:prepareMouseOverImage(this, \''+ img.attr('src') +'\');');
    	
    });
});
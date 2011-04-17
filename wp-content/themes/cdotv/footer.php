</div>
<div id="footer">
    <div class="content">
        <?php dynamic_sidebar('first-footer-widget-area');?>
        <?php dynamic_sidebar('second-footer-widget-area');?>
        <?php dynamic_sidebar('third-footer-widget-area');?>
        <?php dynamic_sidebar('fourth-footer-widget-area');?>
        <p class="powered">
            Powered by <br/><a href="http://www.gonow.com.br" target='_blank'><img src="<?php echo bloginfo('template_url');?>/images/logoGonow.gif" /></a></p>
        <p class="copyright">c 2010 CDO Todos los derechos reservados</p>
    </div>
</div>
<script src="<?php echo bloginfo('template_url');?>/js/jquery.min.1.5.2.js" type="text/javascript"></script>
<script src="<?php echo bloginfo('template_url');?>/js/functions.js" type="text/javascript"></script>
<script type="text/javascript">

//====================|| Genrator img buttons Menu ||=====================================
	var urlFull = '<?php echo bloginfo('template_url');?>';
	var urlBar = '<?php echo $url = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];?>';
	var delimiter = "/";
	var bar = "";
	
	for(i=0; i < urlBar.length; i++){
		if (urlBar[i] == delimiter){
			bar++;
		}
	}
	
	$('.menu-center ul#menu-menu-header li').each(function(i, v){
		var link = $(v).find('a');
		var linkUrl = link.attr('href');
		var nameImg = linkUrl.split('/');
		link.text('');
		
		if (nameImg[3] == '') {
			link.append('<img src="' + urlFull + '/images/menu-item-home.png" />');
		} else {
			link.append('<img src="' + urlFull + '/images/menu-item-' + nameImg[3] + '.png" />');
		}
		
		if (bar == 1) {
			var newLink = linkUrl.split("//");
			if (newLink[1] == urlBar) {
				$(v).prepend('<span class="menu-button-decoration">&nbsp;&nbsp;</span>');
			}
		} else {
			if (linkUrl.indexOf(urlBar) != -1) {
				$(v).prepend('<span class="menu-button-decoration">&nbsp;&nbsp;</span>');
			}
		}
	});
//========================================================================================
</script>
</body>
</html>

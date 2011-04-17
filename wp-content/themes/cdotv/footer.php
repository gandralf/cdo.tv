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
<script type="text/javascript">
	<?php $url = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];?>
	var urlBar = "<?php echo $url?>";
	var delimiter = "/";
	var bar = "";
	
	for(i=0; i < urlBar.length; i++){
		if (urlBar[i] == delimiter){
			bar++;
		}
	}
	
	$('.menu-center ul#menu-menu-header li').each(function(i, v){
		var linkUrl = $(v).find('a').attr('href');
		
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
</script>
</body>
</html>

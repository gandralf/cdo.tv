Gallery = {
	galleryUrls: function (galleryId, size) {
		var i, result = new Array();
		for (i = 0; i < size; i++) {
			result[i] = "http://media.cdo.tv/gallery/" + galleryId + "/" + (i+1) + ".jpg";
		}

		return result;
	},

	setup: function(gallery, id, size) {
		$(gallery).click(function(){
			$.fancybox(Gallery.galleryUrls(id, size), {
				'type' : 'image',
			});
		});
	},

	setupAll: function() {
		var galleries = $(".multimidia-list li");
		
		Gallery.setup(galleries[0], 1, 21);
		Gallery.setup(galleries[1], 2, 20);
		Gallery.setup(galleries[2], 3, 20);
		Gallery.setup(galleries[3], 4, 20);
		Gallery.setup(galleries[4], 5, 20);
		Gallery.setup(galleries[5], 6, 21);
		Gallery.setup(galleries[6], 7, 17);
		Gallery.setup(galleries[7], 8, 20);
		Gallery.setup(galleries[8], 9, 21);
	}
}

$(document).ready(function(){
	Gallery.setupAll();
});
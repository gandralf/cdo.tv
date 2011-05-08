$(function(){
	var player = new Player($("#playerVideo"));
	player.init("23347055", true);
	
	$(".videos-destaque a").click(function(){
		var id = $(this).attr("href").split("#")[1];
		player.init(id);
	});
	
})


_PLAYER_CURRENT = null;

Player = function(elem, width, height){
	this.elem = elem;
	this.player = null;
	this.filaMetodos = new Array();
	this.videoID = null;
	this.w = width ? width : 520;
	this.h = height ? height : 275;
	
	this.init = function(videoID, stopped){
		this.videoID = videoID;
		var divPlay = this.elem;
		var playNow = stopped ? "" : ";autoplay=1";
		var url = "http://player.vimeo.com/video/" + videoID + 
			"?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff&amp" + playNow;
		var iframe = '<iframe src="' + url + '" width="520" height="275" frameborder="0"></iframe>';
		divPlay.html(iframe);
		// var id = $(divPlay).attr("id");

		_PLAYER_CURRENT = this;
		
		/*
        var params = { allowScriptAccess: "always", bgcolor:"#000000", wmode:"transparent" };
        var atts = { id: id};
        swfobject.embedSWF("http://www.youtube.com/v/"+ this.videoID +"&enablejsapi=1&playerapiid="+id, id, this.w, this.h, "9", null, null, params, atts);
		*/
	}
	this.play = function(){
		if(this.isApiplayerEnable(this.play)){
			this.player.playVideo();
		}
	}
	this.pause = function(){
		if(this.isApiplayerEnable(this.pause)){
			this.player.pauseVideo();
		}
	}
	this.mute = function(){
		if(this.isApiplayerEnable(this.mute)){
			this.player.muteVideo();
		}
	}
	this.unMute = function(){
		if(this.isApiplayerEnable(this.unMute)){
			this.player.unMuteVideo();
		}
	}
	this.setVolume = function(volume){
		if(isNaN(volume) || volume < 0 || volume > 100) {
			alert("Selecione um valor entre 0 e 100.");
		}else if(this.isApiplayerEnable(this.setVolume.bind(this,volume))){
			this.player.setVolume(volume);
		}
	}
	this.isApiplayerEnable = function(func){
		if(this.player == null){
			this.filaMetodos.push(func.bind(this));
			return false;
		}else{
			return true;
		}
	}
	this.execMetodos = function(){
		var func;
		while(this.filaMetodos.length > 0){
			func = this.filaMetodos.shift();
			func();
		}
	}
}

//Funcao chamada automaticamente quando o player e carregado
function onYouTubePlayerReady(playerId){
	_PLAYER_CURRENT.player = $("#"+ playerId).get(0);
	_PLAYER_CURRENT.execMetodos();
}
﻿function listEvents(root) {
    var feed = root.feed,
		entries = feed.entry || [];
	
	entries = entries.reverse();
	
	Calendar.createHours();
	Calendar.galery.reset();
	Calendar.create(entries);
}

$(function(){
	
	$.datepicker.regional['es'] = {
		closeText: 'Cerrar',
		prevText: '&#x3c;Ant',
		nextText: 'Sig&#x3e;',
		currentText: 'Hoy',
		monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
		monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
		dayNames: ['Domingo','Lunes','Martes','Mi&eacute;rcoles','Jueves','Viernes','S&aacute;bado'],
		dayNamesShort: ['Dom','Lun','Mar','Mi&eacute;','Juv','Vie','S&aacute;b'],
		dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],
		weekHeader: 'Sm',
		dateFormat: 'd M yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	
	$.datepicker.setDefaults($.datepicker.regional['es']);

	$("#dia_actual").datepicker({
		showOn: "button",
		buttonImage: "images/calendar.gif",
		buttonImageOnly: true
	});

	$("#dia_actual").datepicker("setDate", new Date());
	
	$("#dia_actual").change(function(){
		loadScriptCalendar(new Date($(this).val()));
	});
	
});


function loadScriptCalendar(date){
	var minDate = Utils.date.getDate(Utils.date.lessDays(date,1))+ "T21:00:00",
		maxDate = Utils.date.getDate(Utils.date.addDays(date,1))+ "T03:00:00",
		url = "http://www.google.com/calendar/feeds/[ID_CALENDAR]/public/full?alt=json-in-script&orderby=starttime&start-min="+minDate+"&start-max="+maxDate+"&max-attendees=40&callback=listEvents&ram="+ Math.random(),
		idDefault = "contenido@cdo.tv",
		idPremium = "loa1t9pmcddfb2ktbdq5q4c17k@group.calendar.google.com",
		idRadio = "poaaqbb8quj5n28fo7e6q26itk@group.calendar.google.com",
		urlDefault = url.replace(/\[ID_CALENDAR\]/g, idDefault),
		urlPremium = url.replace(/\[ID_CALENDAR\]/g, idPremium),
		urlRadio = url.replace(/\[ID_CALENDAR\]/g, idRadio);
		
		Calendar.table.empty();
		Calendar.dateActive = date;
		
		//document.write("<script src='" + urlDefault + "' ><\/script>");
		$("head").append("<script src='" + urlPremium + "' ><\/script>");
		//document.write("<script src='" + urlRadio + "' ><\/script>");
}


Calendar = {
	table : $("#tblAgenda"),
	hours : $(".box_grade_programacion ul"),
	programacion : $(".box_programacion"),
	dateActive : null,
	
	createHours: function(){
		
		var htmlTpl = '<li><div align="center"><h3>[HOUR]:00</h3>'+
								'<span>[HOUR]:00</span>'+
								'<span>[HOUR]:15</span>'+
								'<span>[HOUR]:30</span>'+
								'<span>[HOUR]:45</span>'+
						'</div>'+
						'<span class="bottom">&nbsp;</span>'+
					'</li>';
		
		this.hours.empty();
		
		for (var i = 0; i <= 23; ++i) {
			this.hours.append(htmlTpl.replace(/\[HOUR\]/g,i));
		}
		
		this.galery.create();
	},
	
	create: function(entries){
		var tr = $('<tr/>'),
			endOld = this.dateActive;
		
		endOld.setHours(0,0);
		
		for (var i = 0; i < entries.length; ++i) {
			var entry = entries[i],
				title = entry.title.$t,
				when = entry['gd$when'],
				start = (when) ? Utils.date.newPortableDate(entry['gd$when'][0].startTime) : "",
				end = (when) ? Utils.date.newPortableDate(entry['gd$when'][0].endTime) : "";
			
			if(Utils.date.equalDate(start, this.dateActive)) {
				var startRw = start,
					endRw = end;
					
				if(endOld > start){//se horário final da atividade anterior for maior q horário inicial da atual atividade
					startRw = endOld;//sobrescreve horário inicial da atual atividade
				}
				
				if(Utils.date.getHours(startRw) != Utils.date.getHours(endOld)){//se horário inicial da atividade atual não igual ao horário final da atividade anterior
					tr.append(this.activity.create(endOld, startRw, "Sin programación"));//horário sem programação
				}
				
				if(startRw < endRw){//se horário inicial menor q horário final
					tr.append(this.activity.create(startRw, endRw, title));
				}
				
				if(endOld < end){//se horário final da atividade anterior for menor q horário final da atual atividade
					endOld = end;//sobrescreve horário final anterior
				}
			}
		}
		
		if(Utils.date.getHours(endOld) != "00:00"){
			var endHours = new Date(endOld);
			endHours.setHours(0,0);
			tr.append(this.activity.create(endOld, Utils.date.addDays(endHours,1), "Sin programación"));
		}
		
		$(this.table).append(tr);
	},
	
	activity: {
		defaultWid: 230, // 1 hora tem 227px de largura
		seconds: 60000,
		minute: 60,
		
		create: function(start, end, title){
			// to-do: separar e exibir os componentes do titulo 
			var tt = title.split(/\s+\/\s+/g); // Exemplo de titulo "Futebol / Campeonato Paulista / Corintias x Santos"
			var tag = tt[0],
				name = tt[1],
				subject = tt[2];

			var width = this.getWidth(start, end),
				activity = ['<div class="descProgramacion"><span class="tag">', tag,'</span><h3>',name,'</h3><span class="subject">',subject, '</span></div>'].join(""),
				td = $('<td/>');
				
				td.append(activity).css({width: width});
			
			return td;
		},
		
		getWidth: function(start, end){
			var hoursDif = (start - end) * (-1), // * -1 para dar número positivo
				dif = (hoursDif / this.seconds) / this.minute,
				width = (dif * this.defaultWid) -1;
			
			return (Math.ceil(width).toFixed(0));
		}
	},
	//GALERIA DE PROGRAMAÇAO
	galery: {
		galeryContainer: $(".box_programacion_galery"),
		mask: null,
		btNext: null,
		btPrevious: null,
		width: 230,
		flagAnimate: true,
		
		create: function(){
			this.mask = Calendar.programacion.find(".box_programacion_mask"), // 1 hora tem 227px de largura
			this.btNext = Calendar.programacion.find(".bt_proxima a"),
			this.btPrevious = Calendar.programacion.find(".bt_anterior a");
			
			var self = this,
				widthProg = $(".box_grade_programacion").width(),
				widthGal = this.galeryContainer.width();
			
			this.btNext.click(function(){		
				if((self.getLeft() * -1) + widthGal < widthProg){
					self.next();
				}
				return false;
			});
			
			this.btPrevious.click(function(){
				if(self.getLeft() < 0){
					self.previous();
				}
				return false;
			});
		
		},
		next: function(){
			this.scrollTo(this.getLeft() - this.width);
		},
		previous: function(){
			this.scrollTo(this.getLeft() + this.width);
		},
		reset: function(){
			this.scrollTo(-1*new Date().getHours()*this.width);
		},
		scrollTo: function(left) {
			var self = this;
				
			if(self.flagAnimate){
				self.flagAnimate = false;
				this.mask.animate({left:left}, "fast", function(){
					self.flagAnimate = true;
				});
			}
		},
		getLeft: function(){
			return (parseInt(this.mask.css("left").replace("px",""), 10));
		}
	}
}



Utils = {
	
	date: {
		
		equalDate: function(firstDate, secondDate){
			
			var isEqualDate = (firstDate.getDate() == secondDate.getDate()),
				isEqualMonth = (firstDate.getMonth() == secondDate.getMonth()),
				isEqualYear = (firstDate.getFullYear() == secondDate.getFullYear());
			
			return (isEqualDate && isEqualMonth && isEqualYear);		
		},
		
		getHours: function(date){
			var hour = (date.getHours() < 10) ? "0" + date.getHours() : date.getHours(),
				minutes = (date.getMinutes() < 10) ? "0" + date.getMinutes() : date.getMinutes();
			
			return (hour +":"+ minutes);
		},
		
		getDate: function(date){
			var year = date.getFullYear(),
				month = (date.getMonth()+1 < 10) ? "0" + (date.getMonth()+1) : (date.getMonth()+1),
				day = (date.getDate() < 10) ? "0" + date.getDate() : date.getDate();
			
			return (year +"-"+ month +"-"+ day);
		},
		
		addDays: function(date, qtd){
			var dateNew = new Date(date.getTime() + (qtd * 24 * 60 * 60000));
			
			return (dateNew);
		},
		
		lessDays: function(date, qtd){
			var dateNew = new Date(date.getTime() - (qtd * 24 * 60 * 60000));
			
			return (dateNew);
		},
		
		newPortableDate: function(str){
			var dta = str.substr(0, 10).split('-');
			var hr = str.substr(11, 8).split(':');

			return new Date(dta[0], dta[1] - 1, dta[2], hr[0], hr[1], hr[2]);
		}
	}
}
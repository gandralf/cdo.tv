function listEvents(root) {
    var feed = root.feed,
		entries = feed.entry || [],
		today = new Date();
	
	entries = entries.reverse();
	
	Calendar.createHours();
	Calendar.create(entries);
	
    console.log(feed);
}

$(function(){
	
	
	
});

Calendar = {
	table : $("#tblAgenda"),
	hours : $(".box_grade_programacion ul"),
	programacion : $(".box_programacion"),
	
	createHours: function(){
		
		var htmlTpl = '<li><div><h3>[HOUR]:00 pm</h3>'+
								'<span>[HOUR]:00 pm</span>'+
								'<span>[HOUR]:15 pm</span>'+
								'<span>[HOUR]:30 pm</span>'+
								'<span>[HOUR]:45 pm</span>'+
						'</div>'+
						'<span class="bottom">&nbsp;</span>'+
					'</li>';
		
		this.hours.empty();
		
		for (var i = 0; i <= 23; ++i) {
			
			this.hours.append(htmlTpl.replace(/\[HOUR\]/g,i));
		}
	},
	
	create: function(entries){
		var today = new Date(),
			tr = $('<tr/>'),
			endOld = new Date();
		
		endOld.setHours(0,0);
		
		for (var i = 0; i < entries.length; ++i) {
			var entry = entries[i],
				title = entry.title.$t,
				when = entry['gd$when'],
				start = (when) ? new Date(entry['gd$when'][0].startTime) : "",
				end = (when) ? new Date(entry['gd$when'][0].endTime) : "";
			
			if(Utils.date.equalDate(start, today)) {
				var startRw = start,
					endRw = end;
					
				if(endOld > start){//se horário final da atividade anterior for maior q horário inicial da atual atividade
					startRw = endOld;//sobrescreve horário inicial da atual atividade
				}
				
				if(Utils.date.getHours(startRw) != Utils.date.getHours(endOld)){//se horário inicial da atividade atual não igual ao horário final da atividade anterior
					tr.append(this.activity.create(endOld, startRw, "Sem programação"));//horário sem programação
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
			var endHours = new Date();
			endHours.setHours(0,0);
			tr.append(this.activity.create(endOld, Utils.date.addDays(endHours,1), "Sem programação"));
		}
		
		$(this.table).append(tr);
		
		this.galery.create();
	},
	
	activity: {
		defaultWid: 230, // 1 hora tem 227px de largura
		seconds: 60000,
		minute: 60,
		
		create: function(start, end, title){
			var width = this.getWidth(start, end),				
				activity = ['<span>', Utils.date.getHours(start), ' ', Utils.date.getHours(end), ' ', title, '</span>'].join(""),
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
			var left = this.getLeft() - this.width,
				self = this;
				
			if(self.flagAnimate){
				self.flagAnimate = false;
				this.mask.animate({left:left}, "fast", function(){
					self.flagAnimate = true;
				});
			}
		},
		previous: function(){
			var left = this.getLeft() + this.width,
				self = this;
				
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
		
		addDays: function(date, qtd){
			var dateNew = new Date(date.getTime() + (qtd * 24 * 60 * 60000));
			
			return (dateNew);
		}
	
	}
}
// JavaScript Document
var Menu = function(options){
	this.cacheOpen = {};
	this.nav = options.nav || $('.nav');
	this.tab = options.tab || $('.tab');
	this.content = options.content || $('.content');	
	this.defaultSelect = options.defaultSelect || this.nav.find('li[data-id="1"]');
	
	this.winWidth = $(window).width();
	this._bindEvent();
	this._select(this.defaultSelect);
}

/*创建内容，包括tab �?iframe*/
Menu.prototype._createContent = function($this){
	var id = $this.attr('data-id'),
		name = $this.text(),
		href = $this.attr('href');
	if($this.is(this.defaultSelect)){
		var $tab = $('<li data-id="'+ id +'" data-default="default"><a href="javascript:;" class="ue-clear"><span>'+ name +'</span></a></li>');	
	}else{
		var $tab = $('<li data-id="'+ id +'"><a href="javascript:;" class="ue-clear"><span>'+ name +'</span><i class="close-tab"></i></a></li>');	
	}
	
	var $iframe= $('<iframe data-id="'+ id +'" width="100%" height="100%" frameborder="0" src="'+ href +'"></iframe>');
	
	$iframe.height($("#bd").height() - $(".tab").height()-8);
	 
	this.cacheOpen[id]={nav:$this, tab:$tab, iframe:$iframe};
	 
	this.tab.append($tab);
	this.content.append($iframe);
	
	this._show($this);
}

/*显示菜单�?*/
Menu.prototype._show = function($this){
	var id = $this.attr('data-id'),
		name = $this.text(),
		$tabli = this.tab.find('li[data-id="'+ id +'"]');
	
	this.nav.find('li').removeClass('current');
	this.nav.find('li[data-id="'+ id +'"]').addClass('current').parents('.nav-li').siblings().find(".subnav").hide().end().end().addClass('current').find(".subnav").show();
	this.tab.find('li').removeClass('current');
	
	if(!!$tabli.size()){
		$tabli.addClass('current');	
	}else{
		//$('.more-bab-list').find('li[data-id="'+ id +'"]')	
		if(this._isInMorePanel($this)){
			this._move2tab(id,true);
			this.tab.find('li[data-id="'+ id +'"]').addClass('current');
		}else{
			this._move2tab(id);	
		}
		
	}
	
	
	this.content.find('iframe').addClass('outwindow');
	this.content.find('iframe[data-id="'+ id +'"]').removeClass();
	
	
}

/*关闭tab*/
Menu.prototype._close = function($this, flag){
	// 判断是否是当前窗�?
	var id = $this.attr('data-id'),
		current = this.cacheOpen[id], 
		index = $this.index(),
		$tab = this.tab.find('li').eq(index - 1),
		isMorePanel = !!$(this).parents('.more-bab-list').size();
		
	
	/*if(current && current.nav.hasClass('current')){ // modify 2014-3-24 can close the current
		return;	
	}*/
	// 执行关闭
	current.tab.remove();
	current.iframe.remove();
	current.more && current.more.remove();
	
	delete this.cacheOpen[id];
	
	if(current && current.nav.hasClass('current')){ // modify 2014-3-24 delete current the prev one is selected
		this._show($tab);
	}
	
	this._checkWidth(flag);
}

Menu.prototype._bindEvent = function(){
	var self = this;
	
	this.nav.on('click', 'li', function(){
		
		if($(this).hasClass('current') || $(this).hasClass('subnav-li')){
			return false;	
		}
		$(this).addClass('current').siblings().removeClass("current").find(".subnav").hide().end().end().find(".subnav").show();
		
	});
	
	
	this.nav.on('click', '.subnav li', function(){
		self._select($(this));
	});
	
	
	this.tab.on('click', '.close-tab', function(){
		self._close($(this).parents('li'));
		return false;
	});
	
	this.tab.on('click', 'li', function(){
		self._show($(this));
		return false;
	});
	
	$('.more-bab-list').on('click', 'i', function(){
		self._close($(this).parents('li'));
		return false;
	});
	
	$('.more-bab-list').on('click','li',function(){
		var id = $(this).attr('data-id');
		self._move2tab(id);
	});
	
	if(!-[1,]){
		$('.more-bab-list').on('hover','li',function(){
			$('.more-bab-list').find('.opt-panel-ml').css('bottom',0).css('bottom',5);
			$('.more-bab-list').find('.opt-panel-mr').css('bottom',0).css('bottom',5);
		});
	}
	
	/*关闭所�?*/
	$('.tab-close').click(function(e) {
        self._closeAll();
    });
	
	this.tab.next('.tab-more').click(function(){
		$('.more-bab-list').css('left',$(this).offset().left - $('.more-bab-list').width()/2).show();
		$(this).toggleClass('active');
	});
	
	
	/*window resize 事件*/
	resize(function(e) {
		var width = self._checkCanTab(), tempWinWindow = self.winWidth - $(window).width(), $tabMore = self.tab.next('.tab-more');
		$('.more-bab-list').hide();
		$tabMore.removeClass('active');
       if(width > 0 && tempWinWindow > 0){
		   
		  // 宽度不够时，将最后一个移到panel�?
		  var $last = self.tab.find('li').last(), lastId = $last.attr('data-id');
		  self._move2MorePanel(lastId);
		  arguments.callee();
	   }else{
		   var $last = $('.more-bab-list').find('li').last(), lastId = $last.attr('data-id');
		   
		   if( (width < -$last.width()-130) && tempWinWindow < 0 && $last.size() == 1){
			  self._move2tab(lastId, true);	
			  arguments.callee();
		   }
		   self.tab.find('li').removeClass('current');
		  self.tab.find('li[data-id="'+ $('iframe').not('.outwindow').attr('data-id') +'"]').addClass('current');
	   }
	   self.winWidth = $(window).width();
	   
	   if(!!!$('.more-bab-list').find('li').size()){
			
			$tabMore.hide();
		}else{
			$tabMore.show();	
		}
		
    });

}

/*选择一�?*/
Menu.prototype._select = function($this){
	var id = $this.attr('data-id'),
		opened = this.cacheOpen[id];
		
	// 是否已经存在
	if(opened){
		this._show($this);	
	}else{
		this._createContent($this);	
	}
	
	this._checkWidth();
}

/*关闭所�*/
Menu.prototype._closeAll = function(){
	var self = this;
	
	$.each($('.more-bab-list li'),function(){
		self._close($(this));
	});
	$.each($('.tab').find('li'),function(){
		if($(this).attr('data-default') !== 'default'){
			self._close($(this));

		}else{
			self._select($(this))	
		}
	});
	
	
}

/*检查宽�?*/
Menu.prototype._checkWidth = function(flag){
	var availableWidth = $('.title').width() - 150, totalWidth = this.tab.width(), size = this.tab.find('li').size(),
		intoMore = this.tab.find('li').eq(size - 2),
		intoId = intoMore.attr('data-id'),
		$tabMore = this.tab.next('.tab-more'),
		self = this;

	if( this._checkCanTab() > 0 ){
		$tabMore.show();
		
		
		this._move2MorePanel(intoId);
		
	}else{
		$tabMore.hide();
		if(!!$('.more-bab-list li').eq(0).size() && flag){
			var id = $('.more-bab-list li').eq(0).attr('data-id');
			
			this._move2tab(id, true);
		}
	}
	
	if(!!!$('.more-bab-list').find('li').size()){
		$('.more-bab-list').hide();
	}else{
		$tabMore.show();	
	}
	
}

Menu.prototype._move2MorePanel = function(intoId){
	var obj = this.cacheOpen[intoId],name = obj.tab.text();
	
	obj.tab.detach();
	var $more = $('<li data-id="'+ intoId +'"><span href="javascript:;"><i></i>'+ name +'</span></li>');
	this.cacheOpen[intoId].more = $more;
	$('.more-bab-list').find('ul').append($more);
}

Menu.prototype._move2tab = function(id, flag){
	if(!!!id){
		return false;	
	}
	var	size = this.tab.find('li').size(),
		intoId = this.tab.find('li').eq(size - 1).attr('data-id'),
		tabLi = this.cacheOpen[id].tab,
		moreLI = this.cacheOpen[id].more;
		

	this.tab.append(tabLi);
	moreLI.detach();
	if(!flag){
		this._move2MorePanel(intoId);
		this._select(tabLi);
	}
	
	
}

Menu.prototype._checkCanTab = function(){
	var availableWidth = $('.title').width() - 150, totalWidth = 0;
		
	$.each($('.tab').find('li'),function(){
		totalWidth += $(this).outerWidth();
	});
	
	totalWidth = totalWidth;

	return totalWidth - availableWidth;
}

/*判断是否在更多下拉板�?*/
Menu.prototype._isInMorePanel = function($this){
	var id = $this.attr('data-id'),
		opened = this.cacheOpen[id];
	if(!opened) return false;
	
	if(!!$('.more-bab-list').find('li[data-id="'+ id +'"]')){
		return true;	
	}
}
/*
FENGSOU TECH MR WANG. UPDATED 20150223
菜单控制交互控制
*/
/*left menu*/
$(function(){
		//内容高度设置
		$(window).resize(function(){
		   var height = $(window).height();
	    	$(".middle_cnt_c").height(height-72);
	    	$(".middle_cnt_c1").height(height-122);
		});
		var height = $(window).height();
	    $(".middle_cnt_c").height(height-72);
	    $(".middle_cnt_c1").height(height-122);
	    //表格奇偶背景
	    $(".tablelist tr:even").css('background','#f9f9f9');
	    $(".tablelist tr:odd").css('background','white');
	    //头部时间
	    $('#header').find('.time').text(show());
		//控制左栏是否显示
            $("#ShrinkLeftColumn").click(function () {
                if ($("#m_left").is(":visible")) {
                    $("#m_left").hide();
                    document.getElementById("ShrinkLeftColumn").title = "展开左栏";
                    $("#m_center").css("width", "auto");
                    $("#ShrinkLeftColumn").css("left", "10px");
                    $(this).children().removeClass();
                    $(this).children().addClass('gray_right');
                }
                else {
                    $("#m_left").show();
                    $("#m_center").css("width", "auto");
                    $("#ShrinkLeftColumn").css("left", "10px");
                    document.getElementById("ShrinkLeftColumn").title = "收起左栏";
                    $(this).children().removeClass();
                    $(this).children().addClass('gray_left');
                }
            });
          //左侧滚动条效果
			$("#leftMenu").niceScroll({  
				cursorcolor:"#EB7416",  
				cursoropacitymax:1,  
				touchbehavior:false,  
				cursorwidth:"6px",  
				cursorborder:"0",  
				cursorborderradius:"5px"
			}); 	
})
//跳转页面
function goBack(url){
	window.location.href=url;
}

//json无限极菜单
function AccordionMenu(options) {
	this.config = {
		containerCls : '.wrap-menu',// 外层容器
		menuArrs:  '',//  JSON传进来的数据
		type:  'click', // 默认为click 也可以mouseover
		renderCallBack:  null, // 渲染html结构后回调
		clickItemCallBack: null // 每点击某一项时候回调
	};
	this.cache = {
	};
	this.init(options);
 }
 AccordionMenu.prototype = {
	constructor: AccordionMenu,
	init: function(options){
		this.config = $.extend(this.config,options || {});
		var self = this,
			_config = self.config,
			_cache = self.cache;
		// 渲染html结构
		$(_config.containerCls).each(function(index,item){
			self._renderHTML(item);
			// 处理点击事件
			self._bindEnv(item);
		});
	},
	_renderHTML: function(container){
		var self = this,
			_config = self.config,
			_cache = self.cache;
		var ulhtml = $('<ul></ul>');
		$(_config.menuArrs).each(function(index,item){
			var lihtml = $('<li><h2><i class="titleline"></i><i class=leftmenu_i'+ item.css +'></i><a href=javascript:void(0) target="main">'+item.name+'</a><cite></cite></h2></li>');
			if(item.children && item.children.length > 0) {
				self._createchildren(item.children,lihtml);
			}
			$(ulhtml).append(lihtml);
		});
		$(container).append(ulhtml);
		_config.renderCallBack && $.isFunction(_config.renderCallBack) && _config.renderCallBack();
		// 处理层级缩进
		self._levelIndent(ulhtml);
	},
	/**
	 * 创建子菜单
	 * @param {array} 子菜单
	 * @param {lihtml} li项
	 */
	_createchildren: function(children,lihtml){
		var self = this,
			_config = self.config,
			_cache = self.cache;
		var subUl = $('<ul></ul>'),
			callee = arguments.callee,
			subLi;
		
		$(children).each(function(index,item){
			var url = item.url || 'javascript:void(0)';
			if(url.indexOf("?")>-1){
				subLi = $('<li><a href="'+url+'&id='+item.id+'" target="main">'+item.name+'</a></li>');
			}else{
				subLi = $('<li><a href="'+url+'?id='+item.id+'" target="main">'+item.name+'</a></li>');
			}
			if(item.children && item.children.length > 0) {
				$(subLi).children('a').prepend('<img src="" alt=""/>');
                callee(item.children, subLi);
			}
			$(subUl).append(subLi);
		});
		
		$(lihtml).append(subUl);
	},
	/**
	 * 处理层级缩进
	 */
	_levelIndent: function(ulList){
		var self = this,
			_config = self.config,
			_cache = self.cache,
			callee = arguments.callee;
		var initTextIndent = 1,
			lev = 1,
			$oUl = $(ulList);
		while($oUl.find('ul').length > 0){
			initTextIndent = parseInt(initTextIndent,10) + 1 + 'em';
			$oUl.children().children('ul').addClass('lev-' + lev)
						.children('li').css('text-indent', initTextIndent);
		
			$oUl = $oUl.children().children('ul');
			lev++;
		}
		$(ulList).find('ul').hide();
		//$(ulList).find('ul:first').show();
	},
	/**
	 * 绑定事件
	 */
	_bindEnv: function(container) {
		var self = this,
			_config = self.config;
		$('h2,a',container).unbind(_config.type);
		$('h2,a',container).bind(_config.type,function(e){
			if($(this).siblings('ul').length > 0) {
				$(this).siblings('ul').slideToggle(300).end().children('img').toggleClass('unfold');
				$(this).parent().siblings().removeClass("active");
			$(this).parent().siblings().children("ul").slideUp();
			$(this).parent().toggleClass("active");
			}
			
			$(this).parent('li').siblings().find('ul').hide()
				   .end().find('img.unfold').removeClass('unfold');
			_config.clickItemCallBack && $.isFunction(_config.clickItemCallBack) && _config.clickItemCallBack($(this));
		});
	}
 };
 
//头部时间
 function show(){
     var week; 
     var mydate = new Date();
     var str = "" + mydate.getFullYear() + "年";
     str += (mydate.getMonth()+1) + "月";
     str += mydate.getDate() + "日";
     if(new Date().getDay()==0) week="星期日";
     if(new Date().getDay()==1) week="星期一";
     if(new Date().getDay()==2) week="星期二";
     if(new Date().getDay()==3) week="星期三";
     if(new Date().getDay()==4) week="星期四";
     if(new Date().getDay()==5) week="星期五";
     if(new Date().getDay()==6) week="星期六";
     str += ' ' + week;
     return str;
 }



(function($)
{
	$(document).ready(function() {
		$('.styleswitch').click(function()
		{
			switchStylestyle(this.getAttribute("rel"));
			return false;
		});
		var c = readCookie('style');
		if (c) switchStylestyle(c);
	});
	
	

	function switchStylestyle(styleName)
	{
		$('link[rel*=style][title*=color]').each(function(i) 
		{
			this.disabled = true;
			if (this.getAttribute('title') == styleName) this.disabled = false;
		});
		createCookie('style', styleName, 365);
	}
	
	
	$(document).ready(function() {
		$('.blackswitch').click(function()
		{
         switchdarkstyle();
		 return false;
		});
		var c = readCookie('darkstyle');
		if (c) switchdarkstyle(c);
	});	
	
		function switchdarkstyle()
	{
        $("header").addClass("dark_header");
		createCookie('darkstyle', '1', 365);
	}
	
	$(document).ready(function() {
	  $('.whiteswitch').click(function()
		{
          $("header").removeClass("dark_header");
		  eraseCookie('darkstyle');
		  return false;
		});
	});	
	
	
	
		$(document).ready(function() {
		$('.blackswitchside').click(function()
		{
         switchdarkstyleside();
		 return false;
		});
		var c = readCookie('darkstyleside');
		if (c) switchdarkstyleside(c);
	});	
	
		function switchdarkstyleside()
	{
        $(".widget.tabs:first-child").addClass("dark_sidebar");
		createCookie('darkstyleside', '1', 365);
	}
	
	$(document).ready(function() {
	  $('.whiteswitchside').click(function()
		{
          $(".widget.tabs:first-child").removeClass("dark_sidebar");
		  eraseCookie('darkstyleside');
		  return false;
		});
	});
	

	$(document).ready(function() {
		$('.blockswitch').click(function()
		{
         switchblock();
		 return false;
		});
		var c = readCookie('switchblock');
		if (c) switchblock(c);
	});	
	
		function switchblock()
	{
        $("body").addClass("block_style");
		createCookie('switchblock', '1', 365);
	}
	
	$(document).ready(function() {
	  $('.wideswitch').click(function()
		{
          $("body").removeClass("block_style");
		  eraseCookie('switchblock');
		  return false;
		});
	});	
	
	$(document).ready(function() {
	  $('.reset_def').click(function()
		{
          $("body").removeClass("block_style");
		  eraseCookie('switchblock');
		  $(".widget.tabs:first-child").removeClass("dark_sidebar");
		  eraseCookie('darkstyleside');
		  $("header").removeClass("dark_header");
		  eraseCookie('darkstyle');
		  return false;
		});
	});	
	
	
	
})(jQuery);



// Cookie functions
function createCookie(name,value,days)
{
	if (days)
	{
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}
function readCookie(name)
{
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++)
	{
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}
function eraseCookie(name)
{
	createCookie(name,"",-1);
}

// Switcher
	jQuery('.demo_changer .demo-icon').click(function(){

		if(jQuery('.demo_changer').hasClass("active")){
			jQuery('.demo_changer').animate({"left":"-180px"},function(){
				jQuery('.demo_changer').toggleClass("active");
			});						
		}else{
			jQuery('.demo_changer').animate({"left":"0px"},function(){
				jQuery('.demo_changer').toggleClass("active");
			});			
		} 
	});
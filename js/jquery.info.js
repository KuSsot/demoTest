function showInfo(title,time,type){
	$("#fixInfo").remove();
	 var windowWidth =window.innerWidth  || document.documentElement.clientWidth  || document.body.clientWidth;// $(window).width();
     var windowHeight = $(window).height();

     if(type=="tip"){
			var html="<div id='fixInfo' style='position:fixed;left:"+(windowWidth-300)/2+"px;top:"+(windowHeight-50)/2+"px;'><div class='wrap' style='padding:10px;background-color:#ff9800;color:#fff;'>"+title+"</div></div>";
			 $('body').append(html);


     }else if(type=="warn"){

			var html="<div id='fixInfo' style='position:fixed;left:"+(windowWidth-300)/2+"px;top:"+(windowHeight-50)/2+"px;'><div class='wrap' style='padding:10px;background-color:#fea6a5;color:#fff;'>"+title+"</div></div>";
			 $('body').append(html);

     } 

	if(time!=0){


	
	     window.setTimeout(function(){
	     	$("#fixInfo").remove();
	     	window.clearTimeout;//停止
	     },time);
	}



}
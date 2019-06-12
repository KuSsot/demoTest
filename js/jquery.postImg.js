function postIamges(cno){


          var windowWidth =window.innerWidth  || document.documentElement.clientWidth  || document.body.clientWidth;// $(window).width();
        var windowHeight = $(window).height();
       // console.log(windowHeight);
       /* $(window).resize(function () {
            windowWidth = $(window).width();
            windowHeight = $(window).height();
        }); 
        
*/

        var html="<div id='PostMyImg' style='position:fixed;left:0px;top:0px;right:0px;bottom:0px;background:rgba(0,0,0,0.5)'>"
        +"<div class='wrap' style='background:#fff; position:absolute;left:25%;top:60px;right:25%;bottom:20px;'>"
        	+"<h2 class='title'>上传其他材料</h2>"
        	+"<div  style='padding:10px 10px 40px 10px;'>"
        	+" <iframe style='border:none;width:100%;height:"+(windowHeight-185)+"px;' src='postimg1.aspx?no="+cno+"'></iframe> "
        	+"</div><div class='clear' style='position:absolute;left:10px;bottom:10px;'> <div class='h-inline bg-blue h-button' id='btn_surepost' style='background-color: #38a3d5;\n" +
            "      display: inline-block;\n" +
            "      width: 50px;\n" +
            "      height: 30px;\n" +
            "      text-align: center;\n" +
            "      color: white;\n" +
            "      line-height: 30px;'>确定</div> <div id='btn_closepost' class='h-inline bg-blue h-button' style='background-color: #38a3d5;\n" +
            "      display: inline-block;\n" +
            "      width: 50px;\n" +
            "      height: 30px;\n" +
            "      text-align: center;\n" +
            "      color: white;\n" +
            "      line-height: 30px;'>取消</div></div>"
        +"</div></div>";

         $('body').append(html);

         $("#btn_surepost").on("click",function(){
                //$("#fixswiper").remove();
               	getOtherPostFiles(cno);
               	 $("#PostMyImg").remove();
            })
         $("#btn_closepost").on("click",function(){
             $("#PostMyImg").remove();
                 
          })






}
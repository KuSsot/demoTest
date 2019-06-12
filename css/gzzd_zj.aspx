<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gzzd_zj.aspx.cs" Inherits="gzzd_zj" %>

<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>Title</title>
     <link href="css/tower/style_gzzd.css" rel="stylesheet" type="text/css">
    <link href="css/tower/pagination.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/WdatePicker.js"></script>
	<script src="js/jquery.postImg.js" charset="UTF-8"></script>

    </head>
    <body>
<header>
            <div class="header_ti">
                <div class="title_c"><span>规章制度增加</span></div>
                <div class="back" onclick="javascript:history.back(-1);"><span>返回</span></div>
        </div>
    </header>
<mian>
            <div class="content1">
                <div class="content_top">
                                <div class="con_co dd_wid">
                                            <div class="title_lx"><span>规章制度类型：</span></div>
                                            <div class="">

                                                 <select class="con_sel" id="gzzdlx">
                                                    <!--<option value="1">1</option>-->
                                                    <!--<option value="2">2</option>-->
                                                    <!--<option value="3">3</option>-->
                                               </select>
                                        </div>
                                    </div>
                                <div class="cont_c1">
	                                <div class="con_co dd_wid">
	                                            <div class="title_cc"><span>规章制度标题：</span></div>
	                                            <div class="">
	                                                <input type="text" id="wjbt">
	                                        </div>
	                                    </div>
                        		</div>
                           
                            <div class="cont_c1">
                                <div class=" cont_cs dd_wid">
                                            <div class="title_cc"><span>规章制度内容：</span></div>
                                            <div class="cont_tex">
                                                <textarea id="zynr" rows="10" cols="60"></textarea>
                                        </div>
                                    </div>
                        </div>
                    </div>

        </div>
    </mian>
<footer>
            <div class="fot" id="bcss">
                <button class="but1 but_l" onclick="gzzd_cz();">重置</button>
                 <button class="but1" onclick="gzzd_zj();">保存</button>
        </div>
    </footer>
    <input type="text" style="display: none;" id="bl">

</body>
</html>
<script>
	
function gzzd_cz(){
$("#wjbt").val("");
$("#gzzdlx").val("");
$("#zynr").val("");
}


	function gzzd_zj(id) {
		var  wjbt=$("#wjbt").val();
		var  gzzdlx=$("#gzzdlx").val();
		var  zynr=$("#zynr").val();
		alert(wjbt);
		alert(gzzdlx);
		alert(zynr);
		
//		var myselect=document.getElementById("xzfsr");
//		var index=myselect.selectedIndex ; // selectedIndex代表的是你所选中项的index
//		myselect.options[index].value;
//		myselect.options[index].text;
//		var psruid = myselect.options[index].value;
//		var psrname =myselect.options[index].text;
//		//console.log(myselect.options[index].value);
//		//console.log(myselect.options[index].text);
//		var d = new Date();
//		var curr_date = d.getDate();
//		var curr_month = d.getMonth() + 1;
//		var curr_year = d.getFullYear();
//		String(curr_month).length < 2 ? (curr_month = "0" + curr_month): curr_month;
//		String(curr_date).length < 2 ? (curr_date = "0" + curr_date): curr_date;
//		var yyyyMMdd = curr_year + "-" + curr_month +"-"+ curr_date;
		
//		var qxjid =$("#bl").val();
//		     $.ajax({
//		        url:'../sys/code/prodata.ashx',
//		        type: 'get',
//		        dataType:'json',
//		
//		        data: {
//		            tablename:'r_gwlzdj',
//		            mtype:2,
//		            id:id,
//		            wjbt:wjbt,
//		            gzzdlx:gzzdlx,
//		            blqxtime:blqxtime,
//		            wjzh:wjzh,
//		            wjbh:wjbh,
//		            jjcd:jjcd,
//		            zynr:zynr,
//		            zwnr:zwnr,//富有文本
//		            xzfsr:psruid,
//		            uid:uid,
//		            name:uname
//		
//		
//		        }, success:function(info) {
//		
//		        }
//		     })
//		      $.ajax({
//		     url:'../sys/code/prodata.ashx',
//		     type: 'get',
//		     dataType:'text',
//		     data: {
//		         tablename:'r_gwfsr',
//		         mtype:1,
//		         credate:yyyyMMdd,
//		         gwid:qxjid,
//		         name:psrname,
//		         uid:psruid,
//		         status:qxjid,
//		         ok:1
//		     },success(info){
//		
//		       //  window.location.href="gwlz_sp.aspx";
//		     },error:function() {
//		          console.log("登记错误");
//		
//		     }
//		
//		      })
//		
//		         alert("保存成功");
//		 }
	
	
	function gzzdlx(){
		var sadas = $("#gzzdbt").val();
		console.log(sadas);	
		
		 var myselect1=document.getElementById("gzzdlx");
	     var index1=myselect1.selectedIndex ; // selectedIndex代表的是你所选中项的index
	     myselect1.options[index1].value;
	     myselect1.options[index1].text;
	     var manager = myselect1.options[index1].value;

//   var sql="and  xlno=(select top 1 no1 from t_xl where type1='紧急程度') order by ord,ord1 ";
	
   if ($("#gzzdlx").val()!="") {//状态
         sqrstr=sqrstr+" and gzzdbt like '%"+$("#gzzdlx").val()+"%' ";}

     	$.ajax({
     	url:  '../sys/code/prodata.ashx',//插入和改修的地址是一样的
     	type: 'POST',//传输方式
     	dataType: 'json',//表示传输的是文本
     	data: {
     		mtype: 3,
     //		htmlname: 'gwlzcx',//网页名称
     		tablename: 'r_gzzdzj',//数据表
     		//mainid:5,//区分每个js 如查同一个页面占用了要另一个数字
     		//太阳peid:3,//插入或修改   1插入  2是修改  3是查询 （name1数据表不用填写）
     		wheresql:sqrstr
     	},
     	 success: function(info) {
     		$("#gzzdlx").html("");
     		$.each(info.SocutDSTable,function(idx,item){
     			$("#gzzdlx").append(
     				'<option>'+item.name1+'</option> '//
     			);
     		})
     	}

     })
}
gzzdlx();


</script>-->
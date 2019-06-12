// 请休2天以-------区属机关（事业单位）工作人员请休假审批备案表
function succFunction(data) {
   insert_spjl(data,$("#koko").val());
   alert("保存成功!");
   clearval();
   var cudate=shijian(1); 
       
   $("#cdate1").val(cudate);
   $("#cdate2").val(cudate);       
}


  function markqxjcount(flag){
	var djid="",qxjts=0,showstr="",kxts="0",kxts1="",marknxj=0;
	if (flag==1) {
		djid=$("#myuname").val(); qxjts=$("#bole").val();
		kxts=$("#kxts").val();		
		if ($("#Leave").val()=="事假"){
		    kxts1=$("#kxts1").val();
			if (kxts1!="") {
			  if (parseFloat(kxts1)>0) {
		        showstr="尚有年休假可休，必须休完年休假才能休事假！";
                marknxj=1;				
			  }	
			}
		}
			
		if ((kxts=="") || (kxts=="0")) {
		showstr="申请的休假天数超过可休假天数！";	
		} else if ((kxts!="不限")&&(parseFloat(kxts)<parseFloat(qxjts))) {
		showstr="申请的休假天数超过可休假天数！";		
		}
	}
	else {djid=$("#uname").val();qxjts=$("#ask").val();}
	
	if (showstr==""){
    var sstr=" and qjid="+djid+" and ok in (0,1,4,5) ";
				 $.ajax({	 
                    url:'../sys/code/prodata.ashx',
			        type: 'get',
			        dataType:'text',
			        data: {
		    		mtype: 13,
		    		tablename:'t_qxj',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
	               if (parseInt(data)>0) 
					{ alert("当前请假人尚有休假未销，需要申请人登录账号自行申请销假，待销假后才能重新申请请休假！");} else	
                     if ((flag==1) && (qxjts<=0.2)) {
					   alert("请假时长不能小于2小时，请申请人重新选择时间！");
					 } 				 
				 else	
					 if ((flag==2) && (qxjts>2)) {
						 alert("请假时长不能超过2小时，请申请人重新选择时间！");
					 } 				 
				 else
				     { if (flag==1) {
						 getUserSalesMes1(); } else 
					  {getUserSalesMes2(); }
					}  
                 }else{
                 }
			 },
			 error: function(e) {  
            }   
		});
	} else {
		alert(showstr);
		if (marknxj==1) {
			$("#Leave").val("年休假");
			getxl_xjlxsub($("#Leave").val(),"");				
		}
		
	}	
		
		
} 	  

function getUserSalesMes1() {  
 var mes_str="";
   if ($("#start_date").val()=="") {mes_str=mes_str+"开始日期不能为空！"+"\n";} 
   if ($("#myholiday").val()=="") {mes_str=mes_str+"结束日期不能为空!"+"\n";} 
   if ($("#Reason").val()=="") {mes_str=mes_str+"请假原因不能为空!"+"\n";} 
   if ($("#qxzhe1").val()=="") {mes_str=mes_str+"审核人不能为空！"+"\n";}   
 if (mes_str!="") {
	 alert(mes_str); 
 }   
   else {    
    $.ajax({
        url:  '../sys/code/prodata.ashx',
        type: 'POST',
        dataType: 'text',
        data: {
            mtype: 1,//类型
            tablename: 't_qxj',//表名
            qjid: $("#myuname").val(),//请假人id
            qjname: $("#myuname option:selected").text(),//document.getElementById('uname').value  
            cjgzsj: $("#working").val(),//参加工作时间
            bndxjqk: $("#Vacation_year").val(),//本年度休          
			jqksdate: $("#kssj").val(),//假期开         
			dwjzw: $("#duties").val(),//单位           
			gznx: $("#years_of").val(),//工作年限
            xjlx: $("#Leave").val(),//休假类型
            xjlx1: $("#Leave1").val(),//休假类型			
            jqjsdate: $("#jssj").val(),//假期结束日期
            csym: $("#birth").val(),//出生年月
            sqdate: $("#cdate2").val(),//申请日期
            sqxj: $("#bole").val(),//申请休假（天数）
            qjts: $("#bole").val(),
            hswfhdd: $("#mywhere").val(),//何时往返何地点
            qjyy: $("#Reason").val(),//请假原因
            remark: $("#myremark").val(),//备注
            qxjtype: $("#koko").val(),//请选择请休假情
            shid:$("#qxzhe1").val(),                 
            shname:$("#qxzhe1 option:selected").text(), //选择审核
			status:1
        },
        success: succFunction
    });
   }
}

function getUserSalesMes2() {
 var mes_str="";
   if ($("#school").val()=="") {mes_str=mes_str+"开始日期不能为空！"+"\n";} 
   if ($("#End_of_holiday").val()=="") {mes_str=mes_str+"结束日期不能为空!"+"\n";} 
   if ($("#myleave").val()=="") {mes_str=mes_str+"请假原因不能为空!"+"\n";} 
   if ($("#qxzhe").val()=="") {mes_str=mes_str+"审核人不能为空！"+"\n";}   
 if (mes_str!="") {
	 alert(mes_str); 
 }
   else {
    $.ajax({
        url: '../sys/code/prodata.ashx',
        type: 'POST',
        dataType: 'text',
        data: {
            mtype: 1,//类型
            tablename: 't_qxj',//表名
            qjid: $("#uname").val(),//请假人id
            qjname: $("#uname option:selected").text(),
            jqksdate: $("#school").val(),//假期开
            sqdate: $("#cdate1").val(),//申请日期 
            dwjzw: $("#Units").val(),//单位及职
            jqjsdate: $("#End_of_holiday").val(),//假期结束日期
            szgd: $("#team").val(),//所在股队（所
            sqxj: $("#ask").val(),//申请休假(时长)
            qjts: $("#ask").val(),            
            qjyy: $("#myleave").val(),//请假原因    
            remark: $("#Notes").val(),//备注
            qxjtype: $("#koko").val(),//请选择请休假情
            shid:$("#qxzhe").val(), 
            shname:$("#qxzhe option:selected").text(), //选择审核
			status:1
        },
        success: succFunction
    });
   }
}

/*
// 详情_copy
function succFunction3(data) {
    //console.log(date);
}

function getUserSalesMes3() {
    $.ajax({
        url: '../sys/code/prodata.ashx',
        type: 'POST',
        dataType: 'text',
        data: {
            mtype: 1,//类型
            tablename: 't_qxj',//表名
            qjid: '',//请假人id
            qjname: $("#MYunames").val(),
           // cjgzsj: $("#nana").val(),
           // bndxjqk: $("#dujia").val(),
           // jqksdate: $("#kaishi").val(),
            //dwjzw: $("#danwei").val(),
            //gznx: $("#nianx").val(),
           // xjlx: $("#xjia").val(),
           // jqjsdate: $("#riqi").val(),
           // csym: $("#yue").val(),
            //sqdate: $("#sheng").val(),
           // sqxjsz: $("#tianshu").val(),
           // hswfhdd: $("#heshi").val(),
            //qjyy: $("#yun").val(),
            //remark: $("#beizhu").val(),
            //qxjtype: $("#xzi").val(),
            //ok: $("#hao").val()
        },
        success: succFunction3
    });
}*/

function insert_spjl(qxjid,flag) {
  var spid="",spname="",qjid="",qjname="";
  if (flag==1) { 
   spid=$("#qxzhe1").val();
   spname=$("#qxzhe1 option:selected").text();
   qjid=$("#myuname").val();
   qjname=$("#myuname option:selected").text();}
  else {
   spid=$("#qxzhe").val();
   spname=$("#qxzhe option:selected").text();
   qjid=$("#uname").val();
   qjname=$("#uname option:selected").text();}   
   
    var sp_str=qjname+"申请登记，需"+spname+"审批处理";
    var sp_str1="需"+spname+"审批处理";      
        $.ajax({
            url:'../sys/code/prodata.ashx',
            type:'POST',
			async: false,
            dataType:'text',             
            data:{
                mtype: 1,
                tablename:'t_qxj_spjl',
                spname:sp_str,
                mainid:qxjid,
                fsid:qjid,
                fsname:qjname,
                jsid:spid,
                jsname:spname,
				status:1,
                ok:0
            }           
        }) 
		
        $.ajax({
            url:'../sys/code/prodata.ashx',
            type:'POST',
            dataType:'text',             
            data:{
                mtype: 1,
                tablename:'t_qxj_spjl',
                spname:sp_str1,
                mainid:qxjid,
                fsid:spid,
                fsname:spname,
                ok:0
            }           
        }) 		
	
}

function clearval() {
 var cudate=shijian(2); 
 if ($("#koko").val()==1) {
//　$("#working").val("");
　$("#Leave").val("");
  $("#Leave1").html("");
　$("#Leave1").text("");    
　$("#start_date").val("");
　$("#mywhere").val("");
//　$("#duties").val("");
//　$("#years_of").val("");
　$("#myholiday").val("");
　$("#kssj").val("");
　$("#jssj").val("");
　$("#Vacation_year").val("");
//　$("#birth").val("");
　$("#cdate2").val("");  
  $("#kxts").val("");
  $("#kxts1").val("");  
　$("#bole").val("");  
　$("#Reason").val("");
　$("#myremark").val("");
　$("#qxzhe1").val("");	
  $("#cdate2").val(cudate);
} else {
　$("#school").val("");
　$("#cdate1").val("");
//　$("#Units").val("");
　$("#End_of_holiday").val("");
//　$("#team").val("");
　$("#ask").val("");
　$("#myleave").val("");
　$("#Notes").val("");
　$("#qxzhe").val("");
  $("#cdate1").val(cudate);
}

     


	
	
}

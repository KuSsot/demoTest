<%@ Page Language="C#" AutoEventWireup="true" CodeFile="metlapt_one_day.aspx.cs" Inherits="metlapt_one_day" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="../css/hb.css" />
        <script src="../js/jquery.js"></script>
        <script src="../js/jquery-1.9.1.min.js"></script>
        <script charset="UTF-8" src="../js/koko.js"></script>
        <script src="../js/WdatePicker.js"></script>
        <title>请选择请休假情况</title>
        <style>
            /*.qq {
                display: none;
            }*/
            .friend_link .hjsd{
                width: 70px;
                height: 25px;
                background: #41AEE1;
                font-size: 14px;
                text-align: center;
                display: inline-block;
                border-radius: 5px;
                line-height: 26px;
            }
            .friend_link .hjsd a{
                color:#fff;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <div class="right friend_link">
              <div class="homell" style="border-bottom: 1px solid #DBDBDB;line-height: 27px;height: 25px;"> 
              <span style="width: 460px;margin: -3px 5px;height: 25px;">申请2小时以内---西区市场监管机构工作人员特殊情况报备表</span>
                <p style="color: red;margin: 5px 20px;padding-bottom: 0.5px;">注：报备产检需要提供产检记录簿等相关证明。</p>
              </div>     
                          
                <p class="p">
                  <!--  <select onchange="myadd()" id="koko">
                        <option value="">请选择请休假情况:</option>
                        <option value="1">
                            请休假2小时以上--------区属机关（事业单位）工作人员请休假审批备案表</option>
                        <option value="2">
                            请休假2小时以内--------西区市场监管机构工作人员特殊情况报备表</option>
                    </select>
                      <span class="mybt hjsd">
                          <a href="#" class="save" onclick="clearval();">清空</a>
                      </span>-->
                </p>
                     
                <p></p>
                
                <input type="hidden" name="uid" id="uid" value="">
                <input type="hidden" name="koko" id="koko" value="2">
                <!-- 请休假2小时以上区属机关（事业单位）工作人员请休假审批备案表 -->
                <div class="right qq" id="tom" style="margin-top: 30px;">
                    <div class="myul">
                        <ul>
                            <li>
                                <span>报备人</span>
                                <select name="" style="width: 53%;height: 30px;" class="forget101" id="uname" onchange="getxl_depname(1,'','');">
                                </select>                                
                               <!-- <input type="text" id="uname" class="forget101" readonly >-->
                                <hr>
                                <span>报备开始时间</span>
                                <input type="text" id="school" class="forget102" onchange="my_btnCount_Click()" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" >
                                <hr>
                                <span>申请时间</span>
                                <input type="text" id="cdate1" class="forget103" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" >
                                <hr>
                            </li>

                            <li>
                                <span>现任职务</span>
                                <input type="text" id="Units" class="forget107">
                                <hr>
                                 <span>报备时长(小时)</span>
                                    <!--<input type="text"  value="" class="forget106">-->
                                    <select id="ask"style="     margin-left: 10px;padding: 0 5px; width: 50%;height: 30px;border: 1px solid #BBB;border-radius: 5px;font-size: 14px;">
                                        <option>0.5</option>
                                        <option>1</option>
                                        <option>1.5</option>
                                        <option>2</option>
                                    </select>
                                <hr>
                            </li>

                            <li class="myli">
                                <span>所在股队（所）</span>
                                <input type="text" id="team" class="forget105">
                                <hr>
                               <span>报备结束时间</span>
                                   <input type="text" id="End_of_holiday" class="forget104" onchange="my_btnCount_Click()" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" >
                                <hr>
                                <!--<span style="font-size: 12px;text-align: center;font-family: Roboto;display: -webkit-box;color: red;margin-top: -3px;height: 15px;line-height: 14px;">注:请休假在2小时以上，视为请休假（半天）即为0.5天。</span>-->
                            </li>
                        </ul>
                    </div>

                    <div class="select">
                        <ul>
                            <li class="remark101">
                                <span style="top: -20px;">事由</span>
                                <textarea id="myleave" placeholder="" style="left:80px" onkeydown="checkEnter(event)" rows="2"></textarea>
                                <hr style="width: 91.4%;position: relative;left: -50px;">
                            </li>
                            <p></p>
                            <li class="remark102">
                                <span style="top: -20px;">备注</span>
                                <textarea id="Notes" placeholder="" style="left:80px" onkeydown="checkEnter(event)" rows="1"></textarea>
                                <hr style="width: 91.4%;position: relative;left: -50px;">
                                <p></p>
                            </li>
                        </ul>
                    </div>

                    <div class="verifier" style="top: -170px;">
                        <ul>
                            <li>
                                <span>选择审核人</span>
                                <select name="" style="margin-left: 50px;" id="qxzhe">
                                    <option value="" >一一请选择一一</option>
                                   <!-- <option value="">科长-李白</option>
                                    <option value="">局长-陈述</option>-->
                                </select>
                            </li>
                        </ul>
                    </div>

                    <div class="button">
                        <span class="mybt">
                            <a href="#" class="save" onclick="markqxjcount(2)">保存</a>&nbsp;&nbsp;
                           <a href="#" class="save" onclick="clearval();">清空</a>                            
                           <!-- <a href="#" class="go_back">返回</a>-->
                        </span>
                    </div>
                </div>
                <!--  区属机关（事业单位）工作人员请休假审批备案表 -->
                <!--<div class="right qq" id="jon">
                    <div class="Mylist">
                        <ul>
                            <li>
                                <span>请假人</span>
                                <select name="" style="width: 53%;height: 30px;" id="myuname" class="koko101" onchange="getxl_depname(1,'','');">
                                </select>                                 
                                <hr>
                                <span>参加工作时间</span>
                                <i class="am-icon-calendar"></i>
                                <input type="text" id="working" class="koko102" onchange="add()" onclick="WdatePicker({dateFmt:'yyyy-MM'})" >
                                <hr>
                                <span>休假类型</span>
                                <select id="Leave" name="" style="width: 53%;height: 30px;" class="koko107">
                                <option> </option>                                
                                </select>                                                                  
                                <hr>   
                                <span>假期开始日期</span>
                                <input type="text" id="start_date" class="koko104" onchange="btnCount_Click()" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})">
                                <hr>                                
                                <span>何时往返何地点</span>
                                <input type="text" id="mywhere" class="koko1012">
                                <hr>                                   
                            </li>

                            <li>
                                <span>单位及职务</span>
                                <input type="hidden" id="team2">
                                <input type="text" id="duties" class="koko105">
                                <hr>
                                <span>工作年限</span>
                                <input type="text" id="years_of" value="" class="koko106">
                                <hr>
                                <span>休假名称</span>                                
                                <select id="Leave1" name="" style="width: 53%;height: 30px;" class="koko1013">
                                <option> </option>
                                </select>    
                                <hr>                             
                                <span>假期结束日期</span>
                                <input type="text" id="myholiday" class="koko108" onchange="btnCount_Click()" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})">
                                <hr>
                                <span>本年度休假情况</span>
                                <input type="text" id="Vacation_year" class="koko103">
                                <hr>                                   
                            </li>

                            <li>
                                <span>出生年月</span>
                                <input type="text" id="birth" class="koko109" onclick="WdatePicker({dateFmt:'yyyy-MM'})" >
                                <hr>
                                <span>申请日期</span>
                                <input type="text" id="cdate2" class="koko1010" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" >
                                <hr>
                                 <span>可休天数</span>  
                                  <input type="text" id="kxts" value="" class="koko106" readonly >
                                  <input type="hidden" id="kxts1" value="" class="koko106" readonly >                                  
                                 <hr>                                  
                                <span>申请休假(天数)</span>
                                <input type="text" id="bole" class="koko1011">
                                <hr>  
                                <span style="font-size: 13px;text-align:left;font-family: Roboto;display: -webkit-box;color: red;margin-top: -4px;height: 15px;line-height: 14px;width: 330px;">注:请休假在2小时以上，视为请休假（半天）即为0.5天。</span>								
                            </li>

                        </ul>
                    </div>

                    <div class="myselect">
                        <ul>
                            <li class="Remark101">
                                <span>请假原因</span>
                                <textarea placeholder="" id="Reason" rows="5"></textarea>
                                <hr style="width: 91.1%;position: relative;left: -83px;">
                            </li>

                            <li class="Remark102">
                                <span>备注</span>
                                <textarea placeholder="" id="myremark" rows="5"></textarea>
                                <hr style="width: 91.1%;position: relative;left: -83px;">
                            </li>
                        </ul>
                    </div>

                    <div class="verifier">
                        <ul>
                            <li style="position: relative;left: -20px;width: 100%;height: 35px;list-style: none;font-size: 14px;top: 55px;">
                                <span>选择审核人</span>
                                <select name="" id="qxzhe1">
                                    <option value="" id="xzshr">一一请选择一一</option>
                                </select>
                            </li>
                        </ul>
                    </div>

                    <div class="button">
                        <span class="mybt">
                            <a href="#" class="save" onclick="markqxjcount(1)">
                                保存
                            </a>&nbsp;&nbsp;
                            <a href="#" class="go_back">返回</a>
                        </span>
                    </div>

                </div>-->

            </div>
            <!--请休假2小时以上区属机关（事业单位）工作人员请休假审批备案表  -->
            <script>
               /* function myadd() {
                    if ($("#koko").val() == "2") {
                        document.getElementById('tom').style.display = 'block';
                    } else {
                        document.getElementById('tom').style.display = 'none';
                    }
                    if ($("#koko").val() == "1") {
                        document.getElementById('jon').style.display = 'block';
                    } else {
                        document.getElementById('jon').style.display = 'none';
                    }
                }*/
            </script>
        </div>

    </body>
	
    <script>

 var Url="../sys/code/prodata.ashx";
 var uid="<%=uid %>";
 var uname="<%=uname %>";

  $("#uid").val(uid);

 function checkEnter(e) {
      var et = e || window.event;
      var keycode = et.charCode || et.keyCode;
      if (keycode == 13) {
        if (window.event) {
          window.event.returnValue = false;
        } else {
          e.preventDefault(); //for firefox
        }
      }
    }
    function diffyear(date1,date2)
    {
        var d1 = new Date(date1);
        var d2 = new Date(date2);
        var m = d2.getFullYear() - d1.getFullYear() + (d1.getMonth()*100+d1.getDate()> d2.getMonth()*100+d2.getDate() ? -1 : 0);
        return m;   
    }
    
        /*function add() {
            var time = $("#working").val();//$dp.$('working').value;//获取值	
            if (time!="") {
            //          		var oop=new Date();
            var ooo = shijian(0);

           var wy=diffyear(time,ooo); 
		   if (wy>0){
           document.getElementById("years_of").value =wy;}
		    else {document.getElementById("years_of").value ="0";  }
           } else {
           document.getElementById("years_of").value ="0";           
           }
        

        }
          
        function myadd() {
            if ($("#koko").val() == "2") {
                document.getElementById('tom').style.display = 'block';
            } else {
                document.getElementById('tom').style.display = 'none';
            }
            if ($("#koko").val() == "1") {
                document.getElementById('jon').style.display = 'block';
            } else {
                document.getElementById('jon').style.display = 'none';
            }
        }*/
        function shijian(flag) {
            var date = new Date();
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            if (month.toString().length==1) {month="0"+month}            
            var day = date.getDate();
            if (day.toString().length==1) {day="0"+day}
            var hours = date.getHours();
            var fen = date.getMinutes();
            var miao = date.getSeconds();
            if (flag==0) {
            var time = year + "-" + month + "-" + day;
            } else if (flag==1) {
            var time = year + "-" + month + "-" + day + " " + hours + ":" + fen + ":" + miao;}
            else if (flag==2) {
            var time = year + "-" + month + "-" + day + " " + hours + ":" + fen;}            
            return time;
        }
  var cudate=shijian(2); 
     
  $("#cdate1").val(cudate);
 // $("#cdate2").val(cudate); 
  getxl_qjname();        
  getxl_clname(); 
  //getxl_xjlx(1,"");
  
        function GetDateDiff(startTime, endTime, diffType) {
            //将xxxx-xx-xx的时间格式，转换为 xxxx/xx/xx的格式 
            startTime = startTime.replace(/\-/g, "/");
            endTime = endTime.replace(/\-/g, "/");
            //将计算间隔类性字符转换为小写
            diffType = diffType.toLowerCase();
            var sTime = new Date(startTime); //开始时间
            var eTime = new Date(endTime); //结束时间
            //作为除数的数字
            var timeType = 1;
            switch (diffType) {
                case "second":
                    timeType = 1000;
                    break;
                case "minute":
                    timeType = 1000 * 60;
                    break;
                case "hour":
                    timeType = 1000 * 3600;
                    break;
                case "day":
                    timeType = 1000 * 3600 * 24;
                    break;
                default:
                    break;
            }
            return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(timeType));
        }

        function btnCount_Click() {
            s1 = $("#start_date").val();//$dp.$('start_date').value;
            s2 = $("#myholiday").val();//$dp.$('myholiday').value;

            if (s1 != "" && s2 != "") {
                var llo = GetDateDiff(s1, s2, "day");
                var tlo = GetDateDiff(s1, s2, "minute"); 
                tlo=tlo/60; 
              // console.log(s1+' : '+s2+' : '+llo+' : '+tlo);				
                if (llo > 0) {
                  tlo=tlo-(llo*24);
                }                    
                 if (tlo>3.5) {
                   document.getElementById("bole").value=llo+1;} 
                  else if (tlo>2) {
                   document.getElementById("bole").value =llo+0.5; } 
                   else if (tlo>=0) {
                   document.getElementById("bole").value =llo+0.1*tlo; } 
                else {
                    document.getElementById("bole").value = "0";
                }
                            
              /*  var llo = GetDateDiff(s1, s2, "day");
                if (llo > 0) {
                    document.getElementById("bole").value = llo;
                } else {
                    document.getElementById("bole").value = "";
                }*/
            }
        }

        function my_btnCount_Click() {
            s1 = $("#school").val();///$dp.$('school').value;
            s2 = $("#End_of_holiday").val();//$dp.$('End_of_holiday').value;       

            if (s1 != "" && s2 != "") {
                var llo = GetDateDiff(s1, s2, "day");
                var tlo = GetDateDiff(s1, s2, "minute"); 
                tlo=tlo/60;                            
                if (llo > 0) {
                  tlo=tlo-(llo*24);
                }                    
                 if (tlo>3.5) {
                   document.getElementById("ask").value=((llo+1)*10).toFixed(1);} 
                 // else if (tlo>2) {
                 //  document.getElementById("ask").value =((llo+0.5)*10).toFixed(1); } 
                   else if (tlo>=0) {
                   document.getElementById("ask").value =((llo+0.1*tlo)*10).toFixed(1); } 
                else {
                    document.getElementById("ask").value = "0";
                }
            }
        }


        function GetDateDiff(startTime, endTime, diffType) {
            //将xxxx-xx-xx的时间格式，转换为 xxxx/xx/xx的格式 
            startTime = startTime.replace(/\-/g, "/");
            endTime = endTime.replace(/\-/g, "/");
            //将计算间隔类性字符转换为小写
            diffType = diffType.toLowerCase();
            var sTime = new Date(startTime); //开始时间
            var eTime = new Date(endTime); //结束时间
            //作为除数的数字
            var timeType = 1;
            switch (diffType) {
                case "second":
                    timeType = 1000;
                    break;
                case "minute":
                    timeType = 1000 * 60;
                    break;
                case "hour":
                    timeType = 1000 * 3600;
                    break;
                case "day":
                    timeType = 1000 * 3600 * 24;
                    break;
                // case "year":
                //     timeType = 1000 * 3600 * 24 ;
                //     break;
                default:
                    break;
            }
            return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(timeType));
        }

        //计算天数差的函数，通用  
        function DateDiff(sDate1, sDate2) {    //sDate1和sDate2是2002-12-18格式  
            var aDate, oDate1, oDate2, iDays
            aDate = sDate1.split("-")
            oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0])    //转换为12-18-2002格式  
            aDate = sDate2.split("-")
            oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0])
            iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 / 24)    //把相差的毫秒数转换为天数  
            return iDays
        }

function getxl_qjname(){
 var jf1="",bu1="";
    var sstr=" and pcok=1 order by true_name ";
				 $.ajax({	 
                    url:Url,
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'appusertable',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	
                         if (item.id==uid) {
                         $("#uname").append("<option value='" + item.id + "'  selected='selected' >" + item.true_name + "</option>");                    
                       	 jf1=item.jfname;
                       	 bu1=item.bu;
                       	  $("#Units").val(item.jfname);                                               
                          } else {
                         $("#uname").append("<option value='" + item.id + "'>" + item.true_name + "</option>");
                          }                                               
				        }     				        
                     });
                    getxl_depname(0,bu1,jf1); 
                  //  add();                      
                 }else{
                 }
			 },
			 error: function(e) {  
            }   
		});
} 		

	
 function getxl_clname(){
 var jf1="",bu1="";
    var sstr=" and pcok=1 and (depart_no='0105' or jf=7) order by jf,ord ";
				 $.ajax({	 
                    url:Url,
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'appusertable',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	
                         $("#qxzhe").append("<option value='" + item.id + "'>" + item.true_name + "</option>"); 					  
                         /*if (item.id==uid) {
                         $("#uname").append("<option value='" + item.id + "'  selected='selected' >" + item.true_name + "</option>");                      
                       	 jf1=item.jfname;
                       	 bu1=item.bu; 
                       	  $("#Units").val(item.jfname);                                               
                          } else {
                         $("#uname").append("<option value='" + item.id + "'>" + item.true_name + "</option>");
                          }             */                                  
				        }     				        
                     });
                    getxl_depname(0,bu1,jf1); 
                  //  add();                      
                 }else{
                 }
			 },
			 error: function(e) {  
            }   
		});
} 		


function getxl_depname(flag,bu1,jf1){
var namestr="";
if ($("#koko").val()=="1"){
 namestr=$("#myuname").val();
} else  if ($("#koko").val()=="2"){
 namestr=$("#uname").val();
} else {
 namestr=uid;
}
   if (namestr!="") {
      var sstr=" and did=(select depart_no from appusertable where id="+namestr+") order by did ";
				 $.ajax({	 
                    url:Url,
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'t_department',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	                       	 
                    if ($("#koko").val()=="1"){                       	  
                       	  $("#team2").val(item.dname);                    	  
                         } else if ($("#koko").val()=="2") {
                          $("#team").val(item.dname);
                         } else {
                          $("#team2").val(item.dname);
                          $("#team").val(item.dname);                          
                         }                                          
				        }   
                     });
                     
                   if (flag==1) {
                    getxl_zwname();
                    } else {
                     if (bu1==$("#team2").val()) {
                        $("#duties").val(bu1+' '+jf1+'');
                       } else {
                        $("#duties").val(bu1+' '+$("#team2").val()+' '+jf1+'');
                       }                    
                   } 
                 }else{
	              //   $("#team").val("");  
	              //   $("#team2").val("");   	                                
                 }
			 },
			 error: function(e) {  
			//  $("#team").val("");  
	        //  $("#team2").val(""); 			  
            }   
		});
	} else {
	 // $("#team").val("");
	//  $("#team2").val(""); 		  
	}
} 		


function getxl_zwname(){
var namestr="";
if ($("#koko").val()=="1"){
 namestr=$("#myuname").val();
} else if ($("#koko").val()=="2"){
 namestr=$("#uname").val();
} else {
namestr=uid;
}
   if (namestr!="") {
      var sstr=" and id="+namestr+" ";
				 $.ajax({	 
                    url:Url,
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'appusertable',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	                       
                    if ($("#koko").val()=="1"){
                      $("#birth").val(item.birthym);                      	     
                      $("#working").val(item.jobdate.split(" ")[0]);                      
                      if (item.bu==$("#team2").val()) {
                        $("#duties").val(item.bu+' '+item.jfname+'');
                      } else {                       	               
                        $("#duties").val(item.bu+' '+$("#team2").val()+' '+item.jfname+'');    
                       }  
                        
                    } else if ($("#koko").val()=="2") {
                       	  $("#Units").val(item.jfname); 
                      } else {
                       	  $("#Units").val(item.jfname);                       
                          if (item.bu==$("#team2").val()) {
                          $("#duties").val(item.bu+' '+item.jfname+'');
                          } else {                       	               
                         $("#duties").val(item.bu+' '+$("#team2").val()+' '+item.jfname+'');    
                         }                       
                      }
                                                               
				        }   
                     });
                    // add();
                 }else{
	                // $("#Units").val("");                 
                 }
			 },
			 error: function(e) {  
	             // $("#Units").val("");   
            }   
		});
	} else {
	     // $("#Units").val("");   
	}
} 	

 /* 
 function getxl_xjlx(flag,value){
    var sstr=" and xlno=(select top 1 no1 from t_xl where type1='休假类型') order by ord1,name1 ";
				 $.ajax({	 
                    url:'../sys/code/prodata.ashx',
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'t_xlmx',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	
				          $("#Leave").append("<option>" + item.name1 + "</option>");			        
				        }   
                     });
                     if (flag==1){
                     getxl_xjlxsub($("#Leave").val(),"");}
                     if (value!=""){$("#Leave").prop("value",value);}
                     
                 }else{
                 }
			 },
			 error: function(e) {  
            }   
		});
} 



 function getxl_xjlxsub(pno,value){
    $("#Leave1").val(value);
    $("#Leave1").html(""); 
	$("#kxts").val("");       
    var sstr=" and exists (select null from t_xlmx m,t_xl x  where type1='休假类型' and no1=m.xlno and no1=t_xlsubmx.xlno and name1='"+pno+"' and t_xlsubmx.mid=m.id ) ";
    
    if (pno=="年休假") {
    var ywork=$("#years_of").val();  
     sstr=sstr+" and (("+ywork+"=0 and name2='不满1年') or ("+ywork+">=1 and "+ywork+"<10 and name2='满1年不满10年') or ("+ywork+">=10 and "+ywork+"<20 and name2='满10年不满20年') or ("+ywork+">=20 and name2='满20年')) ";
    }
    sstr=sstr+" order by ord,name2 ";
				 $.ajax({	 
                    url:'../sys/code/prodata.ashx',
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'t_xlsubmx',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	
				          $("#Leave1").append("<option data-tnum="+item.tnum+">" + item.name2 + "</option>");	
				          var ynum=0;
				          $("#kxts1").val(""); 
                          if ($("#Leave").val()=="事假")
                           {getnxj_qjts();} 				          
                          if ($("#Leave").val()=="年休假")
                           {ynum=get_yxjts(item.tnum);} else				          	
				          if (item.tnum=="-1") {$("#kxts").val("不限");} else {
				          $("#kxts").val(item.tnum);}						          	        
				        }   
                     });
                     if (value!=""){$("#Leave1").prop("value",value);}                         
                 }else{
                 }
			 },
			 error: function(e) {  
            }   
		});
   }     
       
      
  $("#Leave").change(function(){
    getxl_xjlxsub($("#Leave").val(),"");
    //$("#Leave").val() $("#Leave option:selected").text()
  });
  
    $("#Leave1").change(function(){
    var tnum=$("#Leave1 option:selected").attr("data-tnum");
		if (tnum=="-1") {$("#kxts").val("不限");} else {
		 $("#kxts").val(tnum);}		     
    //$("#Leave").val() $("#Leave option:selected").text()
  });*/

/*
    function get_yxjts(tnum)
    {
     var namestr=$("#myuname").val();
     var sqrstr=" and qxjtype=1 and qjid="+namestr+" and xjlx='年休假' and year(jqksdate)=year(getdate()) ";
     //var count=0;
            $.ajax({
                url: '../sys/code/prodata.ashx',
                type: 'get',
                dataType: 'json',
                data: {
                    mtype: 32,
                    tablename:'t_qxj',
                    fields:'isnull(sum(sqxj+0),0) snum',
                    wheresql:sqrstr
                },
            })
            .done(function(response) {
                     $.each(response.SocutDSTable,function(idx,item){
                        var count=item.snum;
                        $("#kxts").val(tnum-count);                        
                     });
                 })
            .fail(function() {
                console.log("error !");
            })
 
    }
    
    
    
 function getnxj_qjts(){
	$("#kxts1").val("");       
    var sstr=" and exists (select null from t_xlmx m,t_xl x  where type1='休假类型' and no1=m.xlno and no1=t_xlsubmx.xlno and name1='年休假' and t_xlsubmx.mid=m.id ) ";    
    var ywork=$("#years_of").val();  
     sstr=sstr+" and (("+ywork+"=0 and name2='不满1年') or ("+ywork+">=1 and "+ywork+"<10 and name2='满1年不满10年') or ("+ywork+">=10 and "+ywork+"<20 and name2='满10年不满20年') or ("+ywork+">=20 and name2='满20年')) ";    
    sstr=sstr+" order by ord,name2 ";
				 $.ajax({	 
                    url:'../sys/code/prodata.ashx',
			        type: 'get',
			        dataType:'json',
			        data: {
		    		mtype: 3,
		    		tablename:'t_xlsubmx',
		    		wheresql:sstr
	    		    },
	    	    success: function (data) {
			 	if(data!="no"){
				     $.each(data.SocutDSTable,function(idx,item){ 
				       if(idx>=0){	
				          var ynum=0;
                           ynum=getnxj_xjjts(item.tnum);			          	        
				        }   
                     });                      
                 }else{
                 }
			 },
			 error: function(e) {  
            }   
		});
   }
       
     function getnxj_xjjts(tnum)
    {
     var namestr=$("#myuname").val();
     var sqrstr=" and qxjtype=1 and qjid="+namestr+" and xjlx='年休假' and year(jqksdate)=year(getdate()) ";
     //var count=0;
            $.ajax({
                url: '../sys/code/prodata.ashx',
                type: 'get',
                dataType: 'json',
                data: {
                    mtype: 32,
                    tablename:'t_qxj',
                    fields:'isnull(sum(sqxj+0),0) snum',
                    wheresql:sqrstr
                },
            })
            .done(function(response) {
                     $.each(response.SocutDSTable,function(idx,item){
                        var count=item.snum;
                        $("#kxts1").val(tnum-count);                        
                     });
                 })
            .fail(function() {
                console.log("error !");
            })
 
    }
    */
  
    </script>

    </html>
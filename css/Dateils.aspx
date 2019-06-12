<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dateils.aspx.cs" Inherits="Dateils" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="css/style_towxx.css" />
<script src="js/jquery.js"></script>
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/koko.js"></script>
<script src="js/WdatePicker.js"></script>
<title>Document</title>
</head>

<body>
<!-- 请选择请休假情况 -->
<div class="main" style="margin: 15px"> 
        <!-- 列表  文字 hr -->
        <div class="main_top">
                <div class="main_top_l">
                        <div class="main_c">
                                <div class="title_left"><span>请假人</span></div>
                                <input type="text" id="qjname" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>参加工作时间</span></div>
                                 <input type="text" id="cjgzsj" readonly="readonly" class="forget102" oonclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>本年度休假情况</span></div>
                                <input type="text" id="bndxjqk" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>假期开始日期</span></div>
                                 <input type="text" id="jqksdate" readonly="readonly" class="forget102" oonclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <div class="title_right"></div>
                        </div>
                </div>
                <div class="main_top_l">
                        <div class="main_c">
                                <div class="title_left"><span>单位及职务</span></div>
                                <input type="text" id="dwjzw" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>工作年限</span></div>
                                 <input type="text" id="gznx" readonly="readonly" class="forget102" oonclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>休假类型</span></div>
                                <input type="text" id="xjlx" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>假期结束日期</span></div>
                                 <input type="text" id="jqjsdate"  readonly="readonly"class="forget102" oonclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <div class="title_right"></div>
                        </div>
                </div>
                <div class="main_top_l">
                        <div class="main_c">
                                <div class="title_left"><span>出生年月</span></div>
                                 <input type="text" id="csym" readonly="readonly" class="forget102" oonclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>申请日期</span></div>
                                 <input type="text" id="sqdate" readonly="readonly" class="forget102" oonclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>申请休假（天数）</span></div>
                                <input type="text" id="sqxj" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                        <div class="main_c">
                                <div class="title_left"><span>何时往返何地址</span></div>
                                <input type="text" id="hswfhdd" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                </div>
        </div>
        <!-- textarea -->
        <div class="text"> <span>请假原因</span>
                <textarea readonly name="" id="qjyy" cols="" rows="5"></textarea>
                <hr>
        </div>
        <div class="beizu"> <span>备注</span>
                <textarea readonly name="" id="remark" cols="" rows="5"></textarea>
                <hr>
        </div>
        
        <!-- 请选择 -->
        <div class="qxz"> <span>选择审核人</span>
                <select name="" id="shname">
                        <option value="" >一一请选择一一</option>
                        <option value="">科长-李白</option>
                       
                </select>
                <hr>
        </div>
         <div class="main_c" >
                                <div class="title_left" style="width:123px;"><span>状态</span></div>
                                <input type="text" id="ok" style="width:20%" readonly="readonly">
                                <div class="title_right"></div>
                        </div>
                        <div class="text" style="display:none;"> <span>拒绝原因</span>
                <textarea readonly name="" id="Textarea2" cols="" rows="5"></textarea>
                <hr>
        </div>
        <div class="anbt">
                <div class="button"> <span class="mybt"> <a href="#" class="save"  style="background-color: rgba(255, 152, 0, 1);" onclick="getUserSalesMes2()">撤销</a>&nbsp;&nbsp; <a href="#" onclick="javascript:history.back(-1);" class="go_back" style="background-color:#E51C23; color:White;">返回</a> </span> </div>
        </div>
        
         <div class="box_a" id="box_agree">
                <div class="box1">
                        <div class="box1_in">
                                <div class="box1_int">
                                        <center>
                                                <span class="box1_intp">同意意见</span> <a href="javascript:;" onclick="jQuery('#box_agree').hide()" class="close"><img src="images/icon6.jpg" height="20px;" width="20px;"></a>
                                        </center>
                                </div>
                                <div class="box1_inc">
                                        <textarea cols="30" rows="30" placeholder="领导意见"></textarea>
                                </div>
                                <span class="main_agree box_btn">发送下一环节</span><span class="main_noagree">办结</span> </div>
                </div>
        </div>
        
</div>
</body>
</html>

<script>
var uid="<%=uid %>";
var uname="<%=uname %>";
var qxjid="<%=idstr %>";

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
                }
                
                
             function  getUserSalesMes4(){
        $.ajax({
            url: '../sys/code/prodata.ashx',
            type: 'get',
            dataType: 'json',
            data: {
               mtype:3,
               tablename:'t_qxj',
               wheresql: 'and id='+qxjid,
            },
            
        })
        .done(function(data) {
            $.each(data.SocutDSTable,function(idx,item){
                    var ok1='';
            
                    if(item.ok ==0){
                        ok1="审核中"; 
                    }else if(item.ok ==1){
                       ok1="同意"; 
                    }else{
                       ok1="不同意"; 
                    }  
                     console.log(data);
                    $("#qjname").val(item.qjname);//请假人
                    $("#cjgzsj").val(item.cjgzsj);//参加工作时间
                    $("#bndxjqk").val(item.bndxjqk);//本年度休假情况
                    $("#jqksdate").val(item.jqksdate);//假期开始日期
                    $("#dwjzw").val(item.dwjzw);//单位及职务
                    $("#gznx").val(item.gznx);//工作年限
                    $("#xjlx").val(item.xjlx);//休假类型
                    $("#jqjsdate").val(item.jqjsdate);//假期结束日期
                    $("#csym").val(item.csym);//出生年月
                    $("#sqdate").val(item.sqdate);//申请日期
                    $("#sqxj").val(item.sqxj);//申请休假(时长/天数)
                    $("#hswfhdd").val(item.hswfhdd);//何时往返何地点
                    $("#qjyy").val(item.qjyy);//请假原因
                    $("#remark").val(item.remark);//备注
                    $("#shname").val(item.shname);//审核人
                    $("#ok").val(ok1);//状态


                    
                    
            });        
                    });
                    
                  

}

getUserSalesMes4();
           
</script>
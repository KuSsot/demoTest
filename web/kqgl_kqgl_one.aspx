<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kqgl_kqgl_one.aspx.cs" Inherits="kqgl_kqgl_one" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>考勤管理-考勤管理</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--js-->
    <script src="alretDemo/js/ba_js/jquery-1.8.0.min.js"></script>
   <script src="alretDemo/js/LCalendar.js" type="text/javascript" charset="utf-8"></script>
    <script src="alretDemo/js/kqdj_ajax.js" type="text/javascript" charset="utf-8"></script>
   <link rel="stylesheet" type="text/css" href="alretDemo/css/LCalendar.css" />


    <style>
        *{
            padding: 0;
            margin: 0;
        }
        .my_str{
            width: 100%;
            height: 100%;
        }
        .my_str .my_left_str{
            width: 100%;
            height: 46px;
            background: rgba(40, 116, 254, 1);
        }
        .my_str .my_left_str .my_centers {
            width: 100%;
            height: 45px;
            text-align: center;
        }
        .my_str .my_left_str .my_centers a{
            height: 45px;
            color: #fff;
            font-size: 18px;
            line-height: 2.5;
            text-align: center;
            text-decoration: none;
        }
        .my_str .blue_h{
            width: 100%;
            height: 10px;
        }
        .my_str .add_name{
            width: 147px;
            height: 40px;
            margin: auto;
            border-radius: 10px;
            text-align: center;
            background: #F97255;
        }
        .my_str .add_name a{
            line-height: 3;
            color: #fff;
            font-size: 14px;
            text-decoration: none;
        }
        .my_str .mg_jon{
            width: 100%;
            height: 35px;
            border-bottom: 1px solid #EEEDED;
        }
        .head_w {
            width: 100%;
            height: 80px;
            margin: auto;
        }
        .my_Left_l ul li{
            height: 80px;
            width: 32.7%;
            float: left;
            text-align: center;
            list-style: none;
        }
        .my_Left_l ul li a{
            font-size: 14px;
            text-decoration: none;
        }
        .my_Left_l ul li span{
            height: 80px;
            border: 1px solid #BBBBBB;
            display: inline-block;
        }
        .my_Left_l ul li a{
            width: 110px;
            height: 40px;
            color: #fff;
            display: inline-block;
            border-radius: 10px;
            text-align: center;
            line-height: 3;
            margin-top: 15px;
            font-size: 14px;
            /*font-size: 0.51rem;*/
        }
        .my_left_str img{
            float:left;
        }
        /*弹出层*/
        .pop {
            display: none;
            width: 170px;
            height: 150px;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            padding: 25px;
            z-index: 130;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 3px 18px rgba(100, 0, 0, .5);
        }
        .pop-top {
            height: 20px;
            width: 100%;
            margin-top: -15px;
            margin-left: 0;
        }
        .pop-top h2 {
            float:left;
            display: block;
        }
        .pop-top span {
            float:right;
            cursor:pointer;
            font-weight:bold;
            display: block;
        }
/*
        .pop-content {
            height:380px;
        }
*/
        .pop-content-right {
            padding-left: 18px;
            font-size: 16px;
            line-height: 35px;
            margin-top: 30px;
        }
        .bgPop {
            display:none;
            position:absolute;
            z-index:129;
            left:0;
            top:0;
            width:100%;
            height:100%;
            background:rgba(0,0,0,.2);
        }
        .pop-content-right select{
            width: 130px;
            height: 35px;
            color: #fff;
            border: none;
            font-size: 14px;
            background: #5677FC;
            margin: 0 0 20px;
        }
        .pop-content-right .price{
            width: 130px;
            height: 33px;
            color: #fff;
            border: none;
            font-size: 14px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            background: #5677FC;
        }
        .inpda{
            left: 126px;
            width: 128px;
            height: 30px;
            border-radius: 2px;
            background-color: rgba(86, 119, 252, 1);
            text-align: center;
            box-shadow: 0px 4px 4px 0px rgba(193, 193, 193, 0.25);
            color: #fff;

        }
       .inpda::-webkit-input-placeholder {

        color: #fff;
        }
    </style>
</head>
<body>
<!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <div class="my_str">
        <div class="my_left_str">
            <div class="my_centers">
                <a href="javascript:history.back()">
                     <img src="./image/my_left.png" alt="">
                </a>
                <a href="#">考勤管理</a></div>
        </div>

        <div class="blue_h"></div>
        <div class="add_name">
            <a href="javascript:void(0)" class="click_pop">考勤登记</a>
        </div>

        <div class="mg_jon"></div>
        <div class="head_w">
            <div class="my_Left_l">
                <ul>
                    <li><a href="kqlj.aspx" style="background: rgba(5, 203, 145, 1);">考勤累计</a></li>
                    <li>
                        <span class="T_uanme"></span>
                    </li>
                    <li><a href="kqcx_kqcx.aspx" style="background: rgb(255,152,0);">考勤查询</a></li>
                </ul>
            </div>
        </div>
    </div>
<!--遮罩层-->
<div class="bgPop"></div>
<!--弹出框-->
<div class="pop">
    <div class="pop-top">
        <!--<h2>课程介绍</h2>-->
        <span class="pop-close">Ｘ</span>
    </div>
    <div class="pop-content">
        <div class="pop-content-right">
      		<input type="text" name="start_date" class="inpda" id="start_date" placeholder="选择开始日期" readonly="readonly" />
            <a href="#" class="price" onclick="xjdate()">新建考勤登记表</a>
            <!---->
        </div>
    </div>
</div>

</body>

</html>
<script>
    $(document).ready(function () {
        $('.pop-close').click(function () {
            $('.bgPop,.pop').hide();
        });
        $('.click_pop').click(function () {
            $('.bgPop,.pop').show();
        });
    })
</script>
<script>
 var uid = "<%=uid %>";
var uname = "<%=uname %>";
var calendar = new LCalendar();
		calendar.init({
			'trigger': '#start_date', //标签id
			'type': 'ym', //date 调出日期选择 datetime 调出日期时间选择 time 调出时间选择 ym 调出年月选择,
			'minDate': (new Date().getFullYear()-20) + '-' + 1 + '-' + 1, //最小日期
			'maxDate': (new Date().getFullYear()) + '-' + 12 + '-' + 31 //最大日期
		});
function xjdate() {
var myDate = new Date();
var a=myDate.getFullYear(); //获取完整的年份(4位,1970-????)
var b=myDate.getMonth(); //获取当前月份(0-11,0代表1月)         // 所以获取当前月份是myDate.getMonth()+1;
var c=myDate.getDate(); //获取当前日(1-31)
var d=myDate.getHours(); //获取当前小时数(0-23)
var e=myDate.getMinutes(); //获取当前分钟数(0-59)
var f=myDate.getSeconds(); //获取当前秒数(0-59)
var date=a+'/'+b+'/'+c+' '+d+':'+e+':'+f;
var new_date=$("#start_date").val();
var bt=a+'年'+b+'月考勤登记表';
if(new_date!=""){



     $.ajax({
                                  url: '../sys/code/prodata.ashx',
                                  type: 'get',
                                  dataType: 'json',
                                  data: {
                                      tablename: 'r_kqcx',
                                      mtype: 3,
                                      wheresql:"and date1 = '"+new_date+"'",
                                      },success(info){
                                          $.each(info.SocutDSTable,function(idx,item) {
                                              if(info.SocutDSTable.result!=0){
                                                  // alert("已存在表格");
                                                  console.log("已存在表格");
                                              }else {
                                                      $.ajax({
                                                          url: '../sys/code/prodata.ashx',
                                                          type: 'get',
                                                          dataType: 'json',
                                                          data: {
                                                              tablename: 'r_kqcx',
                                                              mtype: 1,
                                                              credate:date,
                                                              uid:uid,
                                                              name:uname,
                                                              bt:bt,
                                                              date1:new_date,
                                                              },success(info){
                                                              var kqid=info;
                                                                $.ajax({
                                                                        url: '../sys/code/prodata.ashx',
                                                                        type: 'get',
                                                                        dataType: 'json',
                                                                        data: {
                                                                            tablename: 'appusertable',
                                                                            mtype: 3,
                                                                            wheresql:"",
                                                                        },success(info){
                                                                            $.each(info.SocutDSTable,function(idx,item) {
                                                                                var nameid= item.id
                                                                                var turename=item.true_name;
                                                                                console.log(new_date);
                                                                                 kqdj_ajax(date,nameid,new_date,turename,kqid);


                                                                            });

                                                                        }
                                                                    })
                                                              // console.log(new_date.slice(5));





                                                              }


                                                      })

                                              }
                                          })
                                      }


                              })
    }

}

</script>
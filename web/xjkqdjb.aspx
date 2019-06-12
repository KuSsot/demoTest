<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xjkqdjb.aspx.cs" Inherits="xjkqdjb" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>考勤管理-考勤登记</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="alretDemo/js/ba_js/jquery-1.8.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <link rel="stylesheet" href="../css/pagination.css">
    <script charset="UTF-8" src="../js/jquery.pagination.js"></script>

    <!--js-->
    <!-- css-->
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        /*nav*/
        .my_strdsa{
            width: 100%;
            height: 100%;
        }
        .my_strdsa .my_left_strsd{
            width: 100%;
            height: 46px;
            background: rgba(40, 116, 254, 1);
        }
        .my_strdsa .my_left_strsd .amy_centers {
            width: 100%;
            height: 45px;
            text-align: center;
        }
        .my_strdsa .my_left_strsd .amy_centers a{
            height: 45px;
            color: #fff;
            font-size: 18px;
            line-height: 2.5;
            text-align: center;
            text-decoration: none;
        }
        .my_left_strsd img{
            float:left;
        }
        /*==================nav==================*/
        .nz_wad{
            width: 100%;
            height:10px;
        }
        .add_name input{
            width: 45%;
            height: 30px;
            padding: 0 5px;
            border-radius: 5px;
            font-size: 14px;
            border: 1px solid rgba(187, 187, 187, 1);
        }
        .add_name a{
            width: 20%;
            height: 30px;
            color: #fff;
            font-size: 14px;
            line-height: 2.1;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            background: rgba(255, 152, 0, 1);
        }
        .my_red a{
            width: 130px;
            height: 30px;
            color: #fff;
            font-size: 14px;
            line-height: 2;
            border-radius: 5px;
            text-align: center;
            display: inline-block;
            text-decoration: none;
        }
        .my_red{
            text-align: center;
        }
        .list_dian{
            width: 100%;
            height: 5px;
        }
        .st_lsit{
            width: 100%;
            height: 54px;
        }
        .st_lsit{
            color: red;
            font-size: 12px;
            background: #EDECEC;
        }
        .st_lsit span{

            font-size: 12px;
        }
        .Tda{
            width: 100%;
            text-align: center;
        }
        .Tda span{
            font-size: 14px;
            font-weight: bold;
        }
        .two_t{
            width: 100%;
            height: 60px;
            border-top: 2px solid #F6F5F5;
            border-bottom: 2px solid #F6F5F5;
        }
        .two_t ul li{
            width: 13.6%;
            float: left;
            color: rgba(136, 136, 136, 1);
            font-size: 14px;
            line-height: 1.7;
            list-style: none;
            text-align: center;
            margin: 0 10px;
        }
        .two_t ul li .my_had{
            width: 22px;
            height: 22px;
            text-align: center;
            border-radius: 50%;
            display: inline-block;
        }
        .two_t ul li .my_had:hover{
            width: 22px;
            height: 22px;
            color: #fff;
            text-align: center;
            background: #2C75FC;
        }
        .my_datale ul li{
            width: 100%;
            height: 30px;
            font-size: 14px;
            list-style: none;
            line-height: 2.2;
            text-align: center;
            border-bottom: 2px solid #F6F5F5;
        }
        .my_datale ul{
        }
        .my_datale ul li select{
            width: 65px;
            height: 25px;
            color: red;
            font-size: 14px;
            border-radius: 5px;
        }
        .my_datale ul li a{
            width: 50px;
            height: 25px;
            color: #fff;
            font-size: 14px;
            background: red;
            line-height: 1.9;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }
        /*分页*/
        .my_cebnrs{
            width: 100%;
            height: 80px;
            text-align: center;
            background: #EDECEC;
        }
        .my_cebnrs ul.pagisdnation {
            display: inline-block;
            padding: 0;
            margin: 0;
        }

        .my_cebnrs ul.pagisdnation li {display: inline;}

        .my_cebnrs ul.pagisdnation li a {
            color: black;
            float: left;
            padding: 6px 9px;
            text-decoration: none;
            transition: background-color .3s;
            border: 1px solid #ddd;
            margin: 0 4px;
            background: #DADADA;
            margin-top: 20px;
        }

        .my_cebnrs ul.pagisdnation li a.active {
            background-color: #2C75FC;
            color: white;
            border: 1px solid #2C75FC;
        }

        .my_cebnrs ul.pagisdnation li a:hover:not(.active) {color:#fff;background-color: #2C75FC;}
        #month{
            overflow-x: auto;
            min-height: 60px;
            display: flex;
        }
    </style>
</head>
<body style="min-width: 320px;">
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div class="my_strdsa">
    <div class="my_left_strsd">
        <div class="amy_centers">
            <a href="javascript:history.back()"><img src="./image/my_left.png" alt=""></a>
            <a href="#">考勤登记</a>
        </div>
    </div>
    <div class="nz_wad"></div>
    <div class="add_name">
        <span>姓名：</span>
        <input type="text">
        &nbsp;&nbsp;
        <a href="">查找</a>
    </div>
    <div class="nz_wad"></div>
    <div class="my_red">
        <a href="#" style="background: rgba(229, 28, 35, 1);">添加人员</a>&nbsp;&nbsp;&nbsp;
        <a href="#" style="background: rgba(255, 152, 0, 1);">保存</a>
    </div>
    <div class="list_dian"></div>
    <div class="st_lsit">
        <span style="color: black;">出勤类型包括：</span><br>出勤√、事假△、病假○、婚假※、产假⊙、探亲假#、年休假★、迟到！、早退！！、旷工！！！、其它*。
    </div>
    <div class="Tda"><span id="yuefen">2018年6月</span></div>
    <div class="two_t">
        <ul id="month">
        </ul>
    </div>
    <div class="my_datale">
        <ul id="table-data">

        </ul>
    </div>

<div class="pagination am-inline-block" style="display: flex;justify-content: center;margin: 20px 0;">


    </div>


</div>

</body>

</html>
<script>
 var date = "<%=date %>";
$("#yuefen").text(date);


var sqlstr1="and date1 = '"+date+"'";

function monthsum() {


    $.ajax({
                    url:'../sys/code/prodata.ashx',
                    type: "get",
                    dataType: "json",
                    data: {
                        tablename:'r_kqcx',
                        wheresql:sqlstr1,
                        mtype:3,

                    },
                    success: function(info) {

                          $.each(info.SocutDSTable,function(idx,item){
                              var timeid1=item.id;
                              $.ajax({
                                                  url:'../sys/code/prodata.ashx',
                                                  type: "get",
                                                  dataType: "json",
                                                  data: {
                                                      tablename:'r_kqdj',
                                                      wheresql:"and kqid = '"+timeid1+"' and uid = '39'",
                                                      mtype:3,

                                                  },
                                                  success: function(info) {
                                                        $.each(info.SocutDSTable,function(idx,item){
                                                        // $('#month').append('<li><span>周日</span><br><span class="my_had">'+i+'</span></li>')
                                                        var a=item.date2;
                                                        console.log(a.substr(8));
                                                        var daystext=a.substr(8);
                                                        var weekDay = ["周日", "周一", "周二", "周三", "周四", "周五", "周六"];
                                                        var dateStr = a;
                                                        var myDate = new Date(Date.parse(dateStr.replace(/-/g, "/")));
                                                        var monthertext=weekDay[myDate.getDay()];
                                                         console.log(a+':'+weekDay[myDate.getDay()]);
                                                          $('#month').append('<li><span style="white-space: nowrap;">'+monthertext+'</span><br><span class="my_had" onclick="getlist('+daystext+');">'+daystext+'</span></li>')
                                                        })
                                                  }
                                                  });
                                // $('#month').append('<li><span>周日</span><br><span class="my_had">'+i+'</span></li>')

                          })
                    }
                    });


    // for (i=1;i<=31;i++){
    //      $('#month').append('<li><span style="white-space: nowrap;">周日</span><br><span class="my_had">'+i+'</span></li>')
    // }


}
function hoverday(a){

}
monthsum();


 function getlist(a){
      var sqlstr="and convert(char(10),date1,120)='"+date+"-01' order by uid,period";
     if(a !=""&&a!=undefined){
         if(a<10){
             a='0'+a;
         }
         sqlstr="and convert(char(10),date1,120)='"+date+"-"+a+"' order by uid,period";
     }
        $.ajax({
            url:'../sys/code/prodata.ashx',
            type: 'post',
            dataType: 'json',
            data: {
                tablename:'r_kqdj',
                mtype:31,
                wheresql:"and convert(char(10),date1,120)='"+date+"-01' ",
            },
        })
            .done(function(data) {
                if(data!=""){
                    $(".pagination").html("");
                     $.each(data.SocutDSTable,function(idx,item){
                    getlistwrap1111(0,item.credate,sqlstr);//分页条数
                    })
                }
            })
            .fail(function() {
                console.log("error");
            });
    }
    function getlistwrap1111(pageIndex,allcount,sqlstr){
$("#my_news1").html("");
        // var pageIndex = 0;     //页面索引初始值
          var pageSize = 31;     //每页显示条数初始化，修改显示条数，修改这里即可
        InitTable(pageIndex);
        //Load事件，初始化表格数据，页面索引为0（第一页）
        //分页，PageCount是总条目数，这是必选参数，其它参数都是可选
        $(".pagination").pagination(allcount, {
            callback: PageCallback,  //PageCallback() 为翻页调用次函数。
            prev_text: "上一页",
            next_text: "下一页",
            items_per_page:pageSize,
            num_edge_entries: 2,       //两侧首尾分页条目数
            num_display_entries: 2,    //连续分页主体部分分页条目数
            current_page: pageIndex,   //当前页索引
        });
        //翻页调用
        function PageCallback(index,jq) {
            InitTable(index);
        }
        //请求数据
        function InitTable(pageIndex) {
            $.ajax({
                url:'../sys/code/prodata.ashx',
                type: "get",
                dataType: "json",
                data: {
                    tablename:'r_kqdj',
                    wheresql:sqlstr,
                    mtype:30,
                    page:pageIndex+1,
                    count:pageSize
                },
                success: function(data) {
                     $('#table-data').html("");
                      $.each(data.SocutDSTable,function(idx,item) {

                    $('#table-data').append('<li >'+
                     '                <span style="width: 70px;display: inline-block;text-align: center;white-space: nowrap;">'+item.name+'</span>\n'+
                     '                <span id="'+item.id+'" style="color:gray;">上午:</span>\n'+
                     '                <select name="" onchange="ztchange1($(this).val(),item.id);">\n'+
                     '                    <option value="1">出勤√</option>\n'+
                     '                    <option value="2">事假△</option>\n'+
                     '                    <option value="3">病假○</option>\n'+
                     '                    <option value="4">婚假※</option>\n'+
                     '                    <option value="5">产假⊙</option>\n'+
                     '                    <option value="6">探亲假#</option>\n'+
                     '                    <option value="7">年休假★</option>\n'+
                     '                    <option value="8">迟到！</option>\n'+
                     '                    <option value="9">早退！！</option>\n'+
                     '                    <option value="10">旷工！！！</option>\n'+
                     '                    <option value="11">其它*</option>\n'+
                     '                </select>\n'+
                     '                <span style="color:gray;">下午:</span>\n'+
                     '                <select name="">\n'+
                     '                    <option value="1">出勤√</option>\n'+
                     '                    <option value="2">事假△</option>\n'+
                     '                    <option value="3">病假○</option>\n'+
                     '                    <option value="4">婚假※</option>\n'+
                     '                    <option value="5">产假⊙</option>\n'+
                     '                    <option value="6">探亲假#</option>\n'+
                     '                    <option value="7">年休假★</option>\n'+
                     '                    <option value="8">迟到！</option>\n'+
                     '                    <option value="9">早退！！</option>\n'+
                     '                    <option value="10">旷工！！！</option>\n'+
                     '                    <option value="11">其它*</option>\n'+
                     '                </select>\n'+
                     '                <a href="">删除</a>\n'+
                     '            </li>')
                     })
                }
            });




        }
    }

function ztchange1(a,id) {
//上午
console.log("sdasdasdsad");
console.log(a);

// 出勤√
// 事假△
// 病假○
// 婚假※
// 产假⊙
// 探亲假#
// 年休假★
// 迟到！
// 早退！！
// 旷工！！！
// 其它*
var wc=a;
switch(wc)
{
    case 1:
        console.log("1");
    break;
    case 2:
        console.log(a);
    break;
    case 3:
        console.log(a);
    break;
    case 4:
        console.log(a);
    break;
    case 5:
        console.log(a);
    break;
    case 6:
        console.log(a);
    break;
    case 7:
        console.log(a);
    break;
    case 8:
        console.log(a);
    break;
    case 9:
        console.log("9");
    break;
    case 10:
    console.log(a);
    break;
    case 11:
    console.log(a);
    break;
}

  // $.ajax({
  //                 url:'../sys/code/prodata.ashx',
  //                 type: "get",
  //                 dataType: "json",
  //                 data: {
  //                     tablename:'r_kqdj',
  //                     mtype:2,
  //                     symbol:
  //                        id:id;
  //                 },success(info){
  //
  //                 }
  //                 })
}
// getlist();
</script>
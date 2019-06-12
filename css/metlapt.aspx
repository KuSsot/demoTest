<%@ Page Language="C#" AutoEventWireup="true" CodeFile="metlapt.aspx.cs" Inherits="metlapt" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/hb.css" />
        <script src="js/jquery.js"></script>
        <script src="js/jquery-1.9.1.min.js"></script>
        <script src="js/koko.js"></script>
        <script src="js/WdatePicker.js"></script>
        <title>请选择请休假情况</title>
        <style>
            .qq {
                display: none;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <div class="right friend_link">
                <p class="p">
                    <select onchange="myadd()" id="koko">
                        <option value="">请选择请休假情况:</option>
                        <option value="1">
                            请休假2天及以上--------区属机关（事业单位）工作人员请休假审批备案表</option>
                        <option value="2">
                            请休假1天以内--------西区市场监管机构工作人员特殊情况报备表</option>
                    </select>
                </p>
                <p></p>
                <!-- 请休假2天及以上区属机关（事业单位）工作人员请休假审批备案表 -->
                <div class="right qq" id="tom">
                    <div class="myul">
                        <ul>
                            <li>
                                <span>请假人</span>
                                <input type="text" id="uname" class="forget101" placeholder="请输入姓名">
                                <hr>
                                <span>假期开始日期</span>
                                <!-- <input type="datetime-local" value="yyyy-MM-ddThh:mm" id="school" class="forget102"> -->
                                <input type="text" id="school" class="forget102" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                                <span>申请日期</span>
                                <!-- <input type="datetime-local" value="yyyy-MM-ddThh:mm" id="Application today" name="date" class="forget103" value="2018-6-1"> -->
                                <input type="text" id="Application" class="forget103" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                            </li>

                            <li>
                                <span>单位及职务</span>
                                <input type="text" id="Units" class="forget107">
                                <hr>
                                <span>假期结束日期</span>
                                <!-- <input type="datetime-local" value="yyyy-MM-ddThh:mm" id="End_of_holiday" class="forget104"> -->
                                <input type="text" id="End_of_holiday" class="forget104" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                            </li>

                            <li class="myli">
                                <span>所在股队（所）</span>
                                <input type="text" id="team" class="forget105">
                                <hr>
                                <span>申请休假(时长)</span>
                                <input type="text" id="ask" value="" class="forget106">
                                <!-- <input type="text" id="ask" class="forget106" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)"> -->
                                <hr>
                                <span style="font-size: 12px;text-align: center;font-family: Roboto;display: -webkit-box;color: red;margin-top: -3px;height: 15px;line-height: 14px;">注:请休假在2小时以上，视为请休假（半天）即为0.5天。</span>
                            </li>
                        </ul>
                    </div>

                    <div class="select">
                        <ul>
                            <li class="remark101">
                                <span>请假原因</span>
                                <textarea id="myleave" placeholder="" rows="5"></textarea>
                                <hr style="width: 91.4%;position: relative;left: -72px;">
                            </li>
                            <p></p>
                            <li class="remark102">
                                <span>备注</span>
                                <textarea id="Notes" placeholder="" rows="5"></textarea>
                                <hr style="width: 91.4%;position: relative;left: -72px;">
                                <p></p>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="verifier">
                        <ul>
                            <li>
                                <span>选择审核人</span>
                                <select name="">
                                    <option value="" id="">一一请选择一一</option>
                                    <option value="">科长-李白</option>
                                    <option value="">局长-陈述</option>
                                </select>
                            </li>
                        </ul>
                    </div>

                    <div class="button">
                        <span class="mybt">
                            <a href="#" class="save" onclick="getUserSalesMes2()">保存</a>&nbsp;&nbsp;
                            <a href="#" class="go_back">返回</a>
                        </span>
                    </div>
                </div>
                <!--  区属机关（事业单位）工作人员请休假审批备案表 -->
                <div class="right qq" id="jon">
                    <div class="Mylist">
                        <ul>
                            <li>
                                <span>请假人</span>
                                <input type="text" id="myuname" placeholder="请输入姓名" class="koko101">
                                <hr>
                                <span>参加工作时间</span>
                                <i class="am-icon-calendar"></i>
                                <!-- <input type="text" id="working" class="koko102" value="2018-5-22" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"> -->
                                <input type="text" id="working" class="koko102" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                                <span>本年度休假情况</span>
                                <input type="text" id="Vacation_year" class="koko103">
                                <hr>
                                <span>假期开始日期</span>
                                <!-- <input type="datetime-local" value="yyyy-MM-ddThh:mm" id="start_date" class="koko104"> -->
                                <input type="text" id="start_date" class="koko104" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                            </li>

                            <li>
                                <span>单位及职务</span>
                                <input type="text" id="duties" class="koko105">
                                <hr>
                                <span>工作年限</span>
                                <input type="text" id="years_of" value="" class="koko106">
                                <hr>
                                <span>休假类型</span>
                                <input type="text" id="Leave" class="koko107">
                                <hr>
                                <span>假期结束日期</span>
                                <!-- <input type="datetime-local" value="yyyy-MM-ddThh:mm" id="myholiday" class="koko108"> -->
                                <input type="text" id="myholiday" class="koko108" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                            </li>

                            <li>
                                <span>出生年月</span>
                                <!-- <input type="text" id="birth" class="koko109"> -->
                                <input type="text" id="birth" class="koko109" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                                <span>申请日期</span>
                                <!-- <input type="datetime-local" value="yyyy-MM-ddThh:mm" id="applic" class="koko1010"> -->
                                <input type="text" id="applic" class="koko1010" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" onkeydown="return forbidInputKeyDown(event)">
                                <hr>
                                <span>申请休假(天数)</span>
                                <input type="text" id="bole" class="koko1011">
                                <hr>
                                <span>何时往返何地点</span>
                                <input type="text" id="mywhere" class="koko1012">
                                <hr>
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
                                <select name="">
                                    <option value="" id="">一一请选择一一</option>
                                    <option value="">科长-李白</option>
                                    <option value="">局长-陈述</option>
                                </select>
                            </li>
                        </ul>
                    </div>

                    <div class="button">
                        <span class="mybt">
                            <a href="#" class="save" onclick="getUserSalesMes1()">
                                保存
                            </a>&nbsp;&nbsp;
                            <a href="#" class="go_back">返回</a>
                        </span>
                    </div>

                </div>

            </div>
            <!--请休假2天及以上区属机关（事业单位）工作人员请休假审批备案表  -->
            <script>
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
            </script>
        </div>

    </body>
    <!-- <script>
        function getUserSalesMes1() {
            alert("保存成功！");
        }
    </script> -->

    </html>
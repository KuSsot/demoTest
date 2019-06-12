<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vacate.aspx.cs" Inherits="vacate" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <!-- <link rel="stylesheet" href="css/hb.css" /> -->
        <title>区属机关（事业单位）工作人员请休假审批备案表</title>
        <style>
            .head {
                margin-top: -20px;
                width: 100%;
                height: 50px;
                font-size: 14px;
                background: #ECECEC;
            }

            .head {
                margin-top: -20px;
                width: 100%;
                height: 50px;
                font-size: 14px;
                background: #ECECEC;
            }

            body {
                overflow: hidden;
                margin: 0;
                padding: 0
            }

            .header {
                width: 100%;
                height: 900px
            }

            .header img {
                width: 100%
            }

            .head {
                margin-top: -20px;
                width: 100%;
                height: 50px;
                background: #ECECEC
            }

            .head ul .add101 span img {
                position: relative;
                top: 5px;
                left: -35px;
                width: 25px;
                height: 25px
            }

            .head ul li {
                float: left;
                width: 7%;
                list-style: none;
                text-align: center;
                text-decoration: none;
                line-height: 28px;
                line-height: 50px
            }

            .head ul li a {
                color: #000;
                text-decoration: none
            }

            .left {
                width: 11%;
                height: 790px
            }

            .left ul li {
                margin-top: 15px;
                margin-left: -41px;
                height: 28px;
                list-style: none;
                text-align: center;
                line-height: 28px
            }

            .left ul li a {
                display: block;
                width: 100%;
                color: #000;
                text-decoration: none
            }

            .left ul .add101 {
                margin-top: -17px;
                background: #F3F3F3
            }

            .left ul .add102 {
                background: #41AEE1
            }

            .left ul .add102 a {
                color: #fff
            }

            .left ul .tom:hover {
                background: #41AEE1
            }

            .left ul .tom a:hover {
                color: #fff
            }

            .left .jon {
                margin-left: -41px
            }

            .right {
                float: right;
                /*margin-top: -792px;*/
                width: 100%;
                height: 790px;
                border-left: 2px solid #DBDBDB
            }

            .right .homell {
                position: absolute;
                margin-top: 5px;
                width: 88.8%;
                height: 29px;
                border-bottom: 2px solid #DBDBDB;
                line-height: 25px
            }

            .right .homell span {
                display: block;
                margin: 4px;
                width: 100px;
                height: 25px;
                background: #41AEE1;
                color: #fff;
                text-align: center
            }

            .right .p select {
                margin-left: 15px;
                padding: 0 5px;
                width: 40%;
                height: 30px;
                border-radius: 5px;
                color: gray;
                font-size: 14px;
                position: relative;
                left: 5px;
            }

            .leave input {
                margin-left: 63px;
                padding: 0 5px;
                width: 60%;
                height: 30px;
                border: 1px solid #BBB;
                border-radius: 5px
            }

            .ask input {
                margin: 0 15px;
                padding: 0 5px;
                width: 60%;
                height: 26px;
                border: 1px solid #BBB;
                border-radius: 5px
            }

            .myul {
                width: 100%;
                height: 21%
            }

            .myul ul li {
                position: relative;
                left: -41px;
                float: left;
                padding: 0 20px;
                width: 29%;
                list-style: none;
                line-height: 29px
            }

            .myul ul li input {
                padding: 0 5px;
                width: 50%;
                height: 30px;
                border: 1px solid #BBB;
                border-radius: 5px;
                font-size: 14px
            }

            .myul ul li .forget101 {
                margin-left: 70px
            }

            .myul ul li .forget102 {
                margin-left: 22px
            }

            .myul ul li .forget103 {
                margin-left: 54px
            }

            .myul ul li .forget104 {
                margin-left: 25px
            }

            .myul ul li .forget105 {
                margin-left: 10px
            }

            .myul ul li .forget106 {
                margin-left: 12px
            }

            .myul ul li .forget107 {
                margin-left: 40px
            }

            .myul ul .myli l {
                position: absolute;
                left: 66%
            }

            .select {
                width: 100%;
                height: 30%
            }

            .select ul li {
                position: relative;
                top: -25px;
                left: -21px;
                list-style: none
            }

            .select ul .remark101 {
                width: 100%;
                height: 15%
            }

            .select ul .remark101 textarea {
                position: relative;
                left: 55px;
                width: 78%;
                font-size: 14px
            }

            .select ul .remark102 textarea {
                position: relative;
                left: 87px;
                width: 78%;
                font-size: 14px
            }

            .select ul .remark101 span {
                position: relative;
                top: -71px
            }

            .select ul .remark102 span {
                position: relative;
                top: -71px
            }

            .verifier ul li {
                position: relative;
                left: -20px;
                width: 100%;
                height: 35px;
                list-style: none;
                font-size: 14px;
                top: 55px;
            }

            .verifier {
                width: 100%;
                height: 20%
            }

            .verifier ul li select {
                margin-left: 49px;
                width: 15%;
                height: 30px;
                border-radius: 5px;
                color: gray;
                font-size: 14px;
                position: relative;
                left: 0;
            }

            .button .mybt a {
                color: #000;
                text-decoration: none
            }

            .button .mybt .save {
                display: inline-block;
                width: 5%;
                height: 25px;
                border-radius: 5px;
                background: #41AEE1;
                color: #fff;
                text-align: center;
                line-height: 26px
            }

            .button .mybt .go_back {
                display: inline-block;
                width: 5%;
                height: 25px;
                border-radius: 5px;
                background: #DBDBDB;
                text-align: center;
                line-height: 26px;
                color: black;
            }

            .button {
                margin: auto;
                width: 100%;
                text-align: center
            }

            .verifier {
                width: 100%;
                height: 20%;
                position: relative;
                top: -50px
            }
        </style>
    </head>

    <body>
        <div class="header" id="chanpin1">
            <!--<img src="image/logo.png" alt="">
     <div class="head">
        <ul>
            <li class="add101">
                    <span>
                        <img src="image/home.png" alt="">
                        <span>
                            <a href="#">工作台</a>
                        </span>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">统计分析</a>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">执法办案</a>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">执法办案</a>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">经济户口</a>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">指挥调度</a>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">辅助管理</a>
                    </span>
            </li>
            <li>
                    <span>
                        <a href="#">报表管理</a>
                    </span>
            </li>
            <li>
                        <span>
                            <a href="#">权限管理</a>
                        </span>
            </li>
            <li>
                        <span>
                            <a href="#">请假管理</a>
                        </span>
            </li>
        </ul>
    </div>

    <div class="left">
        <ul class="jon">
            <li class="add101">
                <a href="#">请假管理</a>
            </li>
            <li class="add102">
                <a href="index.html">请休假申请</a>
            </li>
            <li class="tom">
                <a href="records.html">我的请休假记录</a>
            </li>
            <li class="tom">
                <a href="approval.html">请休假审批</a>
            </li>
            <li class="tom">
                <a href="Leave.html">请休假查询</a>
            </li>
        </ul>
    </div>-->

            <div class="right">
                <!--<div class="homell">
            <span>请休假申请</span>
        </div>
        <br><br>-->
                <p class="p">
                    <select name="" id="">
                        <option value="">
                            <a href="index.html"></a>区属机关（事业单位）工作人员请休假审批备案表</option>
                        <option value="">
                            <a href="Belongs%20to.html">请休假2天以内--------西区市场监管机构工作人员特殊情况报备表</a>
                        </option>
                    </select>
                </p>
                <p></p>
                <div class="myul">
                    <ul>
                        <li>
                            <span>请假人</span>
                            <input type="text" class="forget101" placeholder="请输入姓名">
                            <hr>
                            <span>假期开始日期</span>
                            <input type="text" class="forget102">
                            <hr>
                            <span>申请日期</span>
                            <input type="text" class="forget103" value="2018年06月01日">
                            <hr>
                        </li>

                        <li>
                            <span>单位及职务</span>
                            <input type="text" class="forget107">
                            <hr>
                            <span>假期结束日期</span>
                            <input type="text" class="forget104">
                            <hr>
                        </li>

                        <li class="myli">
                            <span>所在股队（所）</span>
                            <input type="text" class="forget105">
                            <hr>
                            <span>申请休假(时长)</span>
                            <input type="text" value="24小时" class="forget106">
                            <l>1天</l>
                            <hr>
                        </li>
                    </ul>
                </div>

                <!--textarea-->
                <div class="select">
                    <ul>
                        <li class="remark101">
                            <span>请假原因</span>
                            <textarea placeholder="" rows="5"></textarea>
                            <hr>
                        </li>

                        <li class="remark102">
                            <span>备注</span>
                            <textarea placeholder="" rows="5"></textarea>
                            <hr>
                        </li>
                    </ul>
                </div>

                <!--select-->
                <div class="verifier">
                    <ul>
                        <li>
                            <span>选择审核人</span>
                            <select name="">
                                <option value="">一一请选择一一</option>
                            </select>
                        </li>
                    </ul>
                </div>

                <!--button -->
                <div class="button">
                    <span class="mybt">
                        <a href="#" class="save">保存</a>&nbsp;&nbsp;
                        <a href="#" class="go_back">返回</a>
                    </span>
                </div>
            </div>
        </div>
    </body>

    </html>
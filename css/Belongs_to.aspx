<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Belongs_to.aspx.cs" Inherits="Belongs_to" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    	<link rel="stylesheet" href="css/hb.css" />
    <title>请休假2天以内--------西区市场监管机构工作人员特殊情况报备表</title>

</head>

<body>
<div class="header">
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
                <option value=""><a href="index.html">请休假2天及以上--------区属机关（事业单位）工作人员请休假审批备案表</a></option>
                <option value=""><a href="Belongs%20to.html">区属机关（事业单位）工作人员请休假审批备案表</a></option>
            </select>
        </p>
        <p></p>

        <!--list-->
        <div class="Mylist">
            <ul>
                <li>
                    <span>请假人</span>
                    <input type="text" placeholder="请输入姓名" class="koko101">
                    <hr>
                    <span>参加工作时间</span>
                    <i class="am-icon-calendar"></i>
                    <input type="text" class="koko102" value="2018-5-22"
                           onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})">
                    <hr>
                    <span>本年度休假情况</span>
                    <input type="text" class="koko103">
                    <hr>
                    <span>假期开始日期</span>
                    <input type="text" class="koko104">
                    <hr>
                </li>

                <li>
                    <span>单位及职务</span>
                    <input type="text" class="koko105">
                    <hr>
                    <span>工作年限</span>
                    <input type="text" value="2018年06月01日" class="koko106">
                    <hr>
                    <span>休假类型</span>
                    <input type="text" class="koko107">
                    <hr>
                    <span>假期结束日期</span>
                    <input type="text" class="koko108">
                    <hr>
                </li>

                <li>
                    <span>出生年月</span>
                    <input type="text" class="koko109">
                    <hr>
                    <span>申请日期</span>
                    <input type="text" class="koko1010">
                    <hr>
                    <span>申请休假（天数）</span>
                    <input type="text" class="koko1011">
                    <hr>
                    <span>何时往返何地点</span>
                    <input type="text" class="koko1012">
                    <hr>
                </li>
            </ul>
        </div>

        <div class="myselect">
            <ul>
                <li class="Remark101">
                    <span>请假原因</span>
                    <textarea placeholder="" rows="5"></textarea>
                    <hr>
                </li>

                <li class="Remark102">
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

        <!--button-->
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
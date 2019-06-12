// 请休假2天以内--------西区市场监管机构工作人员特殊情况报备表
function succFunction1(date) {
    console.log(date);
}
// getUserSalesMes1(succFunction);
var url = 'http://192.168.0.253:211';
function getUserSalesMes2() {
    $.ajax({
        url: url + '/sys/code/prodata.ashx',
        type: 'POST',
        dataType: 'text',
        data: {
            mtype: 1,//类型
            tablename: 't_qxj',//表名
            qjid: '',//请假人id
            qjname: $("#uname").val(),
        },
        success: succFunction1
    });
}


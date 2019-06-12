function gwlz_cc(credate, gwid, name) {



    $.ajax({
        url: '../sys/code/prodata.ashx',
        type: 'get',
        dataType: 'text',
        data: {
            tablename: 'r_gwfsr',
            mtype: 1,
            credate: credate,
            gwid: gwid,
            name: name,
            status: 1,
            ok: 6
        }, success(info) {

            //  alert("领导发送成功");
            //javascript:history.back(-1);
        }, error: function () {
            console.log("部门1错误");

        }

    })



}
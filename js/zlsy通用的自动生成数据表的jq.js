/*document.write(”<script language=javascript src='../addons/cy_ywsys/template/mobile/mobile/js/jquery.form.js’></script>”);
document.write(”<script language=javascript src='../addons/cy_ywsys/template/mobile/mobile/js/jquery-1.9.1.min.js’></script>”);
document.write(”<script language=javascript src='../addons/cy_ywsys/template/mobile/mobile/js/jquery.form.min.js’></script>”);
document.write(”<script language=javascript src='../addons/cy_ywsys/template/mobile/mobile/js/jquery.form.js’></script>”);*/
$("#frm1").ajaxForm(function(data){                         //from表单提交数据以后返回的内容是生成页面所需要的数据和参数
    data = JSON.parse(data);                                //转换后端传到前端的数据
    console.log(data);
    $('#tableslis').html();

    $('#tableslis').html(
        '<table><thead ><tr id="t"></tr></thead><tbody id="c"></tbody></table>' +
        '<div  id="guzlist_4"></div><div class="pagination_4"></div>'
    );                                                      //创建一个数据表依赖的功能模块//创建一个翻页按钮依赖的功能模块

    $.each(data.t,function(idx,item){                   //循环创建数据表标题的方法
        /*
         * data    :  上层循环结构的json对象//所有数据都在里面
         *
         * data.s  :  总数
         * data.t  :  标题
         * data.c  :  内容
         *
         * idx     :  序号
         * item    :  数据
         *
         */
        $("#t").append('<th>'+item.titlename+'</th>');  //生成标题  item.titlename标题
    });

    $.each(data.c,function (num,info){                  //循环创建数据表数据方法
        var tr=$("<tr/>");                              //创建需要的纵列
        var td=$('</td>');                              //创建需要的横列
        $.each(info,function(infoNum,infoContc){    //循环创建每一横列的数据
            td=$('<td>'+infoContc.name1+'</td>');   //把创建的横列上的每个数据存到td里面再通过tr创建出来
            tr.append(td);                          //↑创建横列
        });
        $("#c").append(tr);                             //创建这条横列的数据到表格里面
    });

});
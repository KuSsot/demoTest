function kqdj_ajax(date,uid,new_date,turename,kqid) {
        for(i=1;i<=31;i++){
            // var data1=( new_date+'/'+i).replace(/-/g,"/");
            if(i<10){
                i = '0'+i;
            }
            var data1=( new_date+'-'+i);

            $.ajax({
                url: '../sys/code/prodata.ashx',
                type: 'get',
                dataType: 'json',
                async:false,
                data: {
                    tablename: 'r_kqdj',
                    mtype: 1,
                    credate:date,
                    uid:uid,
                    name:turename,
                    kqid:kqid,
                    symbol:'√',
                    date1:data1,
                    date2:data1,
                    period:'上午',
                    period1:'下午',
                    symbol1:'√',

                    

                },success(info){
                    // console.log(info)

                    window.location.href='xjkqdjb.aspx?date='+new_date;
                }
            })
        }

}


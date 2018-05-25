$(function(){
    getAllMenu();
})


//***************************************************获取菜单的数据****************************************************************
//获取所有的菜单进行展示
function getAllMenu(){
    $.ajax({
        url:"/getAllMenu",
        success:function(data){
            if(data!=null){

                $("#systemSetting").append("<li><a href='javascript:void(0)' onclick='clickMenu(this)' urls='"+data[0].url+"'><i class='glyphicon glyphicon-us'></i>"+data[0].name+"</a></li>")
            }
        }
    });
}
//***************************************************************获取结束**************************************************************

//点击事件右侧的显示数据
function clickMenu(dom){
    var url = dom.getAttribute("urls");
    $("#iframeId").attr("src",url);
}
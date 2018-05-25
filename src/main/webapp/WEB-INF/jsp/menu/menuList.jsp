<%--
  Created by IntelliJ IDEA.
  User: 30831
  Date: 2018/5/24
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/common/bootstrap/css/bootstrap.css" />
    <script type="text/javascript" src="/common/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/common/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="/menu/menu.js"></script>
    <style type="text/css">
    .page-sidebar{
        position: absolute;
        top: 0;
        bottom: 0;
        width: 224px;
        display: block;
    }
    .page-sidebar .sidebar-menu {
        margin: 0;
        padding: 0;
        margin-left: 5px;
    }
    .page-sidebar:before{
        content: "";
        position: fixed;
        display: block;
        width: 219px;
        bottom: 0;
        top: 0;
        left: 5px;
        background-color: #fff;
        -webkit-box-shadow: 0 0 10px 0 rgba(0,0,0,.2);
        -moz-box-shadow: 0 0 10px 0 rgba(0,0,0,.2);
        box-shadow: 0 0 10px 0 rgba(0,0,0,.2);
        z-index: 1;
    }
    .page-sidebar .sidebar-menu a{
        color: #737373;
        z-index: 123;
        padding: 0 16px 0 7px;
        margin: 0;
        height: 38px;
        line-height: 36px;
        -webkit-text-shadow: none!important;
        text-shadow: none!important;
        font-size: 13px;
    }
    .page-sidebar .submenu{
        margin: 0;
        padding: 0;
        position: relative;
        float: none;
        background-color: #fbfbfb;
        border: 0;
        box-shadow: inset 0 4px 4px -2px rgba(0,0,0,.15),inset 0 -4px 4px -2px rgba(0,0,0,.15);
        border-radius: 0;
        z-index: 123;
    }
    .page-sidebar .sidebar-menu>li>a {
        border-top: 1px solid #f3f3f3;
    }

    /* 菜单前面的小图标*/
    .page-sidebar .sidebar-menu a .menu-icon {
        display: inline-block;
        vertical-align: middle;
        min-width: 30px;
        text-align: center;
        font-size: 14px;
        font-weight: normal;
        font-style: normal;
        margin-top: -3px;
    }

    /* 向右的箭头*/
    .page-sidebar .sidebar-menu a .menu-expand{
        display: inline-block;
        position: absolute;
        font-size: 10px;
        line-height: 10px;
        height: 10px;
        width: 10px;
        right: 12px;
        top: 15px;
        margin: 0;
        text-align: center;
        padding: 0;
        -webkit-text-shadow: none;
        text-shadow: none;
        color: #666;
        -webkit-transition: all 300ms ease-in-out;
        -moz-transition: all 300ms ease-in-out;
        -o-transition: all 300ms ease-in-out;
        transition: all 300ms ease-in-out;
        font-style: normal;
        font-weight: normal;
    }
    .panel-group .panel{
        margin: 0;
        margin-top:0 !important;
        border: none;
    }

    /* 第一层级缩进 */
    .page-sidebar .sidebar-menu .submenu>li>a {
        padding-left: 40px;
    }
    /* 第二层级缩进 */
    .page-sidebar .sidebar-menu .submenu>li .submenu>li>a {
        padding-left: 50px;
    }
    .page-sidebar .sidebar-menu a:hover {
        color: #262626;
    }
    /* 选中增加蓝色border */
    .page-sidebar .sidebar-menu .active:before {
        display: block;
        content: "";
        position: absolute;
        top: 0;
        bottom: 0;
        left: -4px;
        width: 4px;
        max-width: 4px;
        overflow: hidden;
        background-color: #2dc3e8;
    }
    .page-sidebar .sidebar-menu li a:not(.panel-heading):hover:before {
        display: block;
        content: "";
        position: absolute;
        top: 0;
        bottom: 0;
        left: -4px;
        width: 4px;
        max-width: 4px;
        overflow: hidden;
        background-color: #fb6e52;
    }
    </style>
</head>
<body>
    <div class="navbar navbar-duomi navbar-static-top" role="navigation" style="background-color: #0f0f0f">
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="/Admin/index.html" id="logo">配置管理系统
    </a>
    </div>
    </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2" >
                <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                    <li class="active" >
                        <a href="#"><i class="glyphicon glyphicon-th-large"></i>首页</a>
                    </li>
                    <li>
                        <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>系统管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-th-list"></i>菜单管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>角色管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./plans.html"><i class="glyphicon glyphicon-credit-card"></i>物料管理</a>
                    </li>
                    <li>
                        <a href="./grid.html"><i class="glyphicon glyphicon-globe"></i>分发配置<span class="label label-warning pull-right">5</span></a>
                    </li>
                    <li>
                        <a href="./charts.html"><i class="glyphicon glyphicon-calendar"></i>图表统计</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-fire"></i>关于系统</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-10">
                <iframe src="" id="iframeId" style="width: 99%;height: 99%"></iframe>
            </div>
        </div>
    </div>

    <script type="text/javascript">
    $(function(){
        //点击菜单箭头变化
        $(".page-sidebar .sidebar-menu a").each(function(){
            $(this).click(function(){
                var Oele = $(this).children('.menu-expand');
                if($(Oele)){
                    if($(Oele).hasClass('glyphicon-chevron-right')){
                    $(Oele).removeClass('glyphicon-chevron-right').addClass('glyphicon-chevron-down');
                    }else{
                    $(Oele).removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-right');
                    }
                 }

                //选中增加active
                if(! $(this).hasClass('panel-heading')){
                    $(".page-sidebar .sidebar-menu a").removeClass('active');
                    $(this).addClass('active');
                }
            });
        });
    })
    </script>
</body>
</html>

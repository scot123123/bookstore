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
    <!-- 导航 -->
    <div class="page-sidebar">
    <ul class="nav panel-group sidebar-menu" id="nav_parent">
    <li class="panel">
    <a href="#">
    <i class="menu-icon glyphicon glyphicon-home"></i>
    <span class="menu-text"> Dashboard </span>
    </a>
    </li>
    <li class="panel">
    <a class="panel-heading collapsed" href="#collapse1" data-toggle="collapse" data-parent="#nav_parent">
    <i class="menu-icon glyphicon glyphicon-fire"></i>
    <span class="menu-text">Elements</span>
    <i class="glyphicon glyphicon-chevron-right menu-expand"></i>
    </a>
    <ul class="nav submenu collapse" id="collapse1">
    <li>
    <a href="#"><span class="menu-text">Basic Elements</span></a>
    </li>
    <li>
    <a class="panel-heading collapsed" href="#collapse2" data-toggle="collapse">
    <span class="menu-text">Icons</span>
    <i class="glyphicon glyphicon-chevron-right menu-expand"></i>
    </a>
    <ul class="nav submenu collapse" id="collapse2">
    <li>
    <a href="#">
    <i class="menu-icon glyphicon glyphicon-stats"></i>
    <span class="menu-text">Font Awesome</span>
    </a>
    </li>
    <li>
    <a href="#">
    <i class="menu-icon glyphicon glyphicon-stats"></i>
    <span class="menu-text">Glyph Icons</span>
    </a>
    </li>
    </ul>
    </li>
    <li>
    <a href="#">
    <span class="menu-text">Tabs & Accordions</span>
    </a>
    </li>
    <li>
    <a href="#">
    <span class="menu-text">Alerts & Tooltips</span>
    </a>
    </li>
    <li>
    <a href="#">
    <span class="menu-text">Modals & Wells</span>
    </a>
    </li>
    </ul>
    </li>
    <li class="panel">
    <a class="panel-heading collapsed" href="#collapse5" data-toggle="collapse" data-parent="#nav_parent">
    <i class="menu-icon glyphicon glyphicon-link"></i>
    <span class="menu-text">More Pages</span>
    <i class="glyphicon glyphicon-chevron-right menu-expand"></i>
    </a>
    <ul class="nav submenu collapse" id="collapse5">
    <li>
    <a href="#"><span class="menu-text">Error 404</span></a>
    </li>
    <li>
    <a href="#"><span class="menu-text"> Grid</span></a>
    </li>
    <li>
    <a class="panel-heading collapsed" href="#collapse6" data-toggle="collapse">
    <span class="menu-text">Multi Level Menu</span>
    <i class="glyphicon glyphicon-chevron-right menu-expand"></i>
    </a>
    <ul class="nav submenu collapse" id="collapse6">
    <li>
    <a href="#">
    <i class="menu-icon glyphicon glyphicon-stats"></i>
    <span class="menu-text">Level 3</span>
    </a>
    </li>
    <li>
    <a class="panel-heading collapsed" href="#collapse7" data-toggle="collapse">
    <i class="menu-icon glyphicon glyphicon-stats"></i>
    <span class="menu-text">Level 4</span>
    <i class="glyphicon glyphicon-chevron-right menu-expand"></i>
    </a>
    <ul class="nav submenu collapse" id="collapse7">
    <li>
    <a href="#">
    <i class="menu-icon glyphicon glyphicon-stats"></i>
    <span class="menu-text">Some Item</span>
    </a>
    </li>
    <li>
    <a href="#">
    <i class="menu-icon glyphicon glyphicon-stats"></i>
    <span class="menu-text">Another Item</span>
    </a>
    </li>
    </ul>
    </li>
    </ul>
    </li>
    </ul>
    </li>
    </ul>
    </div>
    <script type="text/javascript" src="/common/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/common/bootstrap/js/bootstrap.js"></script>
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

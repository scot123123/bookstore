<%--
  Created by IntelliJ IDEA.
  User: 30831
  Date: 2018/5/21
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/common/bootstrap/css/bootstrap.css">
    <script src="/common/jquery-1.10.2.js"></script>
    <script src="/common/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#but").click(function() {
                alert("1111");
            });
            submit();
        });
        function submit(){
            $("#onClicId").click(function(){
                debugger;
                var name=$("#name").val();
                var password=$("#password").val();
                if(name!=null&&password!=null&&name!=""&&password!=""){
                    $.ajax({
                        url:"/login",
                        dataType:"json",
                        data:{"name":name,"password":password},
                        success:function(data){
                            debugger;
                        }
                    })
                }
            });

        }
    </script>
    <style type="text/css">
        #formId{
            padding-left: 40%;
            padding-top: 18%;
        }
    </style>
</head>
<body>
    <form id="formId" class="navbar-form navbar-left" role="search">
        <div class="form-group">
            <input  id="name" type="text" class="form-control" placeholder="姓名"/>
        </div>
        <div style="margin-top: 10px">
            <input id="password" type="text" class="form-control" placeholder="密码"/>
        </div>
        <button id="onClicId" type="submit" class="btn btn-default" style="margin-top: 10px">提交</button>
    </form>
</body>
</html>

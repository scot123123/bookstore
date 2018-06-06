$(function() {
    validateRule();
    $(".i-checks").iCheck({checkboxClass:"icheckbox_square-green-login"});
    $('.imgcode').click(function() {
        var url = ctx + "captcha/captchaImage?type=" + captchaType + "&s=" + Math.random();
        $(".imgcode").attr("src", url);
    });
});

$.validator.setDefaults({
    submitHandler: function() {
        login();
    }
});

function login() {
    var username = $("input[name='name']").val().trim();
    var password = $("input[name='password']").val().trim();
    $.ajax({
        type: "POST",
        url: "/login",
        data: {
            "name": username,
            "password": password
        },
        success: function(r) {
            if (r == "success") {
                parent.location.href = '/menu';
            } else {
                $('.imgcode').click();
                // layer.msg(r.msg);
            }
        }
    });
}

function validateRule() {
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#signupForm").validate({
        rules: {
            username: {
                required: true
            },
            password: {
                required: true
            }
        },
        messages: {
            name: {
                required: icon + "请输入您的用户名",
            },
            password: {
                required: icon + "请输入您的密码",
            }
        }
    })
}

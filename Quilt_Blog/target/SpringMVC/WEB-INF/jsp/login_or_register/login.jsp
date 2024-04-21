
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <title>西湖论战·登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/supersized.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/login.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/font-awesome/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="./static/layuiadmin/layui/css/layui.css" media="all"> -->

</head>
<body>
<div class="page-container">
    <h1>Login</h1>
    <form>
        <input type="text" id="userName" name="userName" class="username" placeholder="Username">
        <input type="password" id="userPass" name="userPass" class="password" placeholder="Password">
        <button type="button" id="login">Sign in</button>
        <!-- 新增注册按钮 -->
        <a href="register">
        <button type="button" id="logup" class="logup">Sign up</button>
        </a>
        <div class="error"><span>+</span></div>
    </form>

    <div class="connect">
        <p>Or connect with:</p>
        <p>
            <a  href="https://gitee.com/chen-hann"><i class="fa fa-github fa-3x" style=" color:#FFF;"></i></a>
        </p>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/jquery/jquery.js"></script>
<script src="<%=request.getContextPath()%>/static/js/supersized.3.2.7.min.js"></script>

<script src="<%=request.getContextPath()%>/static/js/scripts.js"></script>
<script src="<%=request.getContextPath()%>/static/js/md5.js"></script>
<!-- 弹窗 -->
<script src="<%=request.getContextPath()%>/static/layuiadmin/layui/layui.all.js" charset="utf-8"></script>
<!-- 背景渐变 修改js -->
<!-- /static/js/supersized-init.js -->
</body>

<script>
    // 异步提交表单
    $(document).ready(
        $("#login").on("click", function() {
            // 检查用户名密码是否为空 密码MD5加密

            if($("#userName").val() == "" || $('#userPass').val() == "") {
                layer.msg('用户名或密码为空');
            }

            var fd = new FormData();
            fd.append("username", $("#userName").val());
            fd.append("password", md5($('#userPass').val()));
            // alert(fd.get("password"))
            $.ajax({
                type: 'post',
                data:
                    {
                        username: $("#userName").val(),
                        password: md5($('#userPass').val())
                    },
                url: '<%=request.getContextPath()%>/login/check',
                cache: false,
                dataType: 'text',
                success: function (data) {
                    var data1 = $.parseJSON(data);
                    if(data1.state == 0){
                        layer.msg("登陆失败");
                    }else {
                        // layer.msg("成功！");
                        location.href = "<%=request.getContextPath()%>/admin/index"
                    }
                }
            });
        })
    );

</script>
<SCRIPT>
    let favicon2 = document.createElement('link');
    favicon2.rel = 'icon';
    favicon2.href = '../static/img/smallLogo.png';
    document.head.appendChild(favicon2);
    jQuery(function($){

        $.supersized({

            // Functionality
            slide_interval     : 4000,    // Length between transitions
            transition         : 1,    // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
            transition_speed   : 1000,    // Speed of transition
            performance        : 1,    // 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)

            // Size & Position
            min_width          : 0,    // Min width allowed (in pixels)
            min_height         : 0,    // Min height allowed (in pixels)
            vertical_center    : 1,    // Vertically center background
            horizontal_center  : 1,    // Horizontally center background
            fit_always         : 0,    // Image will never exceed browser width or height (Ignores min. dimensions)
            fit_portrait       : 1,    // Portrait images will not exceed browser height
            fit_landscape      : 0,    // Landscape images will not exceed browser width

            // Components
            slide_links        : 'blank',    // Individual links for each slide (Options: false, 'num', 'name', 'blank')
            slides             : [
                {image : '<%=request.getContextPath()%>/static/images/login1.jpg'},
                {image : '<%=request.getContextPath()%>/static/images/man.jpg'},
                {image : '<%=request.getContextPath()%>/static/images/pexels.jpg'}
            ]

        });

    });



</SCRIPT>
</html>


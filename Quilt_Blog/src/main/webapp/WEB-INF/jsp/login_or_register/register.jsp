<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<script>
  //  ================ 浏览器图标 ====================
  let favicon2 = document.createElement('link');
  favicon2.rel = 'xihulunjian icon';
  favicon2.href = '<%=request.getContextPath()%>/static/achievement/img/smallLogo.png';
  document.head.appendChild(favicon2);
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">



<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
  <meta charset="utf-8">
  <title>User Register</title>
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
  <h1>Register</h1>
  <form action="confirm_register" method="post">
    <input type="text" id="userName" name="userName" class="username" placeholder="Username" required>
    <input type="password" id="userPass" name="userPass" class="password" placeholder="Password" required>
    <input type="text" name="email" class="username" placeholder="邮箱" required>
    <input type="text"  name="telephone" class="username" placeholder="电话" required>
    <input  type="submit"style="margin-bottom:40px" value="注册" >
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


</html>
<script>
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

</script>

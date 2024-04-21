<%@ page import="java.sql.*" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<style>
    .delete-button {
        background-color: #555; /* 红色背景 */
        color: #fff; /* 白色字体 */
        border: none; /* 移除边框 */
        padding: 10px 20px; /* 添加内边距 */
        border-radius: 5px; /* 圆角 */
        cursor: pointer; /* 鼠标指针样式为手型 */
        transition: background-color 0.3s; /* 添加过渡效果 */
    }

    .delete-button:hover {
        background-color: silver; /* 悬停时深红色背景 */
    }
</style>
<head>
    <meta charset="utf-8">
    <title>Blog后台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/layuiadmin/style/admin.css" media="all">
    <!-- <link rel="stylesheet" href="<%=request.getContextPath()%>/static/editor/css/style.css" /> -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/editor/css/editormd.css" />
    <style>
        input[type="file"] {
            position: absolute;
            left: 0;
            top: 0;
            height: 200px;
            opacity: 0;
            cursor: pointer;
        }
    </style>

</head>

<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <fieldset class="layui-elem-field layui-field-title">
            <legend>编辑公告</legend>
        </fieldset>
        <form action="Announcement" class="layui-form" id="myForm" method="POST" enctype="multipart/form-data">
            <div class="layui-col-md8">
                <div align="center">
                    <div class="layui-form-item" style="width: 90%;">
                        <input type="text" name="title" id="articleTitle" lay-verify="title"
                               autocomplete="off" placeholder="请输入标题" class="layui-input">
                        <input type="text" name="location" lay-verify="title"
                               autocomplete="off"  placeholder="请输入举办地" class="layui-input">
                        <input type="text" name="start_date" id="startDate" lay-verify="date" placeholder="请输入活动开始时间" class="layui-input">
                        <input type="text" name="end_date" id="endDate" lay-verify="date" placeholder="请输入活动结束时间" class="layui-input">
                        <script src="https://cdn.bootcdn.net/ajax/libs/layui/2.6.8/layui.js"></script>
                        <script>
                            layui.use(['laydate'], function(){
                                var laydate = layui.laydate;

                                // 执行一个laydate实例
                                laydate.render({
                                    elem: '#startDate', // 指定元素
                                    type: 'date' // 设置日期格式为 yyyy-MM-dd
                                });

                                laydate.render({
                                    elem: '#endDate',
                                    type: 'date'
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <div id="layout" style="width:100%;background: #f6f6f6;">
                        <div class="editormd" id="test-editormd" style="height: 800px">
                            <input type="text"  style="height: 800px" name="content" id="category_content" lay-verify="title"
                                   autocomplete="off"  placeholder="请输入内容" class="layui-input">
                        </div>
                        <div>
                            <input  class="delete-button" type="submit" value="添加">
                        </div>

                        <div align="center">
                            <div>
                                <blockquote class="layui-elem-quote layui-quote-nm">
                                    温馨提示：<br>
                                    1、活动内容的数据表字段类型为MEDIUMTEXT,每篇活动内容请不要超过500万字 <br>
                                    2、写活动之前，请确保标签和分类存在，否则可以先新建；请勿刷新页面，博客不会自动保存 <br>
                                    3. 写的活动前俩个空格段将做为活动summary,大标题前会自动有空格段
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>






            </div>

        </form>
    </div>
</div>
</body>
</html>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String url = "jdbc:mysql://49.232.137.252:3306/blog";
        String dbUsername = "root";
        String dbPassword = "666888aa";
        // 获取提交的 activity_id
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");
        String location = request.getParameter("location");
        // 数据库连接信息
        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
            String sql = "INSERT INTO news (title, content, start_date, end_date, location) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            // 设置参数
            pstmt.setString(1, title);
            pstmt.setString(2, content);
            pstmt.setString(3, start_date);
            pstmt.setString(4, end_date);
            pstmt.setString(5, location);

            int rowsAffected = pstmt.executeUpdate();

            System.out.println("成功插入 " + rowsAffected + " 行记录");

            // 关闭连接
            pstmt.close();
            conn.close();

            // 如果插入成功，使用JavaScript在本页面显示成功弹窗
            if (rowsAffected > 0) {
%>
<style>
    /* 弹窗样式 */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.5); /* 半透明黑色背景 */
    }

    /* 弹窗内容样式 */
    .modal-content {
        background-color: #f9f9f9; /* 浅灰色背景 */
        margin: 10% auto; /* 距离顶部 10% 并水平居中 */
        padding: 20px;
        border: 1px solid #ddd; /* 淡灰色边框 */
        width: 50%; /* 弹窗宽度为页面的一半 */
        border-radius: 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        text-align: center;
    }

    /* 关闭按钮样式 */
    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
</style>
<div id="myModal" class="modal">
    <!-- 弹窗内容 -->
    <div class="modal-content">
        <!-- 关闭按钮 -->
        <span class="close" onclick="closeModal()">&times;</span>
        <!-- 提示文本 -->
        <p>添加成功！</p>
    </div>
</div>

<script>
    // 设置变量跟踪弹窗状态
    var showModal = true;
    // 显示弹窗
    document.getElementById('myModal').style.display = 'block';
    // 关闭弹窗函数
    function closeModal() {
        showModal = false;
        document.getElementById('myModal').style.display = 'none';
    }
    // 如果单击弹窗外部并且弹窗应该显示，则关闭弹窗并刷新页面
    window.onclick = function(event) {
        if (event.target == document.getElementById('myModal') && showModal) {
            closeModal();
        }
    }
</script>
<%
            }
        } catch (ClassNotFoundException | SQLException e) {
            // 处理异常情况
            e.printStackTrace();
        }
    }
%>


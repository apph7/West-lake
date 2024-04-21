<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>


<%
    session = request.getSession();
    String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>评论详情</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url(https://obs-xhlj.obs.cn-east-3.myhuaweicloud.com/2023/3/7a0f1a8a401a4672a02783624f245507.jpg);
        background-size: cover;
        background-position: center;
    }

    .overlay {
        position: absolute;
        top: 200px; /* 页面距顶部300px */
        bottom: 20px; /* 页面距底部300px */
        left: 0;
        right: 0;
        background-color: rgba(255 ,250 ,250, 1); /* 灰色覆盖层 */
        z-index: -1; /* 将覆盖层置于背景之后 */
    }

    .container {
        position: relative; /* 使内容与覆盖层处于同一级别 */
        display: flex;
        justify-content: flex-start;

        align-items: flex-start;
        padding: 20px;
    }

    .user-info {
        width: 300px;
        height: 500px;
        background-color: #ffffff;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        margin-left: 100px;
    }

    .comment-info {
        width: 800px;
        background-color: #ffffff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        margin: 100px auto; /* 设置上下边距为100px，左右自动居中 */
    }


    /* Form styling */
    form {
        margin-bottom: 100px;
        margin-right: auto; /* 将右外边距设置为自动，使其居中 */
        padding-left: 40px; /* 保持左内边距为 50px */
        padding-right: 30px; /* 如果需要右内边距，可以设置右内边距为相同值 */
    }


    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: calc(100% - 20px); /* Subtract padding */
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #ffffff;
        color: #007bff; /* 修改为蓝色 */
        border: 1px solid #007bff; /* 添加边框 */
        padding: 10px 20px;
        border-radius: 25px; /* 使用较大的圆角值 */
        cursor: pointer;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */
        transition: background-color 0.3s, color 0.3s; /* 添加过渡效果 */
    }

    input[type="submit"]:hover {
        background-color: #007bff;
        color: #ffffff;
    }

    .gradient-text {
        background: linear-gradient(to right, #007bff, #00bcd4);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-left: 50px; /* 修改为50px */
        text-align: center;
        margin-top: 100px;
        font-size: 30px; /* 字体大小 */
        font-weight: bold;
    }
    .comment-list {
        list-style-type: none;
        padding: 0;
    }

    .comment-item {
        margin-bottom: 20px;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 10px;
        position: relative;
        height: 50px;
    }

    .comment-content {
        width: calc(100% - 150px); /* 留出右侧时间和用户名的宽度 */
        float: left;
    }

    .comment-metadata {
        position: absolute;
        top: 0;
        right: 0;
        text-align: right;
    }

    .comment-actions {
        margin-top: 10px;
    }

    .comment-actions > span {
        margin-right: 20px;
    }

    .comment-actions > span:last-child {
        margin-right: 0;
    }


</style>
<body>
<div class="overlay"></div>
<div class="gradient-text">评论详情</div>
<%
    // 数据库连接信息
    String url = "jdbc:mysql://localhost:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";
    String activityid = request.getParameter("activity_id");

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // 获取提交的用户名和密码

        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // 准备查询SQL语句
            String sql = "SELECT * FROM comments_interactions where activity_id=? ";
            PreparedStatement selectActivityStmt = conn.prepareStatement(sql);
            selectActivityStmt.setInt(1, Integer.parseInt(activityid)); // 设置查询条件为活动ID
            ResultSet activityResultSet = selectActivityStmt.executeQuery();
%>
<div class="comment-info">
    <ul class="comment-list">
        <% while (activityResultSet.next()) { %>
        <li class="comment-item">
            <div class="comment-content">
                <p><strong></strong> <%= activityResultSet.getString("comment_content") %></p>
            </div>
            <div class="comment-metadata">
                <p><strong></strong> <%= activityResultSet.getString("comment_time") %></p>
                <div class="comment-actions">
                 <span>
                          <strong></strong> <%= activityResultSet.getString("likes_count") %>
                 </span>
                    <span><strong> </strong> <%= activityResultSet.getString("likes_count") %></span>
                    <span><strong> </strong> <%= activityResultSet.getString("replies_count") %></span>
                </div>
            </div>
        </li>
        <% }
        %>
        <%
            System.out.println("Activity ID: " + activityid);
        %>
        <div class="comment-info">
            <ul class="comment-list">
                <li class="comment-item">
                    <form action="submit" method="POST">
                        <input type="hidden" name="username" value="<%= username %>">
                        <input type="hidden" name="activityID" value="<%= activityid %>">
                        <input type="text" name="comment">
                        <input type="submit" value="评论">
                    </form>
                </li>
            </ul>
        </div>
    </ul>
</div>

<%
        }catch (ClassNotFoundException | SQLException e) {
            // 处理异常情况，可以输出到日志或者呈现给用户
            e.printStackTrace();
        }
    }
%>



</body>
</html>




<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>


<%
    session = request.getSession();
    String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>活动详情</title>
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

    .activity-info {
        width: 800px;
        background-color: #ffffff;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        margin-left: 80px;
        margin-right: 80px;
        margin-top: 0px; /* 活动栏距顶部100px */

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

</style>
<body>
<div class="overlay"></div>
<div class="gradient-text">活动详情</div>
<%
    // 数据库连接信息
    String url = "jdbc:mysql://localhost:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";

    try {
        // 加载MySQL的JDBC驱动程序
        Class.forName("com.mysql.jdbc.Driver");
        // 建立数据库连接
        Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

        // 准备查询SQL语句
        String sql = "SELECT * FROM activity_information ";
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

%>
<div class="container">
    <% while (rs.next()) {

        // 循环遍历查询结果集// %>
    <div class="activity-info">
        <h2><%= rs.getString("activity_name") %></h2>
        <p>时间： <%= rs.getString("activity_time") %></p>
        <p>地点： <%= rs.getString("activity_location") %></p>
        <p>内容： <%= rs.getString("activity_content") %></p>
        <p>直播： <%= rs.getBoolean("has_live") ? "是" : "否" %></p>
        <% if (rs.getBoolean("has_live")) { %>
        <p>视频回放链接： <%= rs.getString("video_replay_link") %></p>
        <% } %>
        <p>订阅状态:</p>
        <%
        // 查询是否订阅
        String sqll = "SELECT * FROM activity_registration WHERE user_id = ? AND activity_id = ?";
        // 创建PreparedStatement对象
        stmt = conn.prepareStatement(sqll);
        stmt.setString(1, username);
        stmt.setInt(2, rs.getInt("activity_id"));
        // 执行查询操作
        ResultSet rss = stmt.executeQuery();
        // 如果搜索到的行数大于 0，则表示用户已订阅

            // 如果subscription_status为false，则显示提交按钮
            if (!rss.next()) {
        %>
        <form action="activity" method="post">
            <input type="hidden" name="username" value="<%= username %>">
            <input type="hidden" name="activity_id" value="<%= rs.getInt("activity_id") %>">
            <input type="submit" value="订阅">
        </form>

        <%
            }else{
                %>
        <p>已订阅</p>
            <%
                }
        %>
        <p>热度： <%= rs.getInt("activity_heat_level") %></p>
        <form action="comment" method="post">
            <input type="hidden" name="activity_id" value="<%= rs.getInt("activity_id") %>">
            <input type="submit" value="评论区">
        </form>
    </div>

    <% } // 结束while循环 %>
</div>

<%
        // 关闭资源
        rs.close();
        stmt.close();
        conn.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace(); // 处理异常情况
    }
%>
<%
    String method = request.getMethod(); // 获取请求方法
    if ("POST".equals(method)) {
    // 获取提交的用户名和活动ID
    int activityId = Integer.parseInt(request.getParameter("activity_id"));
    // 数据库连接信息
     url = "jdbc:mysql://localhost:3306/blog";
     dbUsername = "root";
     dbPassword = "666888aa";
    try {
        // 加载MySQL的JDBC驱动程序
        Class.forName("com.mysql.jdbc.Driver");
        // 建立数据库连接
        Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

        // 增加活动热度
        String increaseHeatSql = "UPDATE activity_information SET activity_heat_level = activity_heat_level + 1 WHERE activity_id = ?";
        PreparedStatement increaseHeatStmt = conn.prepareStatement(increaseHeatSql);
        increaseHeatStmt.setInt(1, activityId);
        increaseHeatStmt.executeUpdate();
        increaseHeatStmt.close();

        // 获取当前时间
        Timestamp currentTime = new Timestamp(System.currentTimeMillis());

        // 插入订阅信息
        String insertSubscriptionSql = "INSERT INTO activity_registration (user_id, activity_id, registration_time,registration_channel) VALUES (?, ?,?, ?)";
        PreparedStatement insertSubscriptionStmt = conn.prepareStatement(insertSubscriptionSql);
        insertSubscriptionStmt.setString(1, username);
        insertSubscriptionStmt.setInt(2, activityId);
        insertSubscriptionStmt.setTimestamp(3, currentTime); // 插入当前时间
        insertSubscriptionStmt.setString(4, "web"); // 插入当前时间
        insertSubscriptionStmt.executeUpdate();
        insertSubscriptionStmt.close();

        // 关闭数据库连接
        conn.close();

%>
<script>
    alert("订阅成功！");
    window.location.href = "<%= request.getContextPath() %>/activity"; // 返回活动详情页
</script>
<%
} catch (ClassNotFoundException | SQLException e) {

%>
<script>
    alert("订阅失败！");
    window.location.href = "<%= request.getContextPath() %>/activity"; // 返回活动详情页
</script>
<%
    }
    }
%>
</body>
</html>




<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 数据库连接信息
    String url = "jdbc:mysql://49.232.137.252:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";
session = request.getSession();
String username = (String) session.getAttribute("username");
int score = (int) session.getAttribute("score");
%>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // 获取提交的用户名和密码
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");
        String firm = request.getParameter("firm");
        // 假设你已经建立了数据库连接，并且数据库表名为 user_info

        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // 准备更新SQL语句
            String sql = "UPDATE guest SET password=?, email=?, telephone=? ,firm=? WHERE username=?";

            // 创建PreparedStatement对象
            PreparedStatement stmt = conn.prepareStatement(sql);

            // 设置参数
            stmt.setString(1, password);
            stmt.setString(2, email);
            stmt.setString(3, telephone);
            stmt.setString(4, firm);
            stmt.setString(5, username);

            // 执行更新操作
            int rowsAffected = stmt.executeUpdate();
            // 关闭资源
            stmt.close();
            conn.close();
            // 如果更新成功，弹出成功消息并返回原页面
            if (rowsAffected > 0) {
%>
<script>
    alert("信息修改成功！");
    window.location.href = "<%= request.getContextPath() %>/user";
</script>
<%
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // 处理异常情况
        }
    }
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title  >用户中心</title>
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
        .activity-container {
            flex-grow: 1; /* 让活动容器占据剩余空间 */
            margin-left: 20px; /* 添加左边距，与用户信息区分开 */
        }
        .activity-info {
            width: calc(100% - 40px); /* 让活动信息占据整个可用宽度，并留出左右各20px的空白 */
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 20px; /* 每个活动信息之间留出20px的间距 */
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
</head>

<body>

<div class="overlay"></div>

<div class="gradient-text">用户中心</div>

<div class="container">
    <div class="user-info">
        <h2 style="text-align: center;"><%= username %></h2>
        <h2 style="text-align: center;">积分：<%= score %></h2>
        <form action="score" method="post" style="margin-bottom: 10px">
            <input type="hidden" name="username" value="<%= username %>">
            <input type="submit" value="签到">
        </form>

        <form action="user" method="post">

            <div style="display: flex; align-items: center; margin-bottom: 20px;">
                <label for="email" style="display: inline-block; width: 80px;">邮箱</label>
                <input type="email" id="email" name="email">
            </div>
            <div style="display: flex; align-items: center; margin-bottom: 20px;">
                <label for="password" style="display: inline-block; width: 80px;">密码</label>
                <input type="password" id="password" name="password">
            </div>
            <div style="display: flex; align-items: center; margin-bottom: 20px;">
                <label for="telephone" style="display: inline-block; width: 80px;">电话</label>
                <input type="text" id="telephone" name="telephone">
            </div>

            <div style="display: flex; align-items: center; margin-bottom: 20px;">
                <label for="firm" style="display: inline-block; width: 80px;">公司</label>
                <input type="text" id="firm" name="firm">
            </div>

            <div style="text-align: center;">
                <input type="submit" value="修改信息">
            </div>

        </form>
    </div>

   <div class="activity-container">
    <%
        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // 查询活动订阅信息
            String selectSubscriptionSql = "SELECT * FROM activity_registration WHERE user_id = ?";
            PreparedStatement selectSubscriptionStmt = conn.prepareStatement(selectSubscriptionSql);
            selectSubscriptionStmt.setString(1, username); // 设置查询条件为全局变量username
            ResultSet subscriptionResultSet = selectSubscriptionStmt.executeQuery();

            // 展示订阅信息
            while (subscriptionResultSet.next()) {
                int activityId = subscriptionResultSet.getInt("activity_id");
                Timestamp registrationTime = subscriptionResultSet.getTimestamp("registration_time");

                // 查询活动信息
                String selectActivitySql = "SELECT * FROM activity_information WHERE activity_id = ?";
                PreparedStatement selectActivityStmt = conn.prepareStatement(selectActivitySql);
                selectActivityStmt.setInt(1, activityId); // 设置查询条件为活动ID
                ResultSet activityResultSet = selectActivityStmt.executeQuery();

                // 如果找到了匹配的活动信息，则展示出来
                if (activityResultSet.next()) {
                    String activityName = activityResultSet.getString("activity_name");
                    String activityTime = activityResultSet.getString("activity_time");
                    String activityLocation = activityResultSet.getString("activity_location");
                    String activityContent = activityResultSet.getString("activity_content");
                    boolean hasLive = activityResultSet.getBoolean("has_live");
                    String videoReplayLink = activityResultSet.getString("video_replay_link");
                    boolean subscriptionStatus = activityResultSet.getBoolean("subscription_status");
                    int activityHeatLevel = activityResultSet.getInt("activity_heat_level");
    %>
    <div class="activity-info">
        <h2> <%= activityName %></h2>
        <p>活动时间： <%= activityTime %></p>
        <p>活动地点： <%= activityLocation %></p>
        <p>是否直播： <%= hasLive ? "是" : "否" %></p>
        <% if (hasLive) { %>
        <p>视频回放链接： <%= videoReplayLink %></p>
        <% } %>
        <p>活动热度： <%= activityHeatLevel %></p>
    </div>
    <%
                    // 关闭资源
                    activityResultSet.close();
                    selectActivityStmt.close();
                }
            }

            // 关闭资源
            subscriptionResultSet.close();
            selectSubscriptionStmt.close();
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            // 处理异常情况，可以输出到日志或者呈现给用户
            e.printStackTrace();
        }
    %>

   </div>

</div>

</body>
</html>

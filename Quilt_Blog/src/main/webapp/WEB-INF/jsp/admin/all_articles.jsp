<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 数据库连接信息
    String url = "jdbc:mysql://49.232.137.252:3306/blog";
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


<!DOCTYPE html>
<html>
<style>
    .delete-button {
        background-color: #dc3545; /* 红色背景 */
        color: #fff; /* 白色字体 */
        border: none; /* 移除边框 */
        padding: 10px 20px; /* 添加内边距 */
        border-radius: 5px; /* 圆角 */
        cursor: pointer; /* 鼠标指针样式为手型 */
        transition: background-color 0.3s; /* 添加过渡效果 */
    }

    .delete-button:hover {
        background-color: #c82333; /* 悬停时深红色背景 */
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
</head>

<body>
<!--    列表 -->
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <fieldset class="layui-elem-field layui-field-title">
            <legend>所有活动</legend>
        </fieldset>

        <div class="layui-tab layui-tab-card">
            <form id="articleForm" method="post">
                <input type="hidden" name="currentUrl" id="currentUrl" value="">

                <table class="layui-table">

                    <colgroup>
                        <col width="300">
                        <col width="120">
                        <col width="60">
                        <col width="20">
                        <col width="20">
                        <col width="40">
                        <col width="100">
                        <col width="40">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>举办地点</th>
                        <th>网页链接</th>
                        <th>热度</th>
                        <th>订阅数</th>
                        <th>活动情况</th>
                        <th>发布时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <% while (rs.next()) {
                    String id=rs.getString("activity_id");
                    %>
                        <tr>
                            <td>
                                <a href="#" target="_blank"><%= rs.getString("activity_name") %></a>
                            </td>

                            <td>
                                    <a href="#" target="_blank"> <%= rs.getString("activity_location") %></a>
                            </td>
                            <td>
                                <a href="<%= rs.getString("video_replay_link") %>" target="_blank">链接</a>
                            </td>
                            <td align="center">
                                <span class="layui-badge layui-bg-cyan"><%= rs.getString("activity_heat_level") %></span>
                            </td>
                            <td align="center">
                                <span class="layui-badge"><%= rs.getString("subscription_status") %></span>
                            </td>
                            <td align="center">
                                <%int hasLive = rs.getInt("has_live");
                                if (hasLive == 0) {
                                %>
                                <span class="layui-badge layui-bg-green">结束</span>
                                <%
                                    } else {
                                %>
                                <span class="layui-badge layui-bg-green">进行</span>
                                <%
                                    }
                                 %>
                            </td>
                            <td>
                                <span class="layui-badge"><%= rs.getString("activity_time")%></span>

                            </td>
                            <td align="center">
                                <form  action="article" method="post">
                                    <input type="hidden" name="activity_id" value="<%= id %>">
                                    <input  class="delete-button" type="submit" value="删除">
                                </form>
                            </td>
                        </tr>
                    <% } // 结束while循环 %>
                    </tbody>

                </table>

                <div class="layui-card-body" align="center">
                    <div id="test-laypage-demo1">
                        <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-2">
                            <a class="layui-laypage-prev layui-disabled">首页</a>
                            <a class="layui-laypage-prev layui-disabled">上一页</a>
                            <span class="layui-laypage-curr" style="background-color:#009688;"><em>1</em></span>
                            <!--<a href="/admin/articles/2">下一页</a>-->
                            <a onclick="next()">下一页</a>
                            <script type="text/javascript">
                                function next() {
                                    alert("已到最后一页！");
                                }
                            </script>
                            <a href="/admin/articles/2">尾页</a>

                        </div>
                    </div>
                </div>

            </form>
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
    </div>
</div>

</body>
</html>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // 获取提交的 activity_id
        String activityId = request.getParameter("activity_id");
        System.out.println(activityId);
        // 数据库连接信息
        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
            String sql = "DELETE FROM activity_information WHERE activity_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, activityId);

            int rowsAffected = pstmt.executeUpdate();

            System.out.println("成功删除 " + rowsAffected + " 行记录");
            response.sendRedirect("article");
            // 关闭连接
            pstmt.close();
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            // 处理异常情况
            e.printStackTrace();
        }
    }
%>
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
        Class.forName("com.mysql.cj.jdbc.Driver");
        // 建立数据库连接
        Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
        //评论总数
        String sqll = "SELECT COUNT(*) FROM comments_interactions ";
        PreparedStatement stm = conn.prepareStatement(sqll);
        ResultSet rss = stm.executeQuery();
        int rowCount = 0;
        if (rss.next()) { // 检查结果集是否有数据
            rowCount = rss.getInt(1); // 获取结果集中的第一列的值
        }
        // 准备查询SQL语句
        String sql = "SELECT * FROM comments_interactions ";
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        //






%>
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
    <!--<link id="layuicss-layer" rel="stylesheet"
          href="http://www.sincenovember.top/static/layuiadmin/layui/css/modules/layer/default/layer.css?v=3.1.1"
          media="all">-->

</head>

<body >

<!--    列表 -->
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <fieldset class="layui-elem-field layui-field-title">
            <legend>用户评论</legend>
            <p style="text-indent:30px;">评论总数:(<strong id="count"><%=rowCount%></strong>)</p>
        </fieldset>
        <div class="layui-tab layui-tab-card">
            <form id="articleForm" method="post">
                <input type="hidden" name="currentUrl" id="currentUrl" value="">
                <table class="layui-table">
                    <colgroup>
                        <col width="40">
                        <col width="40">
                        <col width="300">
                        <col width="200">
                        <col width="100">
                        <col width="50">
                    </colgroup>
                    <thead>
                    <tr>
                        <th style="text-align:center;">评论者</th>
                        <th style="text-align:center;"> 头像</th>
                        <th style="text-align:center;">评论内容</th>
                        <th style="text-align:center;">评论页面</th>
                        <th style="text-align:center;">日期</th>
                        <th style="text-align:center;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% while (rs.next()) {
                    %>
                        <tr>
                            <td align="center">
                                <%= rs.getString("user_id") %>
                            </td>
                            <td align="center">
                                <img src="<%=request.getContextPath()%>/static/pic/comment/default.jpg" alt="" width="45" height="45"
                                     style="border-radius: 50%">
                            </td>
                            <td align="center">
                                <%= rs.getString("comment_content") %>
                            </td>
                            <td align="center">
                                <%
                                    String sq = "SELECT * FROM activity_information WHERE activity_id = ?";
                                    PreparedStatement st = conn.prepareStatement(sq);
                                    st.setString(1, rs.getString("activity_id")); // 设置参数
                                    ResultSet r = st.executeQuery();

                                    String data = null;
                                    if (r.next()) {
                                        // 将游标移动到第一行后，再获取数据
                                        data = r.getString("activity_name");
                                        // 使用获取的数据进行后续操作
                                    }
                                %>
                                <%=data%>
                            </td>

                            <td>
                                <%= rs.getString("comment_time") %>
                            </td>
                            <td align="center">
                                <form  action="comments" method="post">
                                    <input type="hidden" name="id" value="<%= rs.getString("comment_id") %>">
                                    <input  class="delete-button" type="submit" value="删除">
                                </form>
                            </td>
                        </tr>

                    <% } // 结束while循环 %>
                    </tbody>
                </table>
            </form>

        </div>



    </div>
</div>




<style id="LAY_layadmin_theme">
    .layui-side-menu,
    .layadmin-pagetabs .layui-tab-title li:after,
    .layadmin-pagetabs .layui-tab-title li.layui-this:after,
    .layui-layer-admin .layui-layer-title,
    .layadmin-side-shrink .layui-side-menu .layui-nav>.layui-nav-item>.layui-nav-child {
        background-color: #20222A !important;
    }

    .layui-nav-tree .layui-this,
    .layui-nav-tree .layui-this>a,
    .layui-nav-tree .layui-nav-child dd.layui-this,
    .layui-nav-tree .layui-nav-child dd.layui-this a {
        background-color: #009688 !important;
    }

    .layui-layout-admin .layui-logo {
        background-color: #20222A !important;
    }
</style>
</body>

</html>
<%}
catch (ClassNotFoundException | SQLException e) {
// 处理异常情况
e.printStackTrace();
}
%>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // 获取提交的 activity_id
        String id = request.getParameter("id");
        System.out.println(id);
        // 数据库连接信息
        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
            String ss = "DELETE FROM comments_interactions WHERE comment_id = ?";
            PreparedStatement p = conn.prepareStatement(ss);
            p.setString(1, id);

            int rowsAffected = p.executeUpdate();

            System.out.println("成功删除 " + rowsAffected + " 行记录");
            response.sendRedirect("comments");
            // 关闭连接
            p.close();
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            // 处理异常情况
            e.printStackTrace();
        }
    }
%>
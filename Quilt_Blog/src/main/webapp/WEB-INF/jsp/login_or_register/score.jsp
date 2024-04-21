<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="static sun.java2d.cmm.ColorTransform.Out" %>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // 获取表单提交的数据
        String username = request.getParameter("username");

        // 数据库连接信息
        String url = "jdbc:mysql://49.232.137.252:3306/blog";
        String dbUsername = "root";
        String dbPassword = "666888aa";
        // 执行插入操作
        try {
            // 加载MySQL的JDBC驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            // 建立数据库连接
            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // 准备插入SQL语句
            String sql = "UPDATE guest SET score = score + 100 WHERE username = ?; ";
            PreparedStatement insertStatement = conn.prepareStatement(sql);
            insertStatement.setString(1, username);
            // 执行插入操作
            int rowsInserted = insertStatement.executeUpdate();

            // 从 session 中获取当前的分数值
            int currentScore = (int) session.getAttribute("score");
            int updatedScore = currentScore + 100;
            session.setAttribute("score", updatedScore);

            // 检查插入是否成功
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().print("<script language='javascript'>" +
                    "alert('签到成功！');" +
                    "window.location.href='expand';</script>')");


            // 关闭数据库连接
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            // 处理异常情况，可以输出到日志或者呈现给用户
            e.printStackTrace();
        }
    }
%>

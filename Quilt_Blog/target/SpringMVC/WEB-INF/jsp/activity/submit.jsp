<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="static sun.java2d.cmm.ColorTransform.Out" %>
<%
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    // 获取表单提交的数据
    String username = request.getParameter("username");
    String activity = request.getParameter("activityID");
    String comment = request.getParameter("comment");
    System.out.println("Activity ID: " + activity);
    System.out.println("Activity ID: " + username);
    // 获取当前时间戳
    Timestamp currentTime = new Timestamp(System.currentTimeMillis());
    // 数据库连接信息
    String url = "jdbc:mysql://localhost:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";
    // 执行插入操作
    try {
      // 加载MySQL的JDBC驱动程序
      Class.forName("com.mysql.jdbc.Driver");
      // 建立数据库连接
      Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

      // 准备插入SQL语句
      String sql = "INSERT INTO comments_interactions (user_id, activity_id, comment_content, comment_time, shares_count, likes_count, replies_count) VALUES (?, ?, ?, ?, 0, 0, 0)";
      PreparedStatement insertStatement = conn.prepareStatement(sql);
      insertStatement.setString(1, username);
      insertStatement.setInt(2, Integer.parseInt(activity));
      insertStatement.setString(3, comment);
      insertStatement.setTimestamp(4, currentTime);

      // 执行插入操作
      int rowsInserted = insertStatement.executeUpdate();

      // 检查插入是否成功
      if (rowsInserted > 0) {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script language='javascript'>" +
                "alert('评论成功！');" );
      } else {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script language='javascript'>" +
                "alert('评论失败！');" );
      }

      // 关闭数据库连接
      conn.close();
    } catch (ClassNotFoundException | SQLException e) {
      // 处理异常情况，可以输出到日志或者呈现给用户
      e.printStackTrace();
    }
  }
%>

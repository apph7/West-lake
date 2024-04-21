<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">

<%
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    // 获取提交的用户名和密码
    String username = request.getParameter("userName");
    String password = request.getParameter("userPass");
    String email = request.getParameter("email");
    String telephone= request.getParameter("telephone");
    // 假设你已经建立了数据库连接，并且数据库表名为 user_info
    // 你需要根据实际情况修改以下连接数据库的代码
    String url = "jdbc:mysql://49.232.137.252:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

      // 查询已有行数目
      String countQuery = "SELECT COUNT(*) FROM guest";
      PreparedStatement countStmt = conn.prepareStatement(countQuery);
      ResultSet countResult = countStmt.executeQuery();
      countResult.next();
      int rowCount = countResult.getInt(1);

      // 插入新记录，id 等于已有行数目加一
      String insertQuery = "INSERT INTO guest (id, username, password, email,telephone) VALUES (?, ?, ?, ?,?)";
      PreparedStatement insertStmt = conn.prepareStatement(insertQuery);
      insertStmt.setInt(1, rowCount + 1); // 设置 id 的值为已有行数目加一
      insertStmt.setString(2, username);
      insertStmt.setString(3, password);
      insertStmt.setString(4, email); // email
      insertStmt.setString(5, telephone); // email

      // 执行插入操作
      int rowsAffected = insertStmt.executeUpdate();
      if (rowsAffected > 0) {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script language='javascript'>" +
                "alert('注册成功！');" +
                "window.location.href='guest';</script>')");
      } else {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script language='javascript'>" +
                "alert('注册失败！');" +
                "window.location.href='register';</script>')");

      }
      // 关闭资源
      countResult.close();
      countStmt.close();
      insertStmt.close();
      conn.close();

    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace(); // 处理异常情况
    }
  }
%>


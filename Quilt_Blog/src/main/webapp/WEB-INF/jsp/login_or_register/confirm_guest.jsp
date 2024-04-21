<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<%

  if ("POST".equalsIgnoreCase(request.getMethod())) {
    // 获取提交的用户名和密码
    String username = request.getParameter("userName");
    String password = request.getParameter("userPass");
    // 假设你已经建立了数据库连接，并且数据库表名为 user_info
    // 你需要根据实际情况修改以下连接数据库的代码
    String url = "jdbc:mysql://49.232.137.252:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";

    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);

      String selectQuery = "SELECT * FROM guest WHERE username=? AND password=?";
      PreparedStatement selectStmt = conn.prepareStatement(selectQuery);
      selectStmt.setString(1, username);
      selectStmt.setString(2, password);
      ResultSet selectResult = selectStmt.executeQuery();

      if (selectResult.next()) {
        // 登录成功，将用户名和密码设置为会话变量
        session = request.getSession();
        session.setAttribute("username", username);
        session.setAttribute("password", password);
        int score = selectResult.getInt("score");
        session.setAttribute("score", score);

        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script language='javascript'>" +
                "window.location.href='expand';</script>')");
      } else {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("<script language='javascript'>" +
                "alert('您输入的账号或密码错误，请重新输入！');" +
                "window.location.href='guest';</script>')");
      }

      conn.close();

    } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace(); // 处理异常情况
    }
  }
%>

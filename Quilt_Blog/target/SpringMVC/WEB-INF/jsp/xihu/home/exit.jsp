<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Session</title>
</head>
<body>
<%
    // 删除 session 中的 username 变量
    session.removeAttribute("username");
%>

<%
    // 重定向到 'index' 页面
    response.sendRedirect("index");
%>
</body>
</html>

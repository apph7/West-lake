<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<script>
  //  ================ 浏览器图标 ====================
  let favicon2 = document.createElement('link');
  favicon2.rel = 'xihulunjian icon';
  favicon2.href = '<%=request.getContextPath()%>/static/achievement/img/smallLogo.png';
  document.head.appendChild(favicon2);
</script>
<%
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    // 获取表单提交的数据
    String username = request.getParameter("username");
    String comment = request.getParameter("comment");
    System.out.println(username);
    // 获取当前时间戳
    Timestamp currentTime = new Timestamp(System.currentTimeMillis());
    // 数据库连接信息
    String url = "jdbc:mysql://49.232.137.252:3306/blog";
    String dbUsername = "root";
    String dbPassword = "666888aa";
    // 执行插入操作
    try {
      // 加载MySQL的JDBC驱动程序
      Class.forName("com.mysql.cj.jdbc.Driver");
      // 建立数据库连接
      Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
      // 准备插入SQL语句
      String sql = "INSERT INTO comments_interactions (user_id,activity_id, comment_content, comment_time, shares_count, likes_count) VALUES (?,0, ?, ?, 0, 0)";
      PreparedStatement insertStatement = conn.prepareStatement(sql);
      insertStatement.setString(1, username);
      insertStatement.setString(2, comment);
      insertStatement.setTimestamp(3, currentTime);
      // 执行插入操作
      int rowsInserted = insertStatement.executeUpdate();
      // 检查插入是否成功
      if (rowsInserted >= 0) {
%>
<style>
  /* 弹窗样式 */
  .modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0, 0, 0, 0.5); /* 半透明黑色背景 */
  }

  /* 弹窗内容样式 */
  .modal-content {
    background-color: #f9f9f9; /* 浅灰色背景 */
    margin: 10% auto; /* 距离顶部 10% 并水平居中 */
    padding: 20px;
    border: 1px solid #ddd; /* 淡灰色边框 */
    width: 50%; /* 弹窗宽度为页面的一半 */
    border-radius: 10px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-align: center;
  }

  /* 关闭按钮样式 */
  .close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
  }

  .close:hover,
  .close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
  }
</style>
<div id="myModal" class="modal">
  <!-- 弹窗内容 -->
  <div class="modal-content">
    <!-- 关闭按钮 -->
    <span class="close" onclick="closeModal()">&times;</span>
    <!-- 提示文本 -->
    <p>添加成功！</p>
  </div>
</div>

<script>
  // 设置变量跟踪弹窗状态
  var showModal = true;
  // 显示弹窗
  document.getElementById('myModal').style.display = 'block';
  // 关闭弹窗函数
  function closeModal() {
    showModal = false;
    document.getElementById('myModal').style.display = 'none';
    window.location.href = 'expand';
  }
  // 如果单击弹窗外部并且弹窗应该显示，则关闭弹窗并刷新页面
  window.onclick = function(event) {
    if (event.target == document.getElementById('myModal') && showModal) {
      closeModal();
    }
  }
</script>
<%
      }
    } catch (ClassNotFoundException | SQLException e) {
      // 处理异常情况
      e.printStackTrace();
    }
  }
%>




<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<script>
    //  ================ 浏览器图标 ====================
    let favicon2 = document.createElement('link');
    favicon2.rel = 'xihulunjian icon';
    favicon2.href = '<%=request.getContextPath()%>/static/achievement/img/smallLogo.png';
    document.head.appendChild(favicon2);
</script>
<%
    session = request.getSession();
    String username = (String) session.getAttribute("username");
%>
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
<!-- 7.8.10 -->
<!DOCTYPE html>
<html lang="en">
<style>

</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>西湖论战·数字安全大会</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/exciting-activity/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/exciting-activity/css/ac.css">

</head>
<body>
<!-- 预加载 -->
<div class="preloader" data-preloader>
    <div class="preloader-circle"></div>
</div>
<!-- 头部菜单 -->
<header class="header" id="header">
    <nav class="nav">
        <a href="index" class="nav__logo">
            <img src="<%=request.getContextPath()%>/static/achievement/img/logo.png" alt="">
        </a>
        <div class="nav__menu" id="nav-menu">
            <ul class="nav__list">
                <li class="nav__item">
                    <a href="index" class="nav__link">首页</a>
                </li>

                <li class="nav__item">
                    <a href="ConferenceAgenda" class="nav__link">大会议程</a>
                </li>

                <li class="nav__item">
                    <a href="About" class="nav__link"> 关于大会</a>
                </li>

                <li class="nav__item">
                    <a href="expert" class="nav__link">大咖云集</a>
                </li>

                <li class="nav__item">
                    <a href="ac" class="nav__link active">精彩活动</a>
                </li>
                <li class="nav__item">
                    <a href="Exhibitor" class="nav__link"> 展商风采</a>
                </li>

                <li class="nav__item">
                    <a href="newproduct" class="nav__link">成果发布 </a>
                </li>

                <li class="nav__item">
                    <a href="media" class="nav__link">媒体中心</a>
                </li>
                <li class="nav__item">
                    <a href="hall" class="nav__link  ">参会指南</a>
                </li>
            </ul>

            <!-- Close button -->
            <div class="nav__close" id="nav-close">
                <i class="ri-close-line"></i>
            </div>
        </div>

        <div class="nav__actions">
            <!-- Login button -->
            <i class="ri-user-line nav__login" id="login-btn"></i>
            <span class="nav__login_text" id="notLogin">
               <a href="guest">登录</a>
               <a href="#">|</a>
               <a href="register">注册</a>
              </span>
            <span class="nav__login_text fade" id="hadLogin">
               <%
                   username = (String) session.getAttribute("username");
                   String link = (username != null) ? "expand" : "guest";
               %>
               <a href="<%= link %>">个人中心</a>
               <a href="">|</a>
               <a href="index">退出</a>
              </span>
            <!-- Toggle button -->
            <div class="nav__toggle" id="nav-toggle">
                <i class="ri-menu-line"></i>
            </div>
        </div>
    </nav>
</header>
<!-- 大屏 -->
    <div class="acBox">
      <!-- 活动时间 1
         、地点1
         、内容、1
         直播、视频回放
         、订阅、1
         热度  1
       -->
       <div class="actitle">
         精彩活动
       </div>
       <div class="acSort">
         <span class="active">全部</span>
         <span>格致论道</span>
         <span>西湖论剑安全特训营</span> 
         <span>新品发布</span>
         <span>第二直播间</span> 
         <span>掌上论剑</span>
         <span>西湖论剑十周年回顾</span>
      </div>
      <div class="ac-container">
         <div class="grid" id="acGrid">

             <% while (rs.next()) {
                 // 循环遍历查询结果集// %>
             <div class="card"><img class="card__img" src="https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2250&amp;q=80" alt="Snowy Mountains">
                 <div class="card__content">
                     <h1 class="card__header"><%= rs.getString("activity_name") %></h1>
                     <div class="card__text-wrapper">
                         <p class="card__text"><%= rs.getString("activity_content") %></p>
                         <p class="card__text"><i class="ri-time-line ac-icon"> <%= rs.getString("activity_time") %></i><br>
                             <i class="ri-map-pin-line  ac-icon"> <%= rs.getString("activity_location") %></i><br>
                             <i class="ri-map-pin-line ac-icon">线上+线下</i><br>
                             <i class="ri-flag-line ac-icon"><%= rs.getInt("activity_heat_level") %></i><br>
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
                             <i class="ri-magic-fill ac-d-icon">
                         <form style="border: none;"action="ac" method="post">
                             <input type="hidden" name="username" value="<%= username %>">
                             <input type="hidden" name="activity_id" value="<%= rs.getInt("activity_id") %>">
                             <input type="submit"style="border: none;"  value="订阅">
                         </form>
                             </i>

                         <%
                         }else{
                         %>
                         <i class="ri-magic-fill ac-d-icon">已订阅</i>
                         <%
                             }
                         %>
                             <i class="ri-magic-fill ac-d-icon">
                         <form style="border: none;" action="comment" method="post">
                             <input type="hidden" name="activity_id" value="<%= rs.getInt("activity_id") %>">
                             <input type="submit"style="border: none;"  value="评论区">
                         </form>
                             </i>
                         </p>

                         <form style="border: none;"action="train" method="post">
                             <input type="hidden" name="activity_id" value="<%= rs.getInt("activity_id") %>">
                             <input class="card__btn" type="submit"style="border: none;"  value="了解详情">
                         </form>
                     </div>
                 </div>
             </div>
             <% } // 结束while循环 %>


          </div>
      </div>
    </div>

    <!-- 右侧圆形菜单 -->
    <div class="rightBarBox">
      <div class="rightBar">
         <div class="rightBar-toggler">
            <i class="ri-add-fill "></i>
          </div>
         <ul class="rightBar-ul">
        <li class="rightBar-item"
        >  <div>
             <i class="ri-share-line bar-icon"></i>
          </div>
           
           <div class="bar-text">
           <a href="#" >分享海报</a>
           </div>
        </li>
        <li class="rightBar-item" 
        >
        <div>
         <i class="ri-rss-fill bar-icon"></i>
        </div>
          
           <div class="bar-text">
           <a href="#" >我的订阅</a>
           </div>
        </li>
        <li class="rightBar-item"
        >
          <div>
            <i class="ri-stack-fill bar-icon"></i>
          </div>
           <div class="bar-text">
           <a href="#" >互动有礼</a>
           </div>
        </li>
        <li class="rightBar-item wxVisit">
         <div>
            <i class="ri-links-line bar-icon"></i>
         </div>
           <div class="bar-text">
           <a href="#" >小程序访问</a>
         </div>
        </li>
        <li class="rightBar-item" onclick="scrollToTop">
         <div>
            <i class="ri-skip-up-line bar-icon"></i>
         </div>
           <div class="bar-text">
            <a href="#">返回顶部</a>
           </div> 
        </li>
       
        </ul>

   </div>
    </div>
   
    <!-- footer  底部-->
    <footer class="new_footer_area bg_color">
      <div class="new_footer_top">
          <div class="footer_container">
              <div class="footer_row">
                  <div class="row_box">
                      <div class="f_widget about-widget" >
                        <h3 class="f-title f_600 t_color f_size_18">指导单位</h3>
                        <ul class="list-unstyled f_list">
                            <li><a href="#">浙江省互联网信息办公室</a></li>
                            <li><a href="#">浙江省经济和信息化厅</a></li>
                            <li><a href="#">浙江省公安厅</a></li>
                            <li><a href="#">浙江省发展和改革委员会</a></li>
                            <li><a href="#">浙江省通信管理局</a></li>
                        </ul>
                    </div>
                  </div>
                  <div class="row_box">
                      <div class="f_widget about-widget" >
                          <h3 class="f-title f_600 t_color f_size_18 less_bottom">主办单位</h3>
                          <ul class="list-unstyled f_list someDistance">
                              <li><a href="#">杭州市人民政府</a></li>
                          </ul>

                          <h3 class="f-title f_600 t_color f_size_18 less_bottom">战略合作媒体</h3>
                          <ul class="list-unstyled f_list someDistance">
                              <li><a href="#">新华网</a></li>
                          </ul>
                          <h3 class="f-title f_600 t_color f_size_18 less_bottom">特别支持媒体</h3>
                          <ul class="list-unstyled f_list someDistance">
                              <li><a href="#">光明网</a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="row_box">
                      <div class="f_widget about-widget" >
                          <h3 class="f-title f_600 t_color f_size_18">联合主办单位</h3>
                          <ul class="list-unstyled f_list">
                            <li>
                                <a href="#" target="_blank">中国信息通信研究院</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">中国网络空间研究院</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">国家工业信息安全发展研究中心</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">中国电子技术标准化研究院</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">工业和信息化部教育与考试中心</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">杭州市滨江区人民政府</a>
                            </li>
                          </ul>
                      </div>
                  </div>
                  <div class="row_box">
                      <div class="f_widget about-widget" >
                        <h3 class="f-title f_600 t_color f_size_18">承办单位</h3>
                        <ul class="list-unstyled f_list">
                            <li><a href="#">杭州市互联网信息办公室</a></li>
                            <li>
                                <a href="#" target="_blank">杭州市经济和信息化局</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">杭州市公安局</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">杭州市发展和改革委员会</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">浙江省网络空间安全协会</a>
                            </li>
                            <li>
                                <a href="#" target="_blank">安恒信息</a>
                            </li>
                        </ul>
                    </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="footer_bottom">
          <div class="footer_container foot_box">
              <div class="footer_bottom_left footer_bottom_box">
                <img src="<%=request.getContextPath()%>/static/exciting-activity/img/logo_bottom.png" alt="">
                <span><a href="#">隐私协议</a>|<a href="#">服务条款</a></span>
              </div>
              <div class="footer_bottom_center footer_bottom_box">
                <ul class="footer_bottom__list">
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">首页</a>
                    </li>
   
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">大会议程</a>
                    </li>
   
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link"> 关于大会</a>
                    </li>
   
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">大咖云集</a>
                    </li>
   
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">精彩活动</a>
                    </li>
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link"> 展商风采</a>
                    </li>
   
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">成果发布 </a>
                    </li>
   
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">媒体中心</a>
                    </li>
                    <li class="bottom__list__item">
                       <a href="#" class="bottom__link">参会指南</a>
                    </li>
                 </ul>
              </div>

              <div class="footer_bottom_right footer_bottom_box">
                  <img src="<%=request.getContextPath()%>/static/exciting-activity/img/wx.webp" alt="">
              </div>
          </div>
      </div>
      <div class="foot">
        <div>© 杭州安恒信息技术股份有限公司</div>
        <div>浙ICP备09102757号-28</div>
        <div>浙公网安备 33010802009170号</div>
      </div>
  </footer>
</body>
<script>


    /*=============== SHOW MENU ===============*/
    const navMenu = document.getElementById('nav-menu'),
        navToggle = document.getElementById('nav-toggle'),
        navClose = document.getElementById('nav-close')

    /* Menu show */
    navToggle.addEventListener('click', () =>{
        navMenu.classList.add('show-menu')
    })

    /* Menu hidden */
    navClose.addEventListener('click', () =>{
        navMenu.classList.remove('show-menu')
    })

    //  ============   登录未登录的切换 ==================
    const notLogin = document.getElementById('notLogin'),
        hadLogin = document.getElementById('hadLogin')
    let UserStatus = true
    if(UserStatus){
        // 已登陆
        notLogin.classList.add("fade")
        hadLogin.classList.remove("fade")
    }else{
        // 未登录
        hadLogin.classList.add("fade")
        notLogin.classList.remove("fade")
    }


    // =================右菜单 ============
    let rightBarToggle = document.querySelector('.rightBar-toggler')
    let rightBarMenu = document.querySelector('.rightBar')
    let rightBarUl = document.querySelector('.rightBar-ul')
    // .rightBar-item
    rightBarToggle.addEventListener('click',function(){
        rightBarMenu.classList.toggle('active')
        rightBarToggle.classList.toggle('active')
        rightBarUl.classList.toggle('active')
    })
    function removeRightBar(){
        rightBarMenu.classList.remove('active')
        rightBarToggle.classList.remove('active')
        rightBarUl.classList.remove('active')
    }
    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            rightBarMenu.classList.add("show");
        } else {
            rightBarMenu.classList.remove("show");
            removeRightBar()
        }
    }
    // 初始化页面加载完成后调用scrollFunction函数
    window.onscroll = function () {
        scrollFunction();
    };
    // 返回顶部
    function scrollToTop() {
        window.scroll({ top: 0, behavior: 'smooth' });
    }


    // ================= 加载 ====================
    const preloader = document.querySelector("[data-preloader]");

    window.addEventListener("load", function () {
        preloader.classList.add("loaded");
        document.body.classList.add("loaded");
    });
</script>

</html>

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
         url = "jdbc:mysql://49.232.137.252:3306/blog";
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
    window.location.href = "<%= request.getContextPath() %>/ac"; // 返回活动详情页
</script>
<%
} catch (ClassNotFoundException | SQLException e) {

%>
<script>
    alert("订阅失败！");
    window.location.href = "<%= request.getContextPath() %>/ac"; // 返回活动详情页
</script>
<%
        }
    }
%>
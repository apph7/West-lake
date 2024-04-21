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
    ResultSet rs = null;
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String id = request.getParameter("activity_id");
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
            String sql = "SELECT * FROM activity_information where activity_id=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            rs = stmt.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>西湖论战·数字安全大会</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/exciting-activity/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/exciting-activity/css/train.css">

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

   <%
       if (rs.next()) {
   %>

      <div class="blockTop"></div>
      <div class="news-bk">
          <div class="newsTopInfo">
           <div class="m-news-title">
             <%=rs.getString("activity_name")%>
           </div>
          </div>
      </div>
      <div class="m-news-content">
       <article>
           <div class="wrap">
             <h2>活动地点</h2>
             <p><%=rs.getString("activity_location")%>  </p>
             <hr />
             <h2>活动流程</h2> 
             <p><%=rs.getString("activity_content")%></p>
             <p>网络安全应急响应基础,
                流量分析技术match,
                日志分析技术,
                主机入侵排查技术,
                网络安全应急响应事件处置</p>
             <p>线下部分课程大纲</p>
             <p>5月4日:第一章 识别(Identification),第二章 防护（Protection）,第三章 监测（Detection/Monitoring）</p>
             <p>5月5日:第四章 响应（Response）,第五章 运营（Operation）</p>
             <p>5月6日:蓝队运营场景实战演练</p>
             <p>培训人数：30人（可联系主办方，私信培训课表）</p>
             <hr />
         
             <h2>获得证书</h2>
             <p>工信部认证-人才能力提升证书</p>
            
             <hr />
             <h2>培训对象</h2>
             <p>本次培训面向网络安全从业人员，特别是负责网络安全防护的蓝队人员，以及有意向从事蓝队工作的人员。
             <p>培训所需具备的基础能力：应具备网络安全的基本知识，了解常见的网络攻击手法和防御策略，掌握基本的漏洞分析、利用和防御技能，能够进行简单的应急响应和取证分析。</p>
             <hr />
         
             <h2>购票须知</h2>
             <p>1.报名方式：点击下方【立即报名】</p>
             <p>2.报名须知：凭活动行【电子票】验票签到入场；</p>
             <p>3.门票优惠：4月10日前购票可享受早鸟票7折优惠；</p>
             <p>4.购买团体票可享受5折优惠；</p>
             <p>5.买线下课程，送线上培训课程（半年有效期哦）；</p>
             <p>6.如果购票有疑问，请联系主办方：13810244613（微信同号）</p>
             <hr />
             <h2>立即报名</h2>
             <img src="<%=request.getContextPath()%>/static/exciting-activity/ac/actrain1.jpg" alt="">
             <p><i class="ri-time-line"></i>2023年5月4日 9:00 ～ 2023年5月6日 18:00</p>
             <p> <i class="ri-map-pin-line ac-icon"></i>（浙江杭州）(浙江杭州)西兴路与联慧街交叉口中威电子对面东侧安恒大厦2楼</p>
              <p>活动票种:线上基础课2888</p>
              <p>活动票种:线下技能课12888</p>
              <p>活动票种:线上+线下 12888</p>
              <p>如需退款,请于活动开始前的24小时之前提交申请,活动开始前的24小时内不接受退款。退款时，将收取票价的10%作为手续费。</p>
              <p><span id="ac-train">立即报名</span></p>
              <hr />
              <h2>关于主办方</h2>
              <img src="<%=request.getContextPath()%>/static/exciting-activity/ac/zbf.jpg" alt="">
              <p>西湖论剑安全特训营是国内领先的数字安全人才交流、孵化及实训平台，致力于成为数字时代的“数字安全人才助推器”。以体系化课程、实战化导向为显著特色，服务于数字化转型背景下的政府、企事业单位，为其培养数字安全的管理者、实战人才提供有力支撑，为国家数字安全人才发展持续输出强有力的“燃料”。</p>
              <p>作为“西湖论剑·网络安全大会”的重要组成部分，西湖论剑安全特训营基于安恒信息数字人才创研院多年积累的讲师优势、优秀案例、课程资源和专业平台，将针对不同行业的不同人群持续推出围绕战略、技术、行业热点、科普、专项定制等特色培训，力求满足数字安全从业者在不同阶段的需求。</p>
              <hr />
            </div>
        </article>
      </div>

      <div class="ac-pay fade" id="ac-pay">
        <div class="container">  
            <form id="contact" action="" method="post">
              <h3>报名</h3>
              <h4>网络安全训练营</h4>
              <fieldset>
                <input placeholder="真实姓名" type="text" name="ac-name" required autofocus id="ac-name">
              </fieldset>
              <fieldset>
                <input placeholder="邮箱" 
                type="email"
                 name="ac-email"
                  required 
                id="ac-email">
              </fieldset>
              <fieldset>
                <input placeholder="手机号" 
                id="ac-iphone" type="tel"
                 name="ac-iphone" 
                 class="ac-iphone"
                 tabindex="3"
                  required >
              </fieldset>
              <fieldset>
                <input placeholder="身份证号" type="text" name="ac-personid" required autofocus id="ac-personid">
              </fieldset>
              <fieldset>
                请选择票种
                <br>
               <input type="radio" name="acpayType" value="0">线上基础课2888
               <br>
               <input type="radio" name="acpayType" value="1">线下课12888
               <br>
               <input type="radio" name="acpayType" value="1">线上+线下课12888
              </fieldset>
              <fieldset>
                <textarea placeholder="个人介绍与工作职务" tabindex="5" required id="ac-text"></textarea>
              </fieldset>
              <fieldset>
                <input type="checkbox" name="ac-check" id="must-checked" checked>我已阅读并同意服务协议及隐私政策
              </fieldset>
              <fieldset>
                <span id="ac-tips"></span>
              </fieldset>
              <fieldset>
                <button name="submitButton" type="button" id="contact-submit" data-submit="...Sending">提交</button>
                <button name="cancleAc" type="button" id="contact-cancle" class="ac-cancle">取消</button>
              </fieldset>
            </form>
            <form action="" id="verifyForm" class="fade">
              <span>手机号:</span><span class="iphone-repeate"></span>
               
               <span class="count">发送验证码</span>
               <br>
               <fieldset>
                <input type="text" id="verifyCode" placeholder="请输入验证码"
                name="verifyCode"
                >
               </fieldset>
               
               <br> 
               <span id="tip3"></span>
               <div>
                <button type="button" class="ac-sure">确定</button>
              
                 <button type="button" class="ac-cancle">取消</button>
               </div>
               
              </form>
              <div class="ac-money fade">
                <div>
                  <span>微信</span>
                  <img src="<%=request.getContextPath()%>/static/exciting-activity/ac/activity_banner.jpg" alt="">
                </div>
                <div>
                  <span>支付宝</span>
                  <img src="<%=request.getContextPath()%>/static/exciting-activity/ac/zbf.jpg" alt="">
                </div>
              </div>
          </div>
        <!-- <div class="ac-pay-content">
            请填写表单
            <form id="ac-payForm">
               <input type="text" name="acpayName" placeholder="姓名">
               <br>
               <input type="number" name="acpayIphone" placeholder="手机号">

               <br>
               请选择票种
               <input type="radio" name="acpayType" value="0">

            </form>
        </div> -->
      </div>


   <%
       }
   %>



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

  <script src="<%=request.getContextPath()%>/static/exciting-activity/js/train.js"></script>

  </html>
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
<%@ page contentType="text/html;charset=UTF-8" %>
<!-- 7.8.10 -->
<script>
    //  ================ 浏览器图标 ====================
    let favicon2 = document.createElement('link');
    favicon2.rel = 'xihulunjian icon';
    favicon2.href = '<%=request.getContextPath()%>/static/achievement/img/smallLogo.png';
    document.head.appendChild(favicon2);
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>西湖论战·数字安全大会</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/agenda/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/agenda/css/ca.css">
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
                    <a href="ConferenceAgenda" class="nav__link active">大会议程</a>
                </li>

                <li class="nav__item">
                    <a href="About" class="nav__link"> 关于大会</a>
                </li>

                <li class="nav__item">
                    <a href="expert" class="nav__link">大咖云集</a>
                </li>

                <li class="nav__item">
                    <a href="ac" class="nav__link">精彩活动</a>
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
                   String username = (String) session.getAttribute("username");
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

    <!--  -->
    <div class="caBox">
        <div class="caTitle">大会议程</div>
        <div class="ca-box">
         <div class="caTypeBox">
            <div class="ca-dateType">
               <span class="active">全部</span>
               <span>5月5日</span>
               <span>5月6日</span>
               <span>5月7日</span>
               <span>5月8日</span>
            </div>
            <!-- <div class="ca-agendaType">
               <span >全部类型</span>
               <span>主论坛</span>
               <span>平行论坛</span>
               <span>科普论坛</span>
               <span>掌上论剑</span>
               <span>生态合作论坛</span>
            </div> -->
         </div>
          <div class="ca-content">
            <div class="ca-c-item">
               <div class="ca-c-title">
                  <div class="catit">
                     <p content="5月5日 下午">5月5日 下午</p>
                   </div>
               </div>
               <div class="ca-c-container">
                  <a class="card1" href="#">
                     <h3>格致论道@西湖论剑</h3>
                     <p class="small"><i class="ri-time-line"></i>09:00 - 12:00 </p>
                     <p class="small"> <i class="ri-map-pin-time-line"></i>杭州洲际酒店·杭州厅456</p>

                     <div class="go-corner" href="#">
                       <div class="go-arrow">
                        <i class="ri-logout-box-r-line"></i>
                       </div>
                     </div>
                   </a>

                   <a class="card1" href="#">
                     <h3>开幕式及全体大会</h3>
                     <p class="small"><i class="ri-time-line"></i>09:00 - 12:00</p>
                     <p class="small"> <i class="ri-map-pin-time-line"></i>杭州洲际酒店·杭州厅</p>
                     <div class="go-corner" href="#">
                       <div class="go-arrow">
                        <i class="ri-logout-box-r-line"></i>
                       </div>
                     </div>
                   </a>

               </div>
            </div>
            <div class="ca-c-item">
               <div class="ca-c-title">
                  <div class="catit">
                     <p content="5月6日 上午">5月6日 上午</p>
                   </div>
               </div>
               <div class="ca-c-container">
                  <a class="card1" href="#">
                     <h3>95后极客青年Talk</h3>
                     <p class="small"><i class="ri-time-line"></i>10:00 - 10:30 </p>
                     <p class="small"> <i class="ri-map-pin-time-line"></i>线上直播</p>

                     <div class="go-corner" href="#">
                       <div class="go-arrow">
                        <i class="ri-logout-box-r-line"></i>
                       </div>
                     </div>
                   </a>
               </div>
            </div>
            <div class="ca-c-item">
               <div class="ca-c-title">
                  <div class="catit">
                     <p content="5月6日 下午">5月6日 下午</p>
                   </div>
               </div>
               <div class="ca-c-container">
                  <a class="card1" href="#">
                     <h3>当科幻照进现实我们会更安全吗？</h3>
                     <p class="small"><i class="ri-time-line"></i>13:00 - 13:30 </p>
                     <p class="small"> <i class="ri-map-pin-time-line"></i>线上直播</p>

                     <div class="go-corner" href="#">
                       <div class="go-arrow">
                        <i class="ri-logout-box-r-line"></i>
                       </div>
                     </div>
                   </a>

                   <a class="card1" href="#">
                     <h3>人工智能会颠覆安全行业吗？</h3>
                     <p class="small"><i class="ri-time-line"></i>15:00 - 15:30 </p>
                     <p class="small"> <i class="ri-map-pin-time-line"></i>线上直播</p>

                     <div class="go-corner" href="#">
                       <div class="go-arrow">
                        <i class="ri-logout-box-r-line"></i>
                       </div>
                     </div>
                   </a>

                   <a class="card1" href="#">
                     <h3>反诈直播间@西湖论剑</h3>
                     <p class="small"><i class="ri-time-line"></i>16:00 - 16:30</p>
                     <p class="small"> <i class="ri-map-pin-time-line"></i>线上直播</p>

                     <div class="go-corner" href="#">
                       <div class="go-arrow">
                        <i class="ri-logout-box-r-line"></i>
                       </div>
                     </div>
                   </a>
               </div>
            </div>
          </div>
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
                <img src="<%=request.getContextPath()%>/static/agenda/img/logo_bottom.png" alt="">
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
                  <img src="<%=request.getContextPath()%>/static/agenda/img/wx.webp" alt="">
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

<script src="<%=request.getContextPath()%>/static/agenda/js/ca.js"></script>
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
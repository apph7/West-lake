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
    <title>西湖论战·大咖云集</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/agenda/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/agenda/css/expert.css">

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
                    <a href="expert" class="nav__link active">大咖云集</a>
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
   <div class="e-blockTop"></div>
    <!-- 专家委员会 -->
    <div class="e-expertBox">
      <div class="e-expertTitle">专家委员会</div>
      <div class="swiper mySwiper">
         <div class="swiper-wrapper">
           <div class="swiper-slide">
             <img src="<%=request.getContextPath()%>/static/agenda/expert/ep1.png"/>
             <div>
               <h2>左晓栋</h2>
               <p>中国科学技术大学网络空间安全学院教授</p>
             </div>
           </div>
           <div class="swiper-slide">
             <img src="<%=request.getContextPath()%>/static/agenda/expert/ep2.jpg" />
             <div>
               <h2>崔光耀</h2>
               <p>《中国信息安全》杂志原主编</p>
             </div>
           </div>
           <div class="swiper-slide">
             <img src="<%=request.getContextPath()%>/static/agenda/expert/ep3.jpg"  />
             <div>
               <h2>顾炳中</h2>
               <p>中国计算机用户协会理事长</p>
             </div>
           </div>
           <div class="swiper-slide">
             <img src="<%=request.getContextPath()%>/static/agenda/expert/ep4.jpg"/>
             <div>
               <h2>李新友</h2>
               <p>国家信息中心研究员</p>
             </div>
           </div>
           <div class="swiper-slide">
             <img src="<%=request.getContextPath()%>/static/agenda/expert/ep5.jpg" />
             <div>
               <h2>曲胜</h2>
               <p>中国能源研究会能源网络安全技术研究中心常务副主任</p>
             </div>
           </div>
           <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/agenda/expert/ep6.jpg" />
            <div>
              <h2>王秉政</h2>
              <p>全国信安标委成员</p>
            </div>
          </div>
          <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/agenda/expert/ep7.jpg" />
            <div>
              <h2>许玉娜</h2>
              <p>中国网络安全产业联盟副秘书长</p>
            </div>
          </div>
          <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/agenda/expert/ep8.jpg" />
            <div>
              <h2>严明</h2>
              <p>中国计算机学会计算机安全专委会荣誉主任</p>
            </div>
          </div>
         </div>
       </div>
    </div>

    <!-- 演讲嘉宾 -->
<div class="e-speaker">
   <div class="e-speakerTitle">演讲嘉宾</div>
   <div class="e-speakerType">
      <span class="active">全部</span>
       <span>5月5日</span>
       <span>5月7日</span>
       <span>5月8日</span>
   </div>
   <div class="wrapper">
    <div class="container" id="speaker-container">
      <a href="#">
      <div class="people-card">
        <div class="image">
          <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker1.webp" />
        </div>
        <div class="name">邬贺铨</div>
        <div class="title">中国工程院院士、中国互联网协会咨询委员会主任</div>
      </div>
      </a>
      <a href="#">
      <div class="people-card">
        <div class="image">
          <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker2.webp" />
        </div>
        <div class="name">
         沈昌祥
        </div>
        <div class="title">中国工程院院士</div>
      </div>
      </a>
      <a href="#">
      <div class="people-card">
      <div class="image">
        <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker3.webp" />
      </div>
      <div class="name">谭建荣</div>
      <div class="title">中国工程院院士</div>
      
    </div>
      </a>
    <a href="#">
      <div class="people-card">
      <div class="image">
        <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker4.webp" />
      </div>
      <div class="name">兰雨晴</div>
      <div class="title">北京航空航天大学软件学院教授、麒麟软件有限公司董事</div>
     </div>
      </a>

      <a href="#">
         <div class="people-card">
         <div class="image">
           <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker5.webp" />
         </div>
         <div class="name">张豪</div>
         <div class="title">京衡律师事务所高级合伙人、浙江省网络空间安全协会个人信息保护专委会副秘书长</div>
        </div>
         </a>

         <a href="#">
            <div class="people-card">
            <div class="image">
              <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker6.webp" />
            </div>
            <div class="name">杜广达</div>
            <div class="title">工业和信息化部网络安全管理局副局长</div>
           </div>
            </a>

            <a href="#">
               <div class="people-card">
               <div class="image">
                 <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker7.webp"  alt=""/>
               </div>
               <div class="name">雷楠</div>
               <div class="title">工业和信息化部网络安全管理局数据安全处处长</div>
              </div>
               </a>

               <a href="#">
                  <div class="people-card">
                  <div class="image">
                    <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker8.webp" />
                  </div>
                  <div class="name">荆继武</div>
                  <div class="title">中国科学院大学密码学院 院长、教授</div>
                 </div>
                  </a>

                  <a href="#">
                     <div class="people-card">
                     <div class="image">
                       <img src="<%=request.getContextPath()%>/static/agenda/expert/speaker9.webp" />
                     </div>
                     <div class="name">严明</div>
                     <div class="title">中国计算机学会计算机安全专业委员会荣誉主任、公安部一所、三所原所长 一级警监 研究员</div>
                    </div>
                     </a>
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
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.js"></script>

<script src="<%=request.getContextPath()%>/static/agenda/js/expert.js"></script>
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
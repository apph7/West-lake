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
    <title>西湖论战·关于大会</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/mien/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/mien/css/goodPoint.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/mien/about.css">
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
                    <a href="About" class="nav__link active"> 关于大会</a>
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
   
    <!-- 顶部背景 -->
   <div class="aboutBk">
      <span>关于大会</span>
   </div>

<!-- 大会介绍 -->
<div class="aboutinfo">
    <section>
        <h1>关于大会</h1>
        <div class="content">
          <p>
            西湖论剑·网络安全大会自2012年创办，是国内首个已举办十周年的网络安全大会。十届以来，大会线下参会嘉宾累计超过10000人次，线上直播观看累计超过2500万人次，已成为国内网络安全领域的一张“金名片”。历届大会期间，国家部委、省市领导，院士、知名专家和优秀企业代表齐聚杭州，共商数字时代的安全之道。
            2023年是全面贯彻落实党的二十大精神的开局之年，为深入学习贯彻党的二十大精神，推动落实《数字中国建设整体布局规划》尤其是筑牢数字安全屏障的要求，推进数字安全人才培养、科技创新、产业融合发展，以保障数字政务、数字经济、数字社会等数字化生态安全发展。在迎来大会十一年之际，由“西湖论剑·网络安全大会”升级为“西湖论剑·数字安全大会”，定于5月5日-8日在杭州举办。   
            本届大会主题为“数字安全@数字中国”，大会将邀请相关政府部门、科研院所，以及数字生态各领域的参与者、构建者、守护者，共同探讨数字中国的发展和安全之道。大会将设主论坛、数字安全成果展、多个平行论坛及研讨会，结合数字安全前沿技术、行业应用、人才培养、企业治理等议题展开讨论、展示成果。
          </p>
        </div>
        <div class="img">
            <video src="<%=request.getContextPath()%>/static/mien/about/bkVideo.mp4" controls
            autoplay 
            ></video>
        </div>   
      </section>
</div>

<!--  -->
   <div class="goodPointBox">
    <div class="goodPoint">
        <div class="goodPointTitle">大会亮点</div>
        <div class="pointNumBox">
            <div class="pointNum">
                <div class="text-magic" data-word="500">
                    <p>500+</p>
                    <p class="earser"><span class="earserbg">500+</span></p>
                </div>
                <div class="pointText">主题演讲</div>
            </div>
            <div class="pointNum">
                <div class="text-magic" data-word="550+">
                    <p>550+</p>
                    <p class="earser"><span class="earserbg">550+</span></p>
                </div>
                <div class="pointText" >合作伙伴</div>
            </div>
            <div class="pointNum">
                <div class="text-magic" data-word="10000+">
                    <p>1k+</p>
                    <p class="earser"><span class="earserbg">1k+</span></p>
                </div>
                <div class="pointText">与会嘉宾</div>
            </div>
            <div class="pointNum">
                <div class="text-magic" data-word="10">
                    <p>10万+</p>
                    <p class="earser"><span class="earserbg">10万+</span></p>
                </div>
                <div class="pointText">行业从业者</div>
            </div>
            <div class="pointNum">
                <div class="text-magic" data-word="2500+">
                    <p>2500+</p>
                    <p class="earser"><span class="earserbg">2500+</span></p>
                </div>
                <div class="pointText">直播观看</div>
            </div>
        </div>
    </div>
    <div class="goodPoint_col">
        <div class="main-timeline">
              <div class="timeline onegp">
                <a href="#" class="timeline-content">
                  <span class="timeline-year">
                    议题更前沿
                    <i class="ri-arrow-right-line"></i>
                   
                </span>

                  <div class="gpcontent">
                    <h3 class="gptitle">议题更前沿</h3>
                    <p class="gpdescription">
                        大会主题及议题、展览锚定数字中国建设要求，助力政企单位从政策、技术、人才、产业等各层面落实工作。
                    </p>
                  </div>
                </a>
              </div>
              <div class="timeline twogp">
                <a href="#" class="timeline-content">
                  <span class="timeline-year">
                    <i class="ri-arrow-left-line"></i>
                    线上更精彩
                   
                  </span>
                  <div class="gpcontent turnRight">
                    <h3 class="gptitle">线上更精彩</h3>
                    <p class="gpdescription">
                        “掌上论剑”将进一步丰富内容，增强互动性、趣味性，线上持续精彩。
                    </p>
                  </div>
                </a>
              </div>
              <div class="timeline threegp">
                <a href="#" class="timeline-content">
                  <span class="timeline-year">成果更显著 <i class="ri-arrow-right-line"></i></span>
                
                  <div class="gpcontent">
                    <h3 class="gptitle">成果更显著</h3>
                    <p class="gpdescription">
                        将推出国内首份《2023中国数字安全能力洞察报告》，报告涵盖趋势、科技、人才、实践等多部分内容，引领行业发展方向。
                    </p>
                  </div>
                </a>
              </div>
              <div class="timeline fourgp">
                <a href="#" class="timeline-content">
                  <span class="timeline-year"><i class="ri-arrow-left-line"></i>国际化更深入</span>
                  <div class="gpcontent">
                    <h3 class="gptitle">国际化更深入</h3>
                    <p class="gpdescription">
                        峰会将通过引入国际组织、设置国际话题等，从全球角度研判数字化进程和趋势。
                    </p>
                  </div>
                </a>
              </div>
        </div>
    </div>
      
</div>

<!-- 往期回顾 -->
<div class="thinkbackTitle">
  <div class="goodPointTitle">往期回顾</div>
</div>

<div class="thinkBack">
  <div class="swiper-container">
    <!-- Additional required wrapper -->
    <div class="swiper-wrapper">
      <!-- Slides -->
      <div class="swiper-slide">
        <a href="https://2022.gcsis.cn/">
          <div class="picture">
            <img src="<%=request.getContextPath()%>/static/mien/about/back1.webp" alt="">
          </div>
          <div class="detail">
            <h3>2022构建安全可信的数字世界</h3>
          </div>
        </a>
      </div>
      <div class="swiper-slide">
        <a href="https://2021.gcsis.cn/">
          <div class="picture">
            <img src="<%=request.getContextPath()%>/static/mien/about/back2.jpg" alt="">
          </div>
          <div class="detail">
            <h3>2021安全:数字化改革之根本</h3>
          </div>
        </a>
        
      </div>
      <div class="swiper-slide">
        <a href="https://2020.gcsis.cn/">
          <div class="picture">
            <img src="<%=request.getContextPath()%>/static/mien/about/back3.jpg" alt="">
          </div>
          <div class="detail">
            <h3>2020数治安全智理未来</h3>
          </div>
        </a>
       
      </div>
      <div class="swiper-slide">
        <a href="https://2020.gcsis.cn/review/2019/">
          <div class="picture">
            <img src="<%=request.getContextPath()%>/static/mien/about/back4.png" alt="">
          </div>
          <div class="detail">
            <h3>2019 安全：赋能数字新时代</h3>
          </div>
        </a>
       
      </div>
      <div class="swiper-slide">
        <a href="https://2021.gcsis.cn/review/2018/index.html">
          <div class="picture">
            <img src="<%=request.getContextPath()%>/static/mien/about/back5.jpg" alt="">
          </div>
          <div class="detail">
            <h3>2018 新时代 新安全 新力量</h3>
          </div>
        </a>
        
      </div>
      <div class="swiper-slide">
        <a href="https://2021.gcsis.cn/review/2017/index.html"><div class="picture">
          <img src="<%=request.getContextPath()%>/static/mien/about/back6.jpg" alt="">
        </div>
        <div class="detail">
          <h3>2017 智引新安全，数领大未来</h3>
        </div></a>
      </div>

      <div class="swiper-slide">
        <a href="https://2021.gcsis.cn/review/2016/index.html"><div class="picture">
          <img src="<%=request.getContextPath()%>/static/mien/about/back7.jpg" alt="">
        </div>
        <div class="detail">
          <h3>2016 安若磐石，云之可栖</h3>
        </div></a>
        
      </div>
    </div>
    <!-- If we need pagination -->
    <div class="swiper-pagination"></div>
  
    <!-- If we need navigation buttons -->
    <!--     <div class="swiper-button-prev"></div> -->
    <!--     <div class="swiper-button-next"></div> -->

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
                <img src="<%=request.getContextPath()%>/static/mien/img/logo_bottom.png" alt="">
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
                  <img src="<%=request.getContextPath()%>/static/mien/img/wx.webp" alt="">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.js"></script>
<script src="<%=request.getContextPath()%>/static/mien/about.js"></script>
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
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
    <title>西湖论战·成果发布</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/achievement/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/achievement/css/newproduct.css">
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
                    <a href="ac" class="nav__link">精彩活动</a>
                </li>
                <li class="nav__item">
                    <a href="Exhibitor" class="nav__link"> 展商风采</a>
                </li>

                <li class="nav__item">
                    <a href="newproduct" class="nav__link active">成果发布 </a>
                </li>

                <li class="nav__item">
                    <a href="media" class="nav__link">媒体中心</a>
                </li>
                <li class="nav__item">
                    <a href="hall" class="nav__link ">参会指南</a>
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

<!-- 大屏 -->
<div class="n-hero">
 
    <section>
      <div class="content">
        <h1>成果发布</h1>
        <p>
            在这个数字化、互联网化的时代，网络安全关乎每一个人、每一个企业的利益和安全。我们希望通过我们的努力，为社会提供更安全、更可靠的网络环境，助力数字化时代的可持续发展。让我们携手并肩，共同致力于构建一个更加安全、更加稳定的网络世界！
        </p>
        
      </div>

      <div class="swiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/achievement/product/n-hero-1.jpg" />
            <div class="overlay">
              <h1>2023西湖论剑-11周年精华特刊</h1>
              <p>
                建没数宇中国是我国的重要国策。在《数宇中国建设整体布局规划〉 (以下简称《规划》)中明确了数字中国建设按照“2522”的整体框架进行布局。整体框架中，一方面着重强调了数字安全的重要性...
              </p>
              <div class="ratings">
               
                <span>145 reviews</span>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/achievement/product/n-hero-2.png" />
            <div class="overlay">
              <h1>数据安全与隐私计算</h1>
              <p>
                本书首先介绍了业内多个具备代表性的数据安全理论及实践框架，从数 据常见风险出发，引出数据安全保护最佳实践，然后介绍了数字经济时代数据要素市场的基本信息，基于构建数据要素市场、促进数据合规安全流通...
              </p>
              <div class="ratings">
                
                <span>101 reviews</span>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/achievement/product/n-hero-3.webp" />
            
            <div class="overlay">
              <h1>下一代防火墙</h1>
              <p>
                明御防火墙（DAS-TGFW）秉持“持续边界安全态势改善”的理念，以用户为核心，以边界、应用、威胁、权限为防护对象...
              </p>
              <div class="ratings">
                <span>202 reviews</span>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <img src="<%=request.getContextPath()%>/static/achievement/product/n-hero-4.webp" />
           
            <div class="overlay">
              <h1>安全托管运营服务MSS</h1>
              <p>
                提供体系化、常态化的安全托管服务，协助构建7*24小时全天候、全方位的安全运营体系， 实现安全风险从发现到响应处置
              </p>
              <div class="ratings">
                <span>303 reviews</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</div>
<!-- 新书 -->
<div class="n-book">
    <div class="n-bookTitle">
        书籍
    </div>
    <ul class="cards">
        <li class="cards__item">
          <div class="card">
            <div class="card__image card__image--fence"></div>
            <div class="card__content">
              <div class="card__title">2023西湖论剑-11周年精华特刊</div>
              <p class="card__text">建没数宇中国是我国的重要国策。在《数宇中国建设整体布局规划〉 (以下简称《规划》)中明确了数字中国建设按照“2522”的整体框架进行布局。整体框架中，一方面着重强调了数字安全的重要性，数字安全和数字技术并列为支撑数字中国建设的两大能力。另一方面，“安全”在2522框架中无处不在——数字基础设施不可无安全保障，数据资源大循环不可无安全赋能，建设公平规范的数字治理生态不可无安全辅助。建设数字中国，构筑数字安全屏障势在必行。</p>
              <a download href="<%=request.getContextPath()%>/static/achievement/product/test.pdf"><button class="btn btn--block card__btn">立即下载</button></a>
            </div>
          </div>
        </li>
        <li class="cards__item">
          <div class="card">
            <div class="card__image card__image--river"></div>
            <div class="card__content">
              <div class="card__title">2023数字安全能力洞察报告</div>
              <p class="card__text">数字经济成为全球新一轮科技革命和产业变革的重要引擎，将开启人类数字文明的新时代。数字安全的基础性作用日益突出，在数字化建设进程中，加紧实施国家信息化发展战略，筑牢可信可控的数字安全屏障，夯实数字基础设施安全底座，增强关键基础设施安全韧性，助力数字社会安全发展，已成为支撑现代化建设、增强国家综合实力的必然选择。安恒信息围绕国家数字化建设“2522”顶层布局规划，洞悉各行业和各领域数字化转型中的安全挑战和能力需求，梳理切实解决数字安全本质问题的方法和途径，并从安全模式、架构、能力、产业等方向对未来数字安全发展进行了展望。</p>
              <a download href="<%=request.getContextPath()%>/static/achievement/product/test.pdf"><button class="btn btn--block card__btn">立即下载</button></a>
            </div>
          </div>
        </li>
        <li class="cards__item">
          <div class="card">
            <div class="card__image card__image--record"></div>
            <div class="card__content">
              <div class="card__title">安恒信息2023年行业解决方案蓝皮书（全6本）</div>
              <p class="card__text">数字安全是未来数字化发展的重要组成部分，立足数字安全建设。备预不虞，为国常道，安恒信息结合多年网络安全、数据安全经验以及对行业发展趋势的理解和把握，安恒信息首次发布六大行业解决方案蓝皮书，全面介绍网信、公安、运营商、金融、教育、交通六大行业中的解决方案最佳实践，为产业数字化发展指明了方向，全面加速推动经济社会全面发展。</p>
              <a download href="<%=request.getContextPath()%>/static/achievement/product/test.pdf"><button class="btn btn--block card__btn">立即下载</button></a>
            </div>
          </div>
        </li>
      </ul>
</div>
<!-- 新书 -->
<div class="n-newService">
    <div class="n-serviceTitle">
        新品发布
    </div>
    <div class="n-serveBox">
        <div class="row">
            <div class="example-2 card">
              <div class="wrapper w1">
                <div class="data">
                  <div class="content">
                    <h1 class="title"><a href="#">下一代防火墙</a></h1>
                    <p class="text">明御防火墙（DAS-TGFW）秉持“持续边界安全态势改善”的理念，以用户为核心，以边界、应用、威胁、权限为防护对象，构建了以资产为视角的可持续智能安全运营防护体系。</p>
                    <a href="#" class="button"></a>
                  </div>
                </div>
              </div>
            </div>

            <div class="example-2 card">
                <div class="wrapper w2">
                  <div class="data">
                    <div class="content">
                      <h1 class="title"><a href="#">安全托管运营服务MSS</a></h1>
                      <p class="text">提供体系化、常态化的安全托管服务，协助构建7*24小时全天候、全方位的安全运营体系， 实现安全风险从发现到响应处置的闭环，持续不断提高网络安全水平</p>
                      <a href="#" class="button"></a>
                    </div>
                  </div>
                </div>
              </div>
          </div>
    </div>
</div>


    <!-- footer -->
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
                  <img src="<%=request.getContextPath()%>/static/achievement/img/logo_bottom.png" alt="">
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
                    <img src="<%=request.getContextPath()%>/static/achievement/img/wx.webp" alt="">
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

  <script src="<%=request.getContextPath()%>/static/achievement/js/newproduct.js"></script>
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
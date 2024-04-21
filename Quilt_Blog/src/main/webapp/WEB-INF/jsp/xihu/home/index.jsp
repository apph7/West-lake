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
<!-- 7.8.10 -->
<%
    session = request.getSession();
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>西湖论战·数字安全大会</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/Conference.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/goodPoint.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/news.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/hexagon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/guest.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/highlight.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/activity.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/slide.css">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/home/css/scrollAnimate.css">

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
                    <a href="index" class="nav__link active">首页</a>
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
                    <a href="ac" class="nav__link ">精彩活动</a>
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
               <a href="exit">退出</a>
              </span>
            <!-- Toggle button -->
            <div class="nav__toggle" id="nav-toggle">
                <i class="ri-menu-line"></i>
            </div>
        </div>
    </nav>
</header>
<!-- 大屏 -->
     <div class="index-hero">
      <div class="container">
        <!-- 第一页 -->
        <div class="slide current firstLogo">
          <img src="<%=request.getContextPath()%>/static/home/img/screenlogo.webp" alt="" srcset="" class="screenlogo">
            <div class="content">

            </div>
        </div>
        <!-- 第二页 -->
        <div class="slide">
            <img src="<%=request.getContextPath()%>/static/home/img/screenlogo.webp" alt="" srcset="" class="screenlogo">
            <div class="content">

            </div>
        </div>
        <!-- 第三页 -->
        <div class="slide" style=" background-image: url('<%=request.getContextPath()%>/static/home/img/peak.jpg') no-repeat center center/cover;">
            <img src="<%=request.getContextPath()%>/static/home/img/screenlogo.webp" alt="" srcset="" class="screenlogo">
            <div class="content">

            </div>
        </div>
    </div>
    <div class="buttons">
        <button id="prev">
            <svg t="1710404387607" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6886" width="48" height="48"><path d="M512 960c-247.039484 0-448-200.960516-448-448S264.960516 64 512 64 960 264.960516 960 512 759.039484 960 512 960zM512 128c-211.744443 0-384 172.255557-384 384s172.255557 384 384 384 384-172.255557 384-384S723.744443 128 512 128z" fill="#dbdbdb" p-id="6887"></path><path d="M290.367854 524.352748c0.032684 0.127295 0.192662 0.25631 0.25631 0.383604 1.536138 3.615858 3.648542 7.071738 6.591802 10.047682 0.032684 0.032684 0.063647 0.032684 0.096331 0.063647s0.032684 0.063647 0.063647 0.096331l158.911974 159.359226c12.480043 12.512727 32.704421 12.576374 45.248112 0.063647 12.512727-12.480043 12.54369-32.704421 0.063647-45.248112l-103.327187-103.616181 305.056632 0c17.664722 0 31.99914-14.336138 31.99914-32.00086s-14.336138-32.00086-31.99914-32.00086L396.576374 481.500874l106.112189-104.959656c12.576374-12.447359 12.672705-32.671738 0.25631-45.248112-6.240882-6.335493-14.496116-9.504099-22.751351-9.504099-8.12794 0-16.25588 3.103239-22.496761 9.247789l-160.25545 158.495686C288.00086 498.912727 285.632146 512.703561 290.367854 524.352748z" fill="#dbdbdb" p-id="6888"></path></svg>
        </button>
        <button id="next">
            <svg t="1710404350555" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5822" width="48" height="48"><path d="M512 960c-247.039484 0-448-200.960516-448-448S264.960516 64 512 64 960 264.960516 960 512 759.039484 960 512 960zM512 128c-211.744443 0-384 172.255557-384 384s172.255557 384 384 384 384-172.255557 384-384S723.744443 128 512 128z" fill="#dbdbdb" p-id="5823"></path><path d="M732.959548 501.152426c-0.032684-0.127295-0.192662-0.25631-0.25631-0.383604-1.536138-3.615858-3.648542-7.071738-6.591802-10.047682-0.032684-0.032684-0.063647-0.032684-0.096331-0.063647-0.032684-0.032684-0.032684-0.063647-0.063647-0.096331l-158.911974-159.359226c-12.480043-12.480043-32.704421-12.576374-45.248112-0.063647-12.512727 12.480043-12.54369 32.735385-0.063647 45.248112l103.328907 103.616181L320 480.00258c-17.664722 0-31.99914 14.336138-31.99914 32.00086s14.336138 32.00086 31.99914 32.00086l306.752748 0-106.112189 104.959656c-12.576374 12.447359-12.672705 32.671738-0.25631 45.248112 6.239161 6.335493 14.496116 9.504099 22.751351 9.504099 8.12794 0 16.25588-3.103239 22.496761-9.247789l160.25545-158.495686C735.328262 526.592447 737.72794 512.767209 732.959548 501.152426z" fill="#dbdbdb" p-id="5824"></path></svg>
        </button>
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
    <!-- 大会议程 √-->
    <!-- ！一天最多展示四个 -->
    <div class="ConferenceAgenda">
        <div class="CTitleBox" id="CTitleBox">
            <div class="ctit">
              <p content="大会议程">大会议程</p>
            </div>
            <div class="ctype">
                    <div class="ctype_item"><i class="ri-calendar-2-line"></i>5月5日</div>
                    <div class="ctype_item"><i class="ri-calendar-2-line"></i>5月6日</div>
                    <div class="ctype_item"><i class="ri-calendar-2-line"></i>5月7日</div>
                    <div class="ctype_item active"><i class="ri-calendar-2-line"></i>5月8日</div>
                    <div class="ctype_arrow">
                        <a href="#">
                            <i class="ri-arrow-right-line a_arrow"></i>
                        </a>
                    </div>
            </div>
        </div>
        <div class="CAbox" id="CAbox">
                <div id="click-section">
                  <div id="drawerboxes">
                    <div class="drawerbox active">
                      <button class="drawer-btn active" onclick="slideTo(1)">教育技术产业融合创新发展论坛<span
                          class="drawer-head">1</span></button>
                    </div>
                    <div class="drawerbox">
                      <button class="drawer-btn" onclick="slideTo(2)">商用密码应用论坛<span
                          class="drawer-head">2</span></button>
                    </div>
                    <div class="drawerbox">
                      <button class="drawer-btn" onclick="slideTo(3)">第二直播间<span class="drawer-head">3</span></button>
                    </div>
                    <div class="drawerbox">
                      <button class="drawer-btn" onclick="slideTo(4)">MSS安全托管运营服务论坛<span class="drawer-head">4</span></button>
                    </div>
                  </div>
                </div>
                <div id="slide-section">
                  <div id="slide-bar">
                    <div id="bar"></div>
                  </div>
                  <div id="card-section">
                    <div id="card1" class="card">
                      <div class="card-small-title">教育技术产业融合创新发展论坛<i class="ri-map-pin-line ca_location">线上直播</i> <i class="ri-time-line ca_time">8:30 - 11:30</i></div>
                      <div class="card-content">多元协同，构建满足产业发展网安人才培养生态 <i class="ri-sparkling-fill ca_star">前往会场</i><i class="ri-sparkling-fill ca_star"></i></div>
                      <div class="card-img">
                        <div class="playButtonBox">
                            <a class="play-button">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                                  <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                                  <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                                </svg>
                              </a>
                        </div>
                        <img src="https://img2023.gcsis.cn/2023/5/933ffa78bfad4121a1b763c6beb9f11d.jpeg" alt="">
                      </div>
                    </div>
                    <div id="card2" class="card">
                      <div class="card-small-title">商用密码应用论坛 <i class="ri-map-pin-line ca_location">线上直播</i> <i class="ri-time-line ca_time">8:30 - 11:30</i></div>
                      <div class="card-content">加速密码应用，夯实数据安全 <i class="ri-sparkling-fill ca_star">前往会场</i><i class="ri-sparkling-fill ca_star"></i></div>
                      <div class="card-img">
                        <div class="playButtonBox">
                          <a class="play-button">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                                <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                                <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                              </svg>
                            </a>
                      </div>
                        <img src="https://img2023.gcsis.cn/2023/5/933ffa78bfad4121a1b763c6beb9f11d.jpeg" alt="">
                      </div>
                    </div>
                    <div id="card3" class="card">
                      <div class="card-small-title">第二直播间 <i class="ri-map-pin-line ca_location">线上直播</i> <i class="ri-time-line ca_time">8:30 - 11:30</i></div>
                      <div class="card-content">精彩干货不间断 <i class="ri-sparkling-fill ca_star">前往会场</i><i class="ri-sparkling-fill ca_star"></i></div>
                      <div class="card-img">
                        <div class="playButtonBox">
                          <a class="play-button">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                                <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                                <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                              </svg>
                            </a>
                      </div>
                        <img src="https://img2023.gcsis.cn/2023/5/933ffa78bfad4121a1b763c6beb9f11d.jpeg" alt="">
                      </div>
                    </div>
                    <div id="card4" class="card">
                      <div class="card-small-title">MSS安全托管运营服务论坛 <i class="ri-map-pin-line ca_location">线上直播</i> <i class="ri-time-line ca_time">8:30 - 11:30</i></div>
                      <div class="card-content">1.首次提出以人为中心的安全运营飞轮，筑造新一代安全运营体系，塑造安全大运营和产品即服务的理念 2.安恒信息 MSS 2.0 新安全运营体系升级发布 3.持续深入探讨MSS市场的现状和行业应用 <i class="ri-sparkling-fill ca_star">前往会场</i><i class="ri-sparkling-fill ca_star"></i></div>
                      <div class="card-img">
                        <div class="playButtonBox">
                          <a class="play-button">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                                <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                                <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                              </svg>
                            </a>
                      </div>
                        <img src="https://img2023.gcsis.cn/2023/5/933ffa78bfad4121a1b763c6beb9f11d.jpeg" alt="">
                      </div>
                    </div>
                  </div>
              </div>
         </div>
        </div>
    </div>
    <!-- 大会亮点 √-->
    <div class="goodPointBox" id="goodPointBox">
        <div class="goodPoint">
            <div class="goodPointTitle" id="goodPointTitle">大会亮点</div>
            <div class="pointNumBox">
                <div class="pointNum">
                    <div class="text-magic" data-word="500">
                        <p>500+</p>
                        <p class="earser"><span class="earserbg" id="ear-1">500+</span></p>
                    </div>
                    <div class="pointText">主题演讲</div>
                </div>
                <div class="pointNum">
                    <div class="text-magic" data-word="550+">
                        <p>550+</p>
                        <p class="earser"><span class="earserbg" id="ear-2">550+</span></p>
                    </div>
                    <div class="pointText" >合作伙伴</div>
                </div>
                <div class="pointNum">
                    <div class="text-magic" data-word="10000+">
                        <p>1k+</p>
                        <p class="earser"><span class="earserbg" id="ear-3">1k+</span></p>
                    </div>
                    <div class="pointText">与会嘉宾</div>
                </div>
                <div class="pointNum">
                    <div class="text-magic" data-word="10">
                        <p>10万+</p>
                        <p class="earser"><span class="earserbg" id="ear-4">10万+</span></p>
                    </div>
                    <div class="pointText">行业从业者</div>
                </div>
                <div class="pointNum">
                    <div class="text-magic" data-word="2500+">
                        <p>2500+</p>
                        <p class="earser"><span class="earserbg" id="ear-5">2500+</span></p>
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
    <!-- 精彩活动 -->
    <div class="activity">
        <div class="activityTitleBox">
            <div class="atit">
              <p content="精彩活动">精彩活动</p>
            </div>
            <div class="atype">
                    <div class="active atype_item">格致论道</div>
                    <div class="atype_item">西湖论剑安全特训营</div>
                    <div class="atype_item">新品发布</div>
                    <div class="atype_item">第二直播间</div>
                    <div class="atype_item">掌上论剑</div>
                    <div class="atype_item">西湖论剑十周年回顾</div>
                    <div class="atype_arrow">
                        <a href="#">
                            <i class="ri-arrow-right-line a_arrow"></i>
                        </a>
                    </div>
            </div>
        </div>

        <div class="css-slider-wrapper">
                <input type="radio" name="slider" class="slide-radio1 wula" checked id="slider_1">
                <input type="radio" name="slider" class="slide-radio2 wula" id="slider_2">
                <input type="radio" name="slider" class="slide-radio3 wula" id="slider_3">
                <input type="radio" name="slider" class="slide-radio4 wula" id="slider_4">
                <input type="radio" name="slider" class="slide-radio5 wula" id="slider_5">
                <input type="radio" name="slider" class="slide-radio6 wula" id="slider_6">
            <!-- Slider Pagination -->
            <div class="slider-pagination">
            <label for="slider_1" class="page1"></label>
            <label for="slider_2" class="page2"></label>
            <label for="slider_3" class="page3"></label>
            <label for="slider_4" class="page4"></label>
            <label for="slider_5" class="page5"></label>
            <label for="slider_6" class="page6"></label>
            </div>

            <!-- Slider #1 -->
            <div class="slider slide-1" style="background: url(<%=request.getContextPath()%>/static/home/img/highLight/01.jpg);background-repeat: no-repeat;background-position: 0 0;background-size: cover;">
            <div class="slider-content" id="first-slider-content">
                <h2  style="transform:translateY(100px);opacity:1"><span></span>让“圈外人”关注网络安全</h2><br>
                <h2  style="transform:translateY(100px);opacity:1"><span></span>让“冷”科普做到“热”传播</h2><br>
                <h4  style="transform:translateY(100px);opacity:1">5月5日 18:30 “格致论道”是中国科学院计算机网络信息中心和中国科学院科学传播局联合主办的科学文化讲坛。<br>致力于非凡思想的跨界交流，提倡以"格物致知"的精神探讨科技、教育、生活、未来的发展</h4>
            </div>
            <!--  style="transform:translateX(0px) rotate(-90deg);opacity:1" -->
            <div class="date-pagination" >
                <span>格致论道</span>
            </div>
            </div>

            <!-- Slider #2 -->
            <div class="slider slide-2" style="background: url(<%=request.getContextPath()%>/static/home/img/highLight/01.jpg);background-repeat: no-repeat;background-position: 0 0;background-size: cover;">
            <div class="slider-content">
                <h2><span></span>数字安全人才助推器</h2><br>

                <h4>5月4-6日,西湖论剑安全特训营是国内领先的数字安全人才交流、孵化及实训平台,致力于成为数字时代的“数字安全人才助推器”<br>以体系化课程、实战化导向为显著特色，服务于数字化转型背景下的政府、企事业单位，为其培养数字安全的管理者、实战人才提供有力支撑<br>为国家数字安全人才发展持续输出强有力的“燃料”。
        </h4>
            </div>

            <div class="date-pagination">
                <span>西湖论剑安全特训营</span>
            </div>
            </div>

            <!-- Slider #3 -->
            <div class="slider slide-3" style="background: url(<%=request.getContextPath()%>/static/home/img/highLight/01.jpg);background-repeat: no-repeat;background-position: 0 0;background-size: cover;" alt="">
            <div class="slider-content">
                <h2><span></span>新品发布</h2><br>
                <h4></h4>
            </div>
            <div class="date-pagination">
                <span>新品发布</span>
            </div>
            </div>

            <!-- Slider #4 -->
            <div class="slider slide-4" style="background: url(<%=request.getContextPath()%>/static/home/img/highLight/01.jpg);background-repeat: no-repeat;background-position: 0 0;background-size: cover;">
            <div class="slider-content">
                <h2><span></span>创新内容形式</h2><br>
                <h2><span></span>立体化开展宣传</h2>
                <h4>一次掌上场景搭建下的即时性交流；身临其境的参与感，精彩看点的抢先看；行业专家、观点嘉宾在线解读核心观点；更有大会成果密集输出，限定款宠粉福利</h4>
            </div>
            <div class="date-pagination">
                <span>第二直播间</span>
            </div>
            </div>

            <div class="slider slide-5" style="background: url(<%=request.getContextPath()%>/static/home/img/highLight/01.jpg);background-repeat: no-repeat;background-position: 0 0;background-size: cover;">
                <div class="slider-content">
                    <h2><span></span>线下“精致”、线上“亮眼”</h2>
                    <h4>以西湖论剑官网为载体，精心策划“掌上论剑”系列活动，推出“点亮网安，守护城市”、“ 守护每一份网安愿景”等互动活动，《今夜不破防》、《十日谈》、《新时代安全观对话》等亮点节目，打造一档精彩、有趣的掌上论剑特色节目。</h4>
                </div>
                <div class="date-pagination">
                    <span>掌上论剑</span>
                </div>
            </div>

             <div class="slider slide-6" style="background: url(<%=request.getContextPath()%>/static/home/img/highLight/01.jpg);background-repeat: no-repeat;background-position: 0 0;background-size: cover;">
                <div class="slider-content">
                    <h2><span></span>十年磨一剑</h2>
                    <h4>022年第十届西湖论剑·网络安全大会，十年磨一剑，向世界递出一张具有全球影响力、全国引领力、浙江辨识度的网络安全大会金名片。</h4>
                </div>
                <div class="date-pagination">
                    <span>西湖论剑十周年回顾</span>
                </div>
            </div>

        </div>
    </div>
    <!-- 重磅人物 √-->
    <!-- ！最多只能放8个人 -->
    <div class="heavyGuest">
        <div class="guestContent">
            <div class="guestTitleBox">
                <div class="gtit">
                  <p content="重磅嘉宾">重磅嘉宾<i class="ri-corner-up-right-line g_arrow"></i></p>
                </div>

            </div>
            <div class="guestImgBox">
                <section class="game-section">
                    <div class="owl-carousel custom-carousel owl-theme">
                        <div class="item" style="background: url(https://img2023.gcsis.cn/2023/4/3976ced942c44672b457895baa4e33e8.png) no-repeat center center / cover;">
                            <div class="item-desc">
                              <h3>刘世锦</h3>
                              <p>国务院发展研究中心原副主任、中国发展研究基金会副理事长</p>
                            </div>
                          </div>
                          <div class="item" style="background: url(https://img2023.gcsis.cn/2023/4/c113813fe5414f2e9aa7cee9a4d1030e.png) no-repeat center center / cover;">
                            <div class="item-desc">
                              <h3>沈昌祥</h3>
                              <p>中国工程院院士</p>
                            </div>
                          </div>

                        <div class="item" style="background: url(https://img2023.gcsis.cn/2023/4/3976ced942c44672b457895baa4e33e8.png) no-repeat center center / cover;">
                        <div class="item-desc">
                          <h3>刘世锦</h3>
                          <p>国务院发展研究中心原副主任、中国发展研究基金会副理事长</p>
                        </div>
                      </div>
                      <div class="item" style="background: url(https://img2023.gcsis.cn/2023/4/c113813fe5414f2e9aa7cee9a4d1030e.png) no-repeat center center / cover;">
                        <div class="item-desc">
                          <h3>沈昌祥</h3>
                          <p>中国工程院院士</p>
                        </div>
                      </div>
                      <div class="item" style="background: url(https://img2023.gcsis.cn/2023/4/e64b9555a46c4291a0a654a97ebce5ba.png)  no-repeat center center / cover;">
                        <div class="item-desc">
                          <h3>邬贺铨</h3>
                          <p>中国工程院院士</p>
                        </div>
                      </div>
                      <div class="item" style="background-image: url(https://img2023.gcsis.cn/2023/4/714025c7e99d4823bfd972447d438d0f.png);">
                        <div class="item-desc">
                          <h3>郝志强</h3>
                          <p> 工业和信息化部教育与考试中心主任、书记</p>
                        </div>
                      </div>
                      <div class="item" style="background-image: url(https://img2023.gcsis.cn/2023/4/e64b9555a46c4291a0a654a97ebce5ba.png);">
                        <div class="item-desc">
                          <h3>邬贺铨</h3>
                          <p>中国工程院院士</p>
                        </div>
                      </div>
                      <div class="item" style="background-image: url(https://img2023.gcsis.cn/2023/4/714025c7e99d4823bfd972447d438d0f.png);">
                        <div class="item-desc">
                          <h3>郝志强</h3>
                          <p> 工业和信息化部教育与考试中心主任、书记</p>
                        </div>
                      </div>
                    </div>

                  </section>
            </div>
        </div>
    </div>


    <!-- 新闻 √-->
    <div class="newsBox">
        <div class="newsBlue">
            <div class="newsBlueTitle">新闻资讯</div>
        </div>
        <div class="newsPost">
            <div class="post-list post-list_grid">

				<!-- Post 1 -->
				<div class="post-list__post post">
					<figure class="post__preview-img">
						<a href="#"><img src="https://images.unsplash.com/photo-1422255198496-21531f12a6e8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80" alt="img description" /></a>
					</figure>

					<div class="post__header">
						<time datetime="2023-05-12" class="post__time">2023-05-12</time>
						<h2><a href="#">【重磅干货】大家都关心的嘉宾PPT下载指南来啦！</a></h2>
					</div>

					<div class="post__meta">
						<a href="#" class="post_boss">西湖论剑</a>
						<a href="#" class="post__comments">7</a>
					</div>
				</div>

				<!-- Post 2 -->
				<div class="post-list__post post">
					<figure class="post__preview-img">
						<a href="#"><img src="https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="img description" /></a>
					</figure>

					<div class="post__header">
						<time datetime="2023-05-08"  class="post__time">2023-05-08</time>
						<h2><a href="#">2023西湖论剑·数字安全大会举办</a></h2>
					</div>

					<div class="post__meta">
						<a href="#" class="post_boss">央广网</a>
						<a href="#" class="post__comments">12</a>
					</div>
				</div>

				<!-- Post 3 -->
				<div class="post-list__post post">
					<figure class="post__preview-img">
						<a href="#"><img src="https://images.unsplash.com/photo-1495987976467-244d20b4b39a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="img description" /></a>
					</figure>

					<div class="post__header">
						<time datetime="2019-11-14"  class="post__time">2023-05-08</time>
						<h2><a href="#">2023西湖论剑·数字安全大会在杭举行</a></h2>
					</div>

					<div class="post__meta">
						<a href="#" class="post_boss">人民网</a>
						<a href="#" class="post__comments">9</a>
					</div>
				</div>
			</div>
        </div>
        <div class="morenews">
            <button class="moreNew">更多新闻</button>
        </div>
    </div>
    <!-- 精彩瞬间 √-->
    <div class="highlight">
        <div class="highlightTitleBox">
            <div class="tit">
              <p content="精彩瞬间">精彩瞬间</p>
            </div>
            <div class="hltype">
                    <div class="active hltype_item">
                        <i class="ri-image-line"></i>
                        精彩图片
                    </div>
                    <div class="hltype_item">
                        <i class="ri-video-line"></i>
                        精彩视频
                    </div>
                    <div class="hltype_arrow">
                        <a href="#">
                            <i class="ri-arrow-right-line hl_arrow"></i>
                        </a>
                    </div>
            </div>
        </div>
        <div class="highlightBox">
            <div class="HLBox hlImgBox">
                <div class="HLBigOne hl"
                style="background-image: url('<%=request.getContextPath()%>/static/home/img/highLight/01.jpg')"
                >
                <div class="card__content--description">
                    <p class="text-reveal">
                      <span>
                        <span>数字安全@数字中国主论坛-精彩瞬间</span>
                      </span>
                    </p>
                </div>
                </div>
                <div class="HLTwoBox">
                    <div class="HLsmallTwo hl"
                    style="background-image: url('<%=request.getContextPath()%>/static/home/img/highLight/01.jpg')">
                        <div class="card__content--description">
                            <p class="text-reveal">

                                <span>数字安全@数字中国主论坛-精彩瞬间</span>
                            </p>
                          </div>
                    </div>
                    <div class="HLsmallTwo hl"
                    style="background-image: url('<%=request.getContextPath()%>/static/home/img/highLight/01.jpg')">
                        <div class="card__content--description">
                            <p class="text-reveal">

                                <span>数字安全@数字中国主论坛-精彩瞬间</span>
                            </p>
                          </div>
                    </div>
                </div>

            </div>
            <div class="HLBox hlVideoBox fade">
                <div class="HLBigOne hl"
                style="background-image: url('<%=request.getContextPath()%>/static/home/img/highLight/01.jpg')"
                >
                <div class="playButtonBox">
                    <a class="play-button">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                          <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                          <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                        </svg>
                      </a>
                </div>
                <div class="card__content--description">
                    <p class="text-reveal">
                      <span>
                        <span>数字安全@数字中国主论坛-精彩瞬间</span>
                      </span>
                    </p>
                </div>
                </div>
                <div class="HLTwoBox">
                    <div class="HLsmallTwo hl"
                    style="background-image: url('<%=request.getContextPath()%>/static/home/img/highLight/01.jpg')">
                        <div class="playButtonBox">
                            <a class="play-button">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                                <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                                <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                                </svg>
                            </a>
                        </div>
                        <div class="card__content--description">
                            <p class="text-reveal">

                                <span>数字安全@数字中国主论坛-精彩瞬间</span>
                            </p>
                          </div>
                    </div>
                    <div class="HLsmallTwo hl"
                    style="background-image: url('<%=request.getContextPath()%>/static/home/img/highLight/01.jpg')"
                    >
                        <div class="playButtonBox">
                            <a class="play-button">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 50">
                                <path d="M42.7,42.7L25,50L7.3,42.7L0,25L7.3,7.3L25,0l17.7,7.3L50,25L42.7,42.7z" class="polygon"></path>
                                <polygon points="32.5,25 21.5,31.4 21.5,18.6 "></polygon>
                                </svg>
                            </a>
                        </div>
                        <div class="card__content--description">
                            <p class="text-reveal">

                                <span>数字安全@数字中国主论坛-精彩瞬间</span>
                            </p>
                          </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- 合作伙伴 √-->
    <div class="partner">
        <div class="partnerTypeBox">
            <div class="partnerType active">
                生态合作伙伴
            </div>
            <div class="partnerType">
                战略合作媒体
            </div>
            <div class="partnerType">
                新闻媒体
            </div>
        </div>
        <ul class="hexagon-grid-container"
        id="hexagon-grid-first-container"
        >
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/01.png" />
                </div>
            </li>
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/01.png" />
                </div>
            </li>
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
            <li class="hexagon hexagon-green">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/01.png" />
                </div>
            </li>
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>

            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
            <li class="hexagon hexagon-green">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/01.png" />
                </div>
            </li>
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
        </ul>
        <ul class="hexagon-grid-container fade">
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
        </ul>

        <ul class="hexagon-grid-container fade">
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
            <li class="hexagon">
                <div class="hexagon-inner">
                    <img class="hexagon-avatar-img" src="<%=request.getContextPath()%>/static/home/img/partner/02.webp" />
                </div>
            </li>
        </ul>
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
                <img src="<%=request.getContextPath()%>/static/img/logo_bottom.png" alt="">
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
                <img src="<%=request.getContextPath()%>/static/img/wx.webp" alt="">
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.0/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.0/ScrollTrigger.min.js"></script>

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
gsap.from("#CTitleBox",{
    scrollTrigger: "#CTitleBox", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: .5,
    y: 50 ,
})
// 左向右
gsap.from("#click-section",{
    scrollTrigger: "#click-section", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: 1,
    x: -50 ,
})
// 右向左
gsap.from("#slide-section",{
    scrollTrigger: "#slide-section", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: 2,
    x: 50 ,
})

gsap.from("#goodPointTitle",{
    scrollTrigger: "#goodPointTitle", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: .5,
    y: -50 ,

})


gsap.to('#ear-5,#ear-4,#ear-3,#ear-2,#ear-1',{
    scrollTrigger: ".pointNumBox", 
    x: -30,
    duration:2,
    backgroundColor:'transparent'
})
gsap.from(".pointNumBox",{
    scrollTrigger: ".pointNumBox", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: .5,
    y: 50 ,
})
// goodPoint_col
gsap.from(".onegp",{
    scrollTrigger: ".onegp", 
    duration: 1,
    y: 50 ,

})
gsap.from(".twogp",{
    scrollTrigger: ".twogp", 
    duration: 1,
    y: 50 ,

})
gsap.from(".threegp",{
    scrollTrigger: ".threegp", 
    duration: 1,
    y: 50 ,

})
gsap.from(".fourgp",{
    scrollTrigger: ".fourgp", 
    duration: 1,
    y: 50 ,

})

gsap.from(".newsBlue",{
    scrollTrigger: ".newsBlue", 
    duration: 1,
    y: 50 ,

})

gsap.from(".post-list",{
    scrollTrigger: ".post-list", 
    duration: 2,
    y: -50 ,
 
})

gsap.from(".moreNew",{
    scrollTrigger: ".moreNew", 
    duration: 2,
    y: 50 ,
 
})

gsap.from(".partnerTypeBox",{
    scrollTrigger: ".partnerTypeBox", 
    duration: 1,
    y: 50 ,
})

gsap.from("#hexagon-grid-first-container",{
    scrollTrigger: "#hexagon-grid-first-container", 
    duration: 1.5,
    y: -50 ,
})

gsap.from(".gtit",{
    scrollTrigger: ".gtit", 
    duration: 1,
    y: 50 ,
})

gsap.from(".highlightTitleBox",{
    scrollTrigger: ".highlightTitleBox", 
    duration: 1,
    y: 50 ,
})
// activityTitleBox

gsap.from(".activityTitleBox",{
    scrollTrigger: ".activityTitleBox", 
    duration: .6,
    y: 80 ,
})

gsap.from(".guestImgBox",{
    scrollTrigger: ".guestImgBox", 
    duration: 2.5,
    x: 200 ,
})
// HLBigOne

// 左向右
gsap.from(".HLBigOne",{
    scrollTrigger: ".HLBigOne", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: 1.2,
    x: -80 ,
})

// first-slider-content

gsap.from("#first-slider-content",{
    scrollTrigger: "#first-slider-content", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: 1.6,
    x: -800 ,
})
// 右向左
gsap.from(".HLsmallTwo ",{
    scrollTrigger: ".HLsmallTwo", // 此行代码表示触发动画的元素，只需要增加该行代码，就可以实现想要的效果。
    duration: 1.2,
    x: 80 ,
})


</script>

</html>
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
    <title>西湖论战·参会指南</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/achievement/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/achievement/css/hall.css">
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
                    <a href="newproduct" class="nav__link">成果发布 </a>
                </li>

                <li class="nav__item">
                    <a href="media" class="nav__link">媒体中心</a>
                </li>
                <li class="nav__item">
                    <a href="hall" class="nav__link  active">参会指南</a>
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

    


    <!-- 大会场馆 -->
    <div class="h-place">
      <div class="h-placeTitle">大会场馆</div>
      <ul class="slider">
        <li>
            <input type="radio" id="slide1" name="slide" checked>
            <label for="slide1"></label>
            <img src="<%=request.getContextPath()%>/static/achievement/hall/h-place1.webp" alt="Panel 1">
        </li>
        <li>
            <input type="radio" id="slide2" name="slide">
            <label for="slide2"></label>
            <img src="<%=request.getContextPath()%>/static/achievement/hall/h-place2.webp" alt="Panel 2">
        </li>

    </ul>
    </div>
<!-- 大会交通 -->
<div class="h-transport">

</div>
   <!-- 酒店住宿 -->
   <div class="h-jiudian">
      <article>
         <div class="hero">
           <h1>酒店住宿</h1>
         </div>
         <div class="wrap">
           <h2>5月6日接机/接站</h2>
           <p>路线：萧山机场/火车东站--中维歌德--望湖宾馆、
            萧山机场/火车东站--滨奥皇冠假日--白马湖建国饭店、
            萧山机场/火车东站--洲际酒店--瑞立江河汇、
            </p>
           <p>班车及发车时间:共计16趟班车12:30、13:00、13:30.14:00、14:30、15:00、
            15:30、16:00.16:30、17:00、17:30、18:00、18:30、19:00、
            20:00、21:00。
            </p>
           <p>地点1:火车东站:西广场旅游集散中心</p>
           <p> 地点2:萧山机场:T3/T4出口(工作人员将在出口举牌等待)</p>
         
           <hr />
          
           <h2>5月8日接机/接站</h2> 
           <p>路线：洲际酒店--萧山机场/火车东站。
             班车及发车时间:共计6趟班车8:00、10:0012:00、13:30、14:00、
             18:15.             
            </p>
           <p>路线：杭州望湖宾馆--萧山机场/火车东站
            中维歌德--萧山机场/火车东站
            瑞立江河汇--萧山机场/火车东站
            滨奥皇冠假日--萧山机场/火车东站
            
            </p>
           <p>班车及发车时间:共计3趟班车8:00、10:00、12:00。
         </p>
           <hr />
       
           <h2>酒店地址及联系人</h2>
           <p>杭州洲际酒店（上城区解放东路2号）</p>
           <p> 俞佳亮 13958156639 叶强斌 18110910493</p>
           <p>杭州瑞立江河汇酒店（上城区之江路1299号）</p>
           <p>沈晶磊 15925684550 丁佳 18957191215</p>

           <p>杭州中维歌德大酒店（上城区西湖大道19号）</p>
           <p>王嘉敏 15061981851 沈梦超 18367174066</p>
           <p>白马湖建国饭店（滨江区长江南路336号678幢）</p>
           <p>来玲玲 18072858687 傅琦 13588886762</p>
           <hr />
         </div>
       </article>
   </div>
    <!-- 大会签到 -->
    <div class="h-qiandao">
      <section id="benefits">
         <div class="container-h">
           <div class="titles">
             <div class="h-qiandao-title">大会签到</div>

           </div>
           <div class="benef-grid mv5">
       
             <div class="benef-1">
               <p class="h-qiandao-smalltitle">签到位置</p>
               <p class="lh-copy">杭州洲际酒店正门入口</p>
             </div>
       
             <div class="benef-2">
               
               <p class="h-qiandao-smalltitle">签到时间</p>
               <p class="lh-copy">5月7日 上午 08:00-9:00 下午13:00-13:30
                     <br>
                  5月8日 上午 08:00-9:00 下午13:00-13:30</p>
             </div>
       
             <div class="benef-img grow">
               <img src="<%=request.getContextPath()%>/static/achievement/hall/hflower.png" alt="jeanna dufraisse coaching">
             </div>
       
             <div class="benef-3">
              
               <p class="h-qiandao-smalltitle">签到流程</p>
               <p class="lh-copy">通过大会【短信】签到，领取大会胸卡</p>
             </div>
       
             <div class="benef-4">
            
               <p class="h-qiandao-smalltitle">嘉宾领取大会胸卡须知:</p>
               <p class="lh-copy">① 嘉宾自行领取个人参会胸卡，不代领
                        <br>
                  ② 每位嘉宾专属码只有一次领证时效，不可重复领取
                  <br>
                  ③ 大会胸卡将作为参会期间唯一身份认证，遗失无补，请妥善保管
                  <br>
                  ④ 嘉宾在会议期间需全程佩戴</p>
             </div>
           </div>
          
         </div>
       </section>
    </div>
    <!-- 联系我们 -->
    <div class="h-contactTitle">
      联系我们
    </div>
    <div class="h-contact">
      <div class="contact-area">
         <div class="contact">
           <main>
             <section>
               <div class="content">
                <aside>
                   <h1>薛女士</h1>
                   <p>会务咨询</p>
                 </aside>
                 
                 <button class="h-button">
                   <span>联系我们</span>
                   
                   <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"> <g class="nc-icon-wrapper" fill="#444444"> <path d="M14.83 30.83L24 21.66l9.17 9.17L36 28 24 16 12 28z"></path> </g> </svg>
                 </button>
               </div>
       
               <div class="title"><p>联系我们</p></div>
             </section>
       
             
           </main>
       
           <nav class="h-nav">
             <a class="gmail">
               <div class="icon">
                 <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg"><path d="M16 3v10c0 .567-.433 1-1 1h-1V4.925L8 9.233 2 4.925V14H1c-.567 0-1-.433-1-1V3c0-.283.108-.533.287-.712C.467 2.107.718 2 1 2h.333L8 6.833 14.667 2H15c.283 0 .533.108.713.288.179.179.287.429.287.712z" fill-rule="evenodd"/></svg>
               </div>
       
               <div class="content">
                 <h1>邮箱</h1>
                 <span>mia.xue@dbappsecurity.com.cn</span>
               </div>
               
               <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"> <g class="nc-icon-wrapper" fill="#444444"> <path d="M17.17 32.92l9.17-9.17-9.17-9.17L20 11.75l12 12-12 12z"></path> </g> </svg>
             </a>
       
             <a class="facebook">
               <div class="icon">
                  <svg t="1711699552720" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6254" width="48" height="48"><path d="M760.5513481481481 560.8225857232593c-68.7954620871111 0-130.9332991241481 33.288126464-166.44063474725925 90.98754761007407-55.48021198696296-6.657625050074073-106.52200686933334-33.288126464-146.4677583834074-73.2338791917037-39.9457527277037-39.9457527277037-64.35704498251852-93.20675555555555-71.01467124622222-148.68696754251854 53.26100282785185-37.72654356859259 86.54913050548149-97.64517266014815 86.54913050548149-164.2214268017778 0-110.9604227602963-88.76833845096297-199.72876242488888-199.72876242488888-199.72876121125924s-199.72876242488888 88.76833845096297-199.72876242488888 199.72876121125924c0 168.65984390637036 84.32992134637037 346.1965208082963 233.0168888888889 486.00665414162955 139.81013333333334 130.9332991241481 312.9083931306667 210.82480457955552 463.8145698322963 210.82480457955552 8.876834209185184 0 17.75366720474074 0 28.849710573037036-2.2192079454814815s19.97287636385185-13.315251313777777 17.75366720474074-24.411293468444445c-2.2192079454814815-11.096042154666666-13.315251313777777-19.97287636385185-24.411293468444445-17.753668418370367-6.657625050074073 0-15.53445925925926 2.2192079454814815-22.19208430933333 2.219209159111111-139.81013333333334 0-301.81235097599995-73.2338791917037-432.7456513137778-197.50955326577775-139.81013333333334-130.9332991241481-219.70163757511108-297.3739338714074-219.70163757511108-454.93773562311105 0-86.54913050548149 68.7954620871111-155.3445925925926 155.3445925925926-155.3445925925926s155.3445925925926 68.7954620871111 155.3445925925926 155.3445925925926c0 51.041794882370375-26.630501413925924 99.86438060562962-68.7954620871111 128.71409117866665l-8.876834209185184 6.657625050074073c-6.657625050074073 4.438417104592592-11.096042154666666 13.315251313777777-8.876834209185184 19.97287636385185v11.096042154666666c6.657625050074073 66.57625414162963 35.50733562311111 128.71409117866665 82.1107134008889 177.53667690192594s108.74121481481481 79.89150424177778 175.31746895644446 86.54913050548149l11.096042154666666 2.2192079454814815c8.876834209185184 0 17.75366720474074-2.2192079454814815 22.19208430933333-11.096042154666666l6.657626263703703-11.096042154666666c28.849710573037036-44.384169832296294 77.6722962962963-71.01467124622222 130.9332991241481-71.01467124622222 86.54913050548149 0 155.3445925925926 68.7954620871111 155.3445925925926 155.3445925925926 0 42.164960673185185-17.75366720474074 84.32992134637037-48.822585723259266 113.17963191940738-8.876834209185184 8.876834209185184-8.876834209185184 22.19208430933333-2.219209159111111 31.06891851851852s22.19208430933333 8.876834209185184 31.06891851851852 2.219209159111111c39.9457527277037-37.72654356859259 64.35704498251852-90.98754761007407 64.35704619614813-146.46775959703703 0-113.17963191940738-88.76833845096297-201.94797037037037-199.72876242488888-201.94797037037037z" p-id="6255"></path></svg>
               </div>
       
               <div class="content">
                 <h1>电话</h1>
                 <span>+86-13810244613</span>
               </div>
               
               <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"> <g class="nc-icon-wrapper" fill="#444444"> <path d="M17.17 32.92l9.17-9.17-9.17-9.17L20 11.75l12 12-12 12z"></path> </g> </svg>
             </a>
           </nav>
         </div>
       </div>


       <div class="contact-area">
         <div class="contact">
           <main>
             <section>
               <div class="content">
                
       
                 <aside>
                   <h1>朱女士</h1>
                   <p>商务合作</p>
                 </aside>
                 
                 <button class="h-button">
                   <span>联系我们</span>
                   
                   <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"> <g class="nc-icon-wrapper" fill="#444444"> <path d="M14.83 30.83L24 21.66l9.17 9.17L36 28 24 16 12 28z"></path> </g> </svg>
                 </button>
               </div>
       
               <div class="title"><p>联系我们</p></div>
             </section>
       
             
           </main>
       
           <nav class="h-nav">
             <a class="gmail">
               <div class="icon">
                 <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg"><path d="M16 3v10c0 .567-.433 1-1 1h-1V4.925L8 9.233 2 4.925V14H1c-.567 0-1-.433-1-1V3c0-.283.108-.533.287-.712C.467 2.107.718 2 1 2h.333L8 6.833 14.667 2H15c.283 0 .533.108.713.288.179.179.287.429.287.712z" fill-rule="evenodd"/></svg>
               </div>
       
               <div class="content">
                 <h1>邮箱</h1>
                 <span>yuki.zhu@dbappsecurity.com.cn</span>
               </div>
               
               <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"> <g class="nc-icon-wrapper" fill="#444444"> <path d="M17.17 32.92l9.17-9.17-9.17-9.17L20 11.75l12 12-12 12z"></path> </g> </svg>
             </a>
       
             <a class="facebook">
               <div class="icon">
                  <svg t="1711699552720" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6254" width="48" height="48"><path d="M760.5513481481481 560.8225857232593c-68.7954620871111 0-130.9332991241481 33.288126464-166.44063474725925 90.98754761007407-55.48021198696296-6.657625050074073-106.52200686933334-33.288126464-146.4677583834074-73.2338791917037-39.9457527277037-39.9457527277037-64.35704498251852-93.20675555555555-71.01467124622222-148.68696754251854 53.26100282785185-37.72654356859259 86.54913050548149-97.64517266014815 86.54913050548149-164.2214268017778 0-110.9604227602963-88.76833845096297-199.72876242488888-199.72876242488888-199.72876121125924s-199.72876242488888 88.76833845096297-199.72876242488888 199.72876121125924c0 168.65984390637036 84.32992134637037 346.1965208082963 233.0168888888889 486.00665414162955 139.81013333333334 130.9332991241481 312.9083931306667 210.82480457955552 463.8145698322963 210.82480457955552 8.876834209185184 0 17.75366720474074 0 28.849710573037036-2.2192079454814815s19.97287636385185-13.315251313777777 17.75366720474074-24.411293468444445c-2.2192079454814815-11.096042154666666-13.315251313777777-19.97287636385185-24.411293468444445-17.753668418370367-6.657625050074073 0-15.53445925925926 2.2192079454814815-22.19208430933333 2.219209159111111-139.81013333333334 0-301.81235097599995-73.2338791917037-432.7456513137778-197.50955326577775-139.81013333333334-130.9332991241481-219.70163757511108-297.3739338714074-219.70163757511108-454.93773562311105 0-86.54913050548149 68.7954620871111-155.3445925925926 155.3445925925926-155.3445925925926s155.3445925925926 68.7954620871111 155.3445925925926 155.3445925925926c0 51.041794882370375-26.630501413925924 99.86438060562962-68.7954620871111 128.71409117866665l-8.876834209185184 6.657625050074073c-6.657625050074073 4.438417104592592-11.096042154666666 13.315251313777777-8.876834209185184 19.97287636385185v11.096042154666666c6.657625050074073 66.57625414162963 35.50733562311111 128.71409117866665 82.1107134008889 177.53667690192594s108.74121481481481 79.89150424177778 175.31746895644446 86.54913050548149l11.096042154666666 2.2192079454814815c8.876834209185184 0 17.75366720474074-2.2192079454814815 22.19208430933333-11.096042154666666l6.657626263703703-11.096042154666666c28.849710573037036-44.384169832296294 77.6722962962963-71.01467124622222 130.9332991241481-71.01467124622222 86.54913050548149 0 155.3445925925926 68.7954620871111 155.3445925925926 155.3445925925926 0 42.164960673185185-17.75366720474074 84.32992134637037-48.822585723259266 113.17963191940738-8.876834209185184 8.876834209185184-8.876834209185184 22.19208430933333-2.219209159111111 31.06891851851852s22.19208430933333 8.876834209185184 31.06891851851852 2.219209159111111c39.9457527277037-37.72654356859259 64.35704498251852-90.98754761007407 64.35704619614813-146.46775959703703 0-113.17963191940738-88.76833845096297-201.94797037037037-199.72876242488888-201.94797037037037z" p-id="6255"></path></svg>
               </div>
       
               <div class="content">
                 <h1>电话</h1>
                 <span>+86-15988310161</span>
               </div>
               
               <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"> <g class="nc-icon-wrapper" fill="#444444"> <path d="M17.17 32.92l9.17-9.17-9.17-9.17L20 11.75l12 12-12 12z"></path> </g> </svg>
             </a>
           </nav>
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

<script src="<%=request.getContextPath()%>/static/achievement/js/hall.js"></script>
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
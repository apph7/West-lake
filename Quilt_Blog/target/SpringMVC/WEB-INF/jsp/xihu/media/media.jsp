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
    <title>西湖论战·媒体中心</title>
    <!-- 图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css">
    <!-- css文件 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/media/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/media/css/news.css">
    <!-- <link rel="stylesheet" href="css/highlight.css"> -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/static/media/css/media.css">

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
                    <a href="media" class="nav__link active">媒体中心</a>
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
   <div class="blockTop"></div>
    <!--  -->
    <div class="media">
      <div class="m-choice">
         <a class="m-ch" href="news">新闻资讯</a>
         <a class="m-ch" href="mImg">精彩视频</a>
         <a class="m-ch" href="mVideo">精彩图片</a>
     </div>
      <div class="m-news">
         <div class="newsBox">
            <div class="newsBlue">
                <div class="newsBlueTitle" id="m-newsTitle">新闻资讯</div>
            </div>
            <div class="newsPost">
                <div class="post-list post-list_grid">
             
                <!-- Post 1 -->
                <div class="post-list__post post">
                   <figure class="post__preview-img">
                      <a href="news"><img src="<%=request.getContextPath()%>/static/media/media/news1.png" /></a>
                   </figure>
                   
                   <div class="post__header">
                      <time datetime="2023-05-12" class="post__time">2023-05-12</time>
                      <h2><a href="news">【重磅干货】大家都关心的嘉宾PPT下载指南来啦！</a></h2>
                   </div>
                   
                   <div class="post__meta">
                      <a href="#" class="post_boss">西湖论剑</a>
                      <a href="#" class="post__comments">7</a>
                   </div>
                </div>
                
                <!-- Post 2 -->
                <div class="post-list__post post">
                   <figure class="post__preview-img">
                      <a href="news"><img src="<%=request.getContextPath()%>/static/media/media/news2.jpg" /></a>
                   </figure>
                   
                   <div class="post__header">
                      <time datetime="2023-05-08"  class="post__time">2023-05-08</time>
                      <h2><a href="news">2023西湖论剑·数字安全大会举办</a></h2>
                   </div>
                   
                   <div class="post__meta">
                      <a href="#" class="post_boss">央广网</a>
                      <a href="#" class="post__comments">12</a>
                   </div>
                </div>
                
                <!-- Post 3 -->
                <div class="post-list__post post">
                   <figure class="post__preview-img">
                      <a href="news"><img src="<%=request.getContextPath()%>/static/media/media/news3.jpg" /></a>
                   </figure>
                   
                   <div class="post__header">
                      <time datetime="2019-11-14"  class="post__time">2023-05-08</time>
                      <h2><a href="news">2023西湖论剑·数字安全大会在杭举行</a></h2>
                   </div>
                   
                   <div class="post__meta">
                      <a href="#" class="post_boss">人民网</a>
                      <a href="#" class="post__comments">9</a>
                   </div>
                </div>

                 <!-- Post 4 -->
                 <div class="post-list__post post">
                  <figure class="post__preview-img">
                     <a href="news"><img src="<%=request.getContextPath()%>/static/media/media/news4.jpg" /></a>
                  </figure>
                  
                  <div class="post__header">
                     <time datetime="2023-05-12" class="post__time">2023-05-12</time>
                     <h2><a href="news">“新十年”扬帆起航 2023西湖论剑·数字安全大会举办</a></h2>
                  </div>
                  
                  <div class="post__meta">
                     <a href="#" class="post_boss">浙江在线</a>
                     <a href="#" class="post__comments">7</a>
                  </div>
               </div>
               
               <!-- Post 5 -->
               <div class="post-list__post post">
                  <figure class="post__preview-img">
                     <a href="news"><img src="<%=request.getContextPath()%>/static/media/media/news5.jpg" /></a>
                  </figure>
                  
                  <div class="post__header">
                     <time datetime="2023-05-08"  class="post__time">2023-05-08</time>
                     <h2><a href="news">2023西湖论剑·数字安全大会｜车联网如何系牢 “安全”带？</a></h2>
                  </div>
                  
                  <div class="post__meta">
                     <a href="#" class="post_boss">潮新闻客户端</a>
                     <a href="#" class="post__comments">12</a>
                  </div>
               </div>
               
               <!-- Post 6 -->
               <div class="post-list__post post">
                  <figure class="post__preview-img">
                     <a href="news"><img src="<%=request.getContextPath()%>/static/media/media/news6.jpg" /></a>
                  </figure>
                  
                  <div class="post__header">
                     <time datetime="2019-11-14"  class="post__time">2023-05-10</time>
                     <h2><a href="news">范渊：以高远、平远、深远的数字安全观，绘就数字时代“富春山居图”</a></h2>
                  </div>
                  
                  <div class="post__meta">
                     <a href="#" class="post_boss">信息安全与通信保密</a>
                     <a href="#" class="post__comments">9</a>
                  </div>
               </div>
             </div>
            </div>
             <a href="news">
            <div class="morenews">
                <button class="moreNew">更多新闻</button>
            </div>
             </a>
        </div>
      </div>
      <div class="m-image">
         <div class="newsBlue">
            <div class="newsBlueTitle" id="m-imageTitle">精彩图片</div>
        </div>
         <div class="HLBox">
            <a href="mImg">
               <div class="hl"
               style="background-image: url('<%=request.getContextPath()%>/static/media/media/news2.jpg')"
               >
               <div class="card__content--description">
                   <p class="text-reveal">
                     <span>
                       <span>数字安全@数字中国主论坛-精彩瞬间</span>
                     </span>
                   </p>
               </div>
               </div>
            </a>
            <a href="mImg"><div class="hl"
                                    style="background-image: url('<%=request.getContextPath()%>/static/media/media/news3.jpg')">
                   <div class="card__content--description">
                       <p class="text-reveal">

                           <span>数字安全@数字中国主论坛-精彩瞬间</span>
                       </p>
                     </div>
               </div></a>
               
                <a href="mImg">
                  <div class="hl"
                style="background-image: url('<%=request.getContextPath()%>/static/media/media/news4.jpg')">
                    <div class="card__content--description">
                        <p class="text-reveal">
                          <span>
                            <span>数字安全@数字中国主论坛-精彩瞬间</span>
                        </p>
                      </div>
                </div>
                </a>
                
                <a href="mImg">
                  <div class="hl"
                  style="background-image: url('<%=request.getContextPath()%>/static/media/media/news2.jpg')"
                  >
                  <div class="card__content--description">
                      <p class="text-reveal">
                        <span>
                          <span>数字安全@数字中国主论坛-精彩瞬间</span>
                        </span>
                      </p>
                  </div>
                  </div>
                </a>
                <a href="mImg">
                  <div class="hl"
                  style="background-image: url('<%=request.getContextPath()%>/static/media/media/news3.jpg')">
                      <div class="card__content--description">
                          <p class="text-reveal">

                              <span>数字安全@数字中国主论坛-精彩瞬间</span>
                          </p>
                        </div>
                  
                      </div>
                </a> 
                <a href="mImg">
                  <div class="hl"
                  style="background-image: url('<%=request.getContextPath()%>/static/media/media/news4.jpg')">
                      <div class="card__content--description">
                          <p class="text-reveal">

                              <span>数字安全@数字中国主论坛-精彩瞬间</span>
                          </p>
                        </div>
                  </div>
                </a>
                  
               
        </div>
          <a href="mImg">
        <div class="morenews">
         <button class="moreNew">更多图片</button>
       </div>
          </a>
      </div>
      <div class="m-video">
         <div class="newsBlue">
            <div class="newsBlueTitle" id="m-videoTitle">精彩视频</div>
        </div>
         <div class="HLBox">
               <div class="hl jumpToVideo"
               style="background-image: url('<%=request.getContextPath()%>/static/media/media/news5.jpg')"
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
            
        
                <div class="hl jumpToVideo"
                style="background-image: url('<%=request.getContextPath()%>/static/media/media/news4.jpg')">
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
                        </p>
                      </div>
                </div>
         
        
               <div class="hl jumpToVideo"
                style="background-image: url('<%=request.getContextPath()%>/static/media/media/news3.jpg')"
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
                        </p>
                      </div>
                </div> 
            
           
                <div class="hl jumpToVideo"
                style="background-image: url('<%=request.getContextPath()%>/static/media/media/news5.jpg')"
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
       

               <div class="hl jumpToVideo"
               style="background-image: url('<%=request.getContextPath()%>/static/media/media/news4.jpg')">
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
                       </p>
                     </div>
               </div>
         
         
               <div class="hl jumpToVideo"
                    style="background-image: url('<%=request.getContextPath()%>/static/media/media/news3.jpg')"
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
                            </p>
                          </div>
               </div>   
        </div>
          <a href="mVideo">
        <div class="morenews">
         <button class="moreNew">更多视频</button>
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
                <img src="<%=request.getContextPath()%>/static/media/img/logo_bottom.png" alt="">
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
                  <img src="<%=request.getContextPath()%>/static/media/img/wx.webp" alt="">
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
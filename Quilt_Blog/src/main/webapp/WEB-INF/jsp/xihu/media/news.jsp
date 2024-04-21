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
   <div class="news-bk">
       <div class="newsTopInfo">
        <div class="m-news-title">
            【标题】标题的内容
        </div>
        <div class="m-news-info">
            新闻发布方 | 新闻发布时间
        </div>
       </div>
   </div>
   <div class="m-news-content">
    <article>
<!-- 小标题 h2
更换小标题 <hr />
一个<p>就是一个段落
img可以自适应高度
-->
        <div class="wrap">
          <h2>1</h2>
          <p>When I came to men for the first time, then did I commit the hermit's folly, the great folly: I appeared in the market-place.</p>
          <p>And when I spoke to all, I spoke to none. In the evening, however, rope-dancers were my companions, and corpses; and I myself almost a corpse.</p>
          <p>With the new morning, however, there came to me a new truth: Then did I learn to say "Of what account to me are market-place and crowd and crowd-noise and long crowd-ears!"</p>
          <p>You higher men, learn this from me: In the market-place no one believes in higher men. But if you will speak there, very well! The crowd, however, sputters "We are all equal."</p>
          <p>"You higher men," -- so sputters the crowd -- "there are no higher men, we are all equal; man is man, before God -- we are all equal!"</p>
          <p>Before God! -- Now, however, this God has died. Before the crowd, however, we will not be equal. You higher men, go away from the market-place!</p>
          <img src="media/news1.png" alt="">
          <hr />
          <h2>2</h2> 
          <p>Before God! -- Now however this God has died! You higher men, this God was your greatest danger.</p>
          <p>Only since he lay in the grave have you again arisen. Only now comes the great noontide, only now does the higher man become -- master!</p>
          <p>Have you understood this word, O my brothers? You are frightened: Do your hearts turn giddy? Does the abyss here yawn for you? Does the hell-hound here yelp at you?</p>
          <p>Well! Take heart, you higher men! Only now does the mountain of the human future begin to work. God has died: Now we desire that the Superman live!</p>
          <img src="https://obs-xhlj.obs.cn-east-3.myhuaweicloud.com/2023/5/ea44dbfde5904c5ba227dc5984eef5e8.jpg" alt="">
          <hr />
      
          <h2>3</h2>
          <p>The most careful ask today "How is man to be maintained?" I, Zarathustra, ask, as the first and only one: "How is man to be surpassed?"</p>
          <p>The Superman I have at heart;-- that is the first and only thing to me -- and not man: Not the neighbour, not the poorest, not the sorriest, not the best.</p>
          <o>O my brothers, what I can love in man is that he is an over-coming and a down-going. And also in you there is much that makes me love and hope.</o>
          <o>In that you have despised, you higher men, that makes me hope. For the great despisers are the great reverers.</o>
          <o>In that you have despaired, there is much to honour. For you have not learned to submit yourselves, you have not learned petty policy.</o>
          <p>For today the petty people have become master: They all preach submission and humility and policy and diligence and consideration and the long et cetera of petty virtues.</p>
          <p>Whatever is of the effeminate type, whatever originates from the servile type, and especially the crowd-mishmash -- that is what wishes now to be master of all human destiny -- O disgust! Disgust! Disgust!</p>
          <p>They ask and ask and never tire of asking: "How is man to maintain himself best, longest, most pleasantly?" Thereby are they the masters of today.</p>
          <p>These masters of today, surpass them, O my brothers:  These petty people, they are the Superman's greatest danger!</p>
          <p>Surpass, you higher men, the petty virtues, the petty policy, the sand-grain considerateness, the ant-hill politeness, the pitiable comfortableness, the "happiness of the greatest number!"</p>
          <p>And rather despair than submit yourselves! And verily, I love you, because you do not know how to live today, you higher men! For thus do you live best!</p>
          <hr />
          <h2>4</h2>
          <p>Have you courage, O my brothers? Are you stout-hearted? Not the courage before witnesses, but hermit courage and eagle courage, which not even a God any longer beholds?</p>
          Cold souls, mules, the blind and the drunken, I do not call stout-hearted. He has heart who knows fear, but conquers it; who sees the abyss, but with pride.
          <p>He who sees the abyss, but with eagle's eyes, he who with eagle's talons grasps the abyss: He has courage.</p>
      
          <hr />
      
          <h2>5</h2>
          <p>"Man is evil" -- so all the wisest ones said to me for consolation. Ah, if only it were still true today! For evil is man's best strength.</p>
          <p>"Man must become better and more evil"- so do I teach. The most evil is necessary for the Superman's best.</p>
          <p>It may have been well for the preacher of the petty people to suffer and be burdened by men's sin. I, however, rejoice in great sin as my great consolation!</p>
          <p>Such things, however, are not said for long crowd-ears. Every word, also, is not suited for every mouth. These are fine far-away things: At them sheep's hooves shall not grasp!</p>
      
          <hr />
      
          <h2>6</h2>
          <p>You higher men, do you think that I am here to put right what you have put wrong?</p>
          Or that I wish henceforth to make snugger couches for you sufferers? Or show you restless, lost, and confused climbers new and easier footpaths?</p>
          <p>No! No! Three times No! Always more, always better ones of your type shall succumb, for you shall always have it worse and harder.</p>
          <p>Thus only does man grow upwards to the height where the lightning strikes and shatters him: High enough for the lightning!</p>
          <p>Out to the few, the long, the remote go my soul and my seeking: Of what account to me are your many little, short miseries!</p>
          <p>You do not yet suffer enough for me! For you suffer from yourselves, but you have not yet suffered from man. You would lie if you spoke otherwise! None of you suffers from what I have suffered.</p>
        </div>
      </article>
   </div>
    <!-- 新闻的内容
    文字按<p>换行
    图片宽度固定 高度自适应
    -->







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
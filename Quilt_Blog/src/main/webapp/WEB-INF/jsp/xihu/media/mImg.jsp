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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body::-webkit-scrollbar{
            display: none;
        }
        body{
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .xxx{
            height: 100vh;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: rgb(169, 169, 169);
        }
        .m-imgexpand{
            width: 60%;
            height:80%;
        }
        .swiper-container {
  width: 100%;
  height: 100%;

  display: flex;
  align-items: center;
  justify-content: center;

}

.swiper-image {
  object-fit: contain;
  height: 0px;
  width: 0px;
  transition: all 2s;
}

.swiper-image.active {
  height: 100%;
  width: 100%;
}
    </style>
</head>
<body>
    <div class="xxx">
        <div class="m-imgexpand">
            <div class="m-imgIndex"><span class="m-imgNowIndex">1</span>/<span class="m-imgTotalIndex"></span></div>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">
                    <img class="swiper-image active" src="<%=request.getContextPath()%>/static/media/media/news1.png" alt="" />
                  </div>
                  <div class="swiper-slide">
                    <img class="swiper-image" src="<%=request.getContextPath()%>/static/media/media/news2.jpg" alt="" />
                  </div>
                  <div class="swiper-slide">
                    <img class="swiper-image" src="<%=request.getContextPath()%>/static/media/media/news3.jpg" alt="" />
                  </div>
                  <div class="swiper-slide">
                    <img class="swiper-image" src="<%=request.getContextPath()%>/static/media/media/news4.jpg" alt="" />
                  </div>
                  <div class="swiper-slide">
                    <img class="swiper-image" src="<%=request.getContextPath()%>/static/media/media/news5.jpg" alt="" />
                  </div>
                  <div class="swiper-slide">
                    <img class="swiper-image" src="<%=request.getContextPath()%>/static/media/media/news6.jpg" alt="" />
                  </div>
                </div>
                <div class="swiper-button-next swiper-button-white"></div>
                <div class="swiper-button-prev swiper-button-white"></div>
              </div>
        </div>
       
    </div>
  


      <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.js"></script>
    <script>
    //  ================ 浏览器图标 ====================
      let favicon2 = document.createElement('link');
      favicon2.rel = 'xihulunjian icon';
      favicon2.href = '<%=request.getContextPath()%>/static/media/img/smallLogo.png';
      document.head.appendChild(favicon2);

    //   
    // https://medium.com/@arnost/creating-custom-slide-transitions-in-swiper-js-also-with-gsap-ac71f9badf53 
let interleaveOffset = 0.5;
let MimgNowIndex = document.querySelector('.m-imgNowIndex')
let startIndex = 1
let totalIndex = 4
MimgNowIndex.innerText = startIndex
MTotalIndex = document.querySelector('.m-imgTotalIndex')

let slideImages = document.querySelectorAll('.swiper-image');
MTotalIndex.innerText = slideImages.length
let swiper10 = new Swiper('.swiper-container', {
   navigation: {
     nextEl: ".swiper-button-next",
     prevEl: ".swiper-button-prev"
   }, 
   //virtualTranslate: true,
   //watchSlidesVisibility: true,
   speed: 1000,
   on: {
     init: function () {
     },
     slideChange: function () {
       
       

       for (let i = 0; i < slideImages.length; i++) {
         slideImages[i].classList.remove('active')
       }

       swiper10.slides[swiper10.activeIndex].querySelector('.swiper-image').classList.add('active');
       MimgNowIndex.innerText = swiper10.activeIndex+1
     },
     progress(progress) {
        /*console.log('progress:', progress);
        var swiper = this;
        swiper.slides[0].querySelector(".swiper-image").style.width = "100%";
        swiper.slides[0].querySelector(".swiper-image").style.height = "100%";
        for (var i = 0; i < swiper.slides.length; i++) {
          var slideProgress = swiper.slides[i].progress;
          var innerOffset = swiper.width * interleaveOffset;
          var innerTranslate = slideProgress * innerOffset;
          swiper.slides[i].querySelector(".swiper-image").style.width = "100%";
          swiper.slides[i].querySelector(".swiper-image").style.height = "100%";
        }*/
     },
     setTransition(transition) {
        //console.log('transition:', transition);
     },
     setTranslate(translate) {
        /*var swiper = this;
        console.log('translate:', translate);
        console.log(swiper.activeIndex);

        swiper.slides[swiper.activeIndex].style.transition = "width 2s, height 2s;";
        swiper.slides[swiper.activeIndex].querySelector(".swiper-image").style.transition = "2s";
        for (var i = 0; i < swiper.slides.length; i++) {
        }*/
     }
   },
});
    </script>
</body>
</html>
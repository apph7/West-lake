let swiperE = new Swiper(".mySwiper", {
    effect: "coverflow",
    grabCursor: true,
    centeredSlides: true,
    loop: true,
    slidesPerView: "1",
    coverflowEffect: {
      rotate: 0,
      stretch: 0,
      depth: 100,
      modifier: 4,
      slideShadows: false
    },
    keyboard: {
      enabled: true
    },
    mousewheel: {
      thresholdDelta: 70
    },
    initialSlide: 0,
    on: {
      click(event) {
        swiper.slideTo(this.clickedIndex);
      }
    },
    breakpoints: {
      640: {
        slidesPerView: 2
      }
    }
  });

let allType = ` <a href="#">
<div class="people-card">
  <div class="image">
    <img src="expert/speaker1.webp" />
  </div>
  <div class="name">邬贺铨</div>
  <div class="title">中国工程院院士、中国互联网协会咨询委员会主任</div>
</div>
</a>
<a href="#">
<div class="people-card">
  <div class="image">
    <img src="expert/speaker2.webp" />
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
  <img src="expert/speaker3.webp" />
</div>
<div class="name">谭建荣</div>
<div class="title">中国工程院院士</div>

</div>
</a>
<a href="#">
<div class="people-card">
<div class="image">
  <img src="expert/speaker4.webp" />
</div>
<div class="name">兰雨晴</div>
<div class="title">北京航空航天大学软件学院教授、麒麟软件有限公司董事</div>
</div>
</a>

<a href="#">
   <div class="people-card">
   <div class="image">
     <img src="expert/speaker5.webp" />
   </div>
   <div class="name">张豪</div>
   <div class="title">京衡律师事务所高级合伙人、浙江省网络空间安全协会个人信息保护专委会副秘书长</div>
  </div>
   </a>

   <a href="#">
      <div class="people-card">
      <div class="image">
        <img src="expert/speaker6.webp" />
      </div>
      <div class="name">杜广达</div>
      <div class="title">工业和信息化部网络安全管理局副局长</div>
     </div>
      </a>

      <a href="#">
         <div class="people-card">
         <div class="image">
           <img src="expert/speaker7.webp" />
         </div>
         <div class="name">雷楠</div>
         <div class="title">工业和信息化部网络安全管理局数据安全处处长</div>
        </div>
         </a>

         <a href="#">
            <div class="people-card">
            <div class="image">
              <img src="expert/speaker8.webp" />
            </div>
            <div class="name">荆继武</div>
            <div class="title">中国科学院大学密码学院 院长、教授</div>
           </div>
            </a>

            <a href="#">
               <div class="people-card">
               <div class="image">
                 <img src="expert/speaker9.webp" />
               </div>
               <div class="name">严明</div>
               <div class="title">中国计算机学会计算机安全专业委员会荣誉主任、公安部一所、三所原所长 一级警监 研究员</div>
              </div>
               </a>`
            //    -4
let fiveFiveType = ` <a href="#">
<div class="people-card">
<div class="image">
  <img src="expert/speaker6.webp" />
</div>
<div class="name">杜广达</div>
<div class="title">工业和信息化部网络安全管理局副局长</div>
</div>
</a>

<a href="#">
   <div class="people-card">
   <div class="image">
     <img src="expert/speaker7.webp" />
   </div>
   <div class="name">雷楠</div>
   <div class="title">工业和信息化部网络安全管理局数据安全处处长</div>
  </div>
   </a>

   <a href="#">
      <div class="people-card">
      <div class="image">
        <img src="expert/speaker8.webp" />
      </div>
      <div class="name">荆继武</div>
      <div class="title">中国科学院大学密码学院 院长、教授</div>
     </div>
      </a>

      <a href="#">
         <div class="people-card">
         <div class="image">
           <img src="expert/speaker9.webp" />
         </div>
         <div class="name">严明</div>
         <div class="title">中国计算机学会计算机安全专业委员会荣誉主任、公安部一所、三所原所长 一级警监 研究员</div>
        </div>
         </a>`
let fiveSevenType = `<a href="#">
<div class="people-card">
<div class="image">
  <img src="expert/speaker3.webp" />
</div>
<div class="name">谭建荣</div>
<div class="title">中国工程院院士</div>

</div>
</a>
<a href="#">
<div class="people-card">
<div class="image">
  <img src="expert/speaker4.webp" />
</div>
<div class="name">兰雨晴</div>
<div class="title">北京航空航天大学软件学院教授、麒麟软件有限公司董事</div>
</div>
</a>

<a href="#">
   <div class="people-card">
   <div class="image">
     <img src="expert/speaker5.webp" />
   </div>
   <div class="name">张豪</div>
   <div class="title">京衡律师事务所高级合伙人、浙江省网络空间安全协会个人信息保护专委会副秘书长</div>
  </div>
   </a>`
let fiveNineType = ` <a href="#">
<div class="people-card">
  <div class="image">
    <img src="expert/speaker1.webp" />
  </div>
  <div class="name">邬贺铨</div>
  <div class="title">中国工程院院士、中国互联网协会咨询委员会主任</div>
</div>
</a>
<a href="#">
<div class="people-card">
  <div class="image">
    <img src="expert/speaker2.webp" />
  </div>
  <div class="name">
   沈昌祥
  </div>
  <div class="title">中国工程院院士</div>
</div>
</a>`
let speakerContainer = document.querySelector('#speaker-container')
let espeakerTypes = document.querySelectorAll('.e-speakerType span')
espeakerTypes.forEach((item,index) =>{
    item.addEventListener('click',function(){
        if(index == 0){
            speakerContainer.innerHTML = allType
        }else if(index == 1){
            speakerContainer.innerHTML = fiveFiveType
        }else if(index == 2){
            speakerContainer.innerHTML = fiveSevenType
        }else if(index == 3){
            speakerContainer.innerHTML = fiveNineType
        }

        removeTypeActive()
        item.classList.add('active')

    })
})
function removeTypeActive(){
    espeakerTypes.forEach((item) =>{
        item.classList.remove('active')
    })
}
//  ================ 浏览器图标 ====================
let favicon4 = document.createElement('link');
favicon4.rel = 'xi1 icon';
favicon4.href = '<%=request.getContextPath()%>/static/media/img/smallLogo.png';
document.head.appendChild(favicon4);



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



let swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 'auto',
    coverflow: {
      rotate: 50,
      stretch: 0,
      depth: 100,
      modifier: 1,
      slideShadows : true
    },
    loop: true
  });
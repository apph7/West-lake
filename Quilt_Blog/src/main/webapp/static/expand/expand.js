//  ================ 浏览器图标 ====================
let favicon2 = document.createElement('link');
favicon2.rel = 'xihulunjian icon';
favicon2.href = '<%=request.getContextPath()%>/static/achievement/img/smallLogo.png';
document.head.appendChild(favicon2);


// ============= 伸缩栏 =================
const body=document.querySelector('body')
const sidebar=body.querySelector('nav')
const toggle=body.querySelector('.toggle')


// 前两个是点击就可以扩张
toggle.addEventListener('click',()=>{
    sidebar.classList.toggle('close')
})

// ================ 改变内容 切换栏目=================

let blueIndex = 0

const navLink = document.querySelectorAll('.nav-link a')
const expandBox = document.querySelectorAll('.expandBox')
navLink.forEach((item,index)=>{
    item.addEventListener('click',function(){
        if(blueIndex == index){
            return
        }else{
            blueIndex = index
        }
        removeBlue()
        item.classList.add('blue')
        expandBox[index].classList.remove('fade')
    })
})
function removeBlue(){
    navLink.forEach(item=>{
        item.classList.remove('blue')
    })
    expandBox.forEach(item=>{
        item.classList.add('fade')
    })
}


// ================= 加载 ====================
const preloader = document.querySelector("[data-preloader]");

window.addEventListener("load", function () {
  preloader.classList.add("loaded");
  document.body.classList.add("loaded");
});
// ================== 帖子文字的展开和隐藏 ===================
let sstext= document.querySelectorAll('.sc-Content pre')
let ssShow = document.querySelectorAll('.more-link')
sstext.forEach((item,index) =>{
    let style = window.getComputedStyle(item, null);
    let height  = parseInt(style.height, 10);
    let lineHeight = parseInt(style.lineHeight, 10);

    if (height / lineHeight > 8) { //若行高大于8行，则显示阅读全文
        ssShow[index].style.display = 'block';
    }
})
let sstextBox= document.querySelectorAll('.sc-Content')
ssShow.forEach((item,index)=>{
    item.addEventListener('click',function(){
        sstextBox[index].classList.toggle('textExpand') 
        if(sstextBox[index].classList.contains('textExpand')){
            item.innerHTML = "收起"
        }else{
            item.innerHTML = "展开"
        }
    })
})
// ===============图片点击放大===================
let manyImg = document.querySelectorAll('.imageBox img')
let scaleImg = document.getElementById('scaleId')
let popImgBox =  document.getElementById('popImgBox')
manyImg.forEach(item=>{
    item.addEventListener('click',function(){
        console.log('点击')
        scaleImg.src = item.src
        popImgBox.classList.remove('fade')
    })
})
popImgBox.addEventListener('click',function(){
    popImgBox.classList.add('fade')
}) 
const rightRuleBox = document.getElementById('s-ruleBox')


// ===========右侧规则的显示和隐藏===========
let activeFade = false
let yincangBtn = document.querySelector('.yincang')
yincangBtn.addEventListener('click',function(){
    activeFade = true
    rightRuleBox.classList.add("fade");
})
let sanjiao =  document.querySelector('.sanjiao')
sanjiao.addEventListener('click',function(){
    activeFade = false
    rightRuleBox.classList.remove("fade");
})
function scrollFunction() {
    if(!activeFade){
        if (document.body.scrollTop > 250 || document.documentElement.scrollTop > 250) {
            rightRuleBox.classList.remove("fade");
        } else {
            rightRuleBox.classList.add("fade");
        }
    }
}
window.onscroll = function () {
    scrollFunction();
};
// ===========时间排序 or 热度排序 ===========
let paixvText = document.querySelectorAll('.paixvText')
paixvTextIndex = 0
paixvText.forEach((item,index)=>{
    item.addEventListener('click',function(){
        if(index == paixvText){
            return
        }else{
            paixvTextIndex = index 
            if(index == 0){
                paixvText[0].classList.add('orange')
                paixvText[1].classList.remove('orange')
            }else{
                paixvText[1].classList.add('orange')
                paixvText[0].classList.remove('orange')
            }
            
        }
    })
})
// ================== 收起和展开评论 =================
const shouqi = document.querySelectorAll(".shouqi")
const sComment = document.querySelectorAll(".s-comment")
const showpinglun = document.querySelectorAll(".showpinglun") 
shouqi.forEach((item,index)=>{
    item.addEventListener('click',function(){
       sComment[index].classList.add('fade')
    })
})
showpinglun.forEach((item,index)=>{
    item.addEventListener('click',function(){
       sComment[index].classList.remove('fade')
    })
})

// 回复评论
let sconBack = document.querySelectorAll('.scon-back')
// 评论的input 
let commentInput = document.getElementsByClassName('input-comment')


// 第几个input,也就是第几个帖子 从0开始
let xxx = 0
let sForm = document.querySelectorAll('.s-form')

sconBack.forEach(item=>{
    item.addEventListener('click',function(){
       let backPerson = item.parentNode.previousElementSibling.querySelector('.scon-name')
       let inputIndex = item.parentNode.parentNode.parentNode.getAttribute('data-input')
       xxx = inputIndex
       commentInput[inputIndex].placeholder= '@'+backPerson.innerHTML
       sForm[inputIndex].nextElementSibling.innerHTML = '@'+backPerson.innerHTML
       sForm[inputIndex].querySelector('.cancleBack').classList.remove('fade')
    })
})

sForm.forEach(item=>{
    item.addEventListener('submit',function(event){
        let ssss = event.target.elements['comment'].value
        if(ssss.trim() == ''){
            event.preventDefault();
            event.stopPropagation()
            return false
        }
        if(item.nextElementSibling.innerHTML !=""){
            event.target.elements['comment'].value =    item.nextElementSibling.innerHTML + ssss 
        }

        // 这四行用来添加其他的东西,比如帖子的id号什么的
        //  let hiddenInput = document.createElement('input');
        //  hiddenInput.type = 'hidden';
        //  hiddenInput.name = 'extraData'; // 设置名称
        //  hiddenInput.value = 'someValue'; // 设置值
        // this.appendChild(hiddenInput);

        // 把下面这三行加上就不能提交了
        // event.preventDefault();
        // event.stopPropagation()
        // return false
    })
})
let cancleBack = document.querySelectorAll('.cancleBack')
cancleBack.forEach(item=>{

    item.addEventListener('click',function(){
        item.parentNode.querySelector('.input-comment').placeholder = '发表评论...'
        item.parentNode.querySelector('.input-comment').value = ''
        item.parentNode.nextElementSibling.innerHTML = ''
        item.classList.add('fade')
    })
})
// ================ 发表帖子 =======================
let  show_imgBox = document.getElementById("multipleImgBox");
let show_videoBox = document.getElementById('multipleVideoBox')
let  file_input = document.getElementById("uploadImg");
let video_input = document.getElementById("uploadVideo");
function show_image(){
     //创建URL对象
    let show_imgSrc = window.URL.createObjectURL(file_input.files[0]);
    show_imgBox.innerHTML +=  `<img src= ${show_imgSrc} alt="">`

    //显示图片
    show_imgBox.style.display = 'block';
}
function show_video(){
    let show_videoSrc = window.URL.createObjectURL(video_input.files[0]);
    show_videoBox.innerHTML +=`<video src='${show_videoSrc}' controls></video>`
    console.log(show_videoBox.innerHTML)

    show_videoBox.style.display = 'block';
}
let fabuForm = document.getElementById('fabuForm')
fabuForm.addEventListener('submit',function(event){
    let inputText = event.target.elements['fabuText'].value
    if(inputText.trim() == ''){
        event.preventDefault();
        event.stopPropagation()
        return false
    }
})

// ===================诗歌 =================

// 排序
let poetrySortText = document.querySelectorAll('.poetrySortText')
poetrySortText.forEach((item,index) =>{
    item.addEventListener('click',()=>{
        if(index == 0 ){
            poetrySortText[0].classList.add('orange')
            poetrySortText[1].classList.remove('orange')
         }
         if(index == 1){
            poetrySortText[1].classList.add('orange')
            poetrySortText[0].classList.remove('orange')
         }
    })
})
// 作诗
let laishou = document.querySelector('.laishou')
laishou.addEventListener('click',()=>{
   document.querySelector('.zuoshiMask').classList.remove('fade')
})
let exitzuoshi = document.querySelector('.exitzuoshi')
exitzuoshi.addEventListener('click',()=>{
    document.querySelector('.zuoshiMask').classList.add('fade')
 })
 let zuoshiFrom =  document.querySelector('.zuoshiFrom')
 zuoshiFrom.addEventListener('submit',(e)=>{
    let ssss = e.target.elements['shi'].value
    if(ssss.trim() == ''){
        e.preventDefault();
        e.stopPropagation()
        return false
    }
 })
// =================  每日签到  =================
let today = new Date(); //获取当前时间
var year = today.getFullYear();
let month = today.getMonth() + 1; //获取当前月
let day = today.getDate(); //获取当前日

document.querySelector('.day').innerHTML = day
document.querySelector('.month').innerHTML = month + '月'
let calendar = document.querySelector('.calendar')
let str = `<thead>
<tr>
  <td>周一</td>
  <td>周二</td>
  <td>周三</td>
  <td>周四</td>
  <td>周五</td>
  <td>周六</td>
  <td>周天</td>
</tr>
</thead>
<tbody>
<tr>`
let allday = 0
function count() {
    if (month != 2) {
        if (month == 4 || month == 6 || month == 9 || month == 11) //判断是否是相同天数的几个月，二月除外
            allday = 30;
        else
            allday = 31;
    } else {
        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) //判断是否是闰年，进行相应的改变
            allday = 29;
        else
            allday = 28;
    }
}
count()
//获取某年某月第一天是星期几
function dayStart(month, year) {
    var tmpDate = new Date(year, month - 1, 1);
    if (tmpDate.getDay() == 0) {
        return 7
    }
    return (tmpDate.getDay());
}

let totalDay = allday; //获取该月总天数
let firstDay = dayStart(month, year); //获取该月第一天是星期几
let nowWeekday = 1

for (let i = 1; i < firstDay + 1; i++) {
    str += `<td class="prev-month"></td>`; //为起始日之前的日期创建空白节点
    if (nowWeekday == 7) {
        str += `</tr>`
        nowWeekday = 0
    }
    nowWeekday++
}

for (let i = 1; i <= totalDay; i++) {

    if (nowWeekday == 1) {
        str += `<tr>`
        if (i == day) {
            str += `<td class='current-day'>${i}</td>`; //创建日期节点
        } else {
            str += `<td>${i}</td>`
        }

    } else if (nowWeekday == 7) {
        nowWeekday = 0
        if (i == day) {
            str += `<td class='current-day'>${i}</td>`; //创建日期节点
        } else {
            str += `<td>${i}</td>`
        }
        str += `</tr>`
    } else {
        if (i == day) {
            str += `<td class='current-day'>${i}</td>`; //创建日期节点
        } else {
            str += `<td>${i}</td>`
        }
    }
    nowWeekday++
}
str += `</tbody></table>`
calendar.innerHTML = str

// 签到
let topdayQianDao = false
let btn15 = document.querySelector('.btn-15')
btn15.addEventListener('click', function () {
    if (!topdayQianDao) {
        btn15.innerHTML = '签到成功';
        btn15.disabled = true;
        topdayQianDao = true
    }
})
// =======================抽奖======================
const consts = {
    prizeList:[
        {
            prizeName:'小米手机',
            prizeImg:'https://img14.360buyimg.com/imagetools/jfs/t1/104165/34/15186/96522/5e6f1435E46bc0cb0/d4e878a15bfd9362.png'
        },
        {
            prizeName:'谢谢惠顾',
            prizeImg:'thsnks2.png'
        },
        {
            prizeName:'小米手机',
            prizeImg:'https://img14.360buyimg.com/imagetools/jfs/t1/104165/34/15186/96522/5e6f1435E46bc0cb0/d4e878a15bfd9362.png'
        },
        {
            prizeName:'小米手机',
            prizeImg:'https://img14.360buyimg.com/imagetools/jfs/t1/104165/34/15186/96522/5e6f1435E46bc0cb0/d4e878a15bfd9362.png'
        },
    ],
    prizeBgColors:[
        'rgb(255,231,149)',
        'rgb(255,247,233)',
        'rgb(255,231,149)',
        'rgb(255,247,233)',
    ],
    borderColor:'#ff9800'
}

const prizeNum = consts.prizeList.length
const perAngle = 360 / prizeNum
const offsetAngle = perAngle / 2
const circleCount = 3 //旋转圈数
const rotateDuration = 3  // 持续时间
const panel = document.querySelector('.luckpanel')
const jiangMusic = new Audio('jiangMusic.mp3')

let isRotating = false


function drawPanel() {
  const canvas = document.querySelector('#canvas')
  const ctx = canvas.getContext('2d')
//   canvas.clientWidth
  const w = 300
  const h = 300
  const dpr = window.devicePixelRatio
  // 处理设备分辨率
  canvas.width = w * dpr
  canvas.height = h * dpr
  ctx.scale(dpr, dpr)

  // 将画布逆时针旋转90°
  ctx.translate(0, h)
  ctx.rotate(-90 * Math.PI / 180)

  ctx.strokeStyle = consts.borderColor

  const perRadian = (Math.PI * 2) / prizeNum
  for (let i = 0; i < prizeNum; i++) {
    const radian = perRadian * i

    ctx.beginPath()
    // consts.prizeBgColors[i]
    ctx.fillStyle = consts.prizeBgColors[i]
    ctx.moveTo(w/2, h/2)
    ctx.arc(w/2, h/2, w/2, radian, radian + perRadian, false) // 顺时针
    ctx.closePath()
    ctx.stroke()
    ctx.fill()
  }
}

function getPrizeItem({name, src}) {
  const el = document.createElement('div')
  const tpl = `
    <div class="prize-item">
      <div class="prize-item__name">${name}</div>
      <div class="prize-item__img">
        <img src="${src}" alt="">
      </div>
    </div>
  `
  el.innerHTML = tpl

  return el.firstElementChild
}

function fillPrize() {
  const container = document.querySelector('.prize');
  consts.prizeList.forEach((item, i) => {
    const el = getPrizeItem({
      name: item.prizeName,
      src: item.prizeImg
    })

    // 旋转
    const currentAngle = perAngle * i + offsetAngle
    el.style.transform = `rotate(${currentAngle}deg)`

    container.appendChild(el)
  })
}

let startRotateAngle = 0

function rotate(index) {
  jiangMusic.play()
  const rotateAngle = (
    startRotateAngle +
    circleCount * 360 +
    360 - (perAngle * index + offsetAngle) - 
    startRotateAngle % 360
  );

  startRotateAngle = rotateAngle
  panel.style.transform = `rotate(${rotateAngle}deg)`
  panel.style.transitionDuration = `${rotateDuration}s`

  setTimeout(() => {
    rotateEnd(index)
    jiangMusic.pause()
  }, rotateDuration * 1000);
}
let jiangList = document.querySelector('.jiangList')
function rotateEnd(index) {
  isRotating = false
  jiangList.innerHTML += `<div>${consts.prizeList[index].prizeName}</div>`
}

function bindEvent() {
  document.querySelector('.pointer').addEventListener('click', function(){
    let cishu = document.querySelector('.cishu')
    let cishuNum = Number(cishu.innerText)
    if(cishuNum >=1){
        cishuNum -= 1
        cishu.innerHTML = cishuNum 
        

        if (isRotating) {
            return
          } else {
            isRotating = true
          }
      
          const index = Math.floor(Math.random() * prizeNum)
          rotate(index)

    }
   
  })
}

function init() {
  drawPanel()
  fillPrize()
  bindEvent()
}
init()
// 规则显示
let howToGetMask = document.querySelector('.howToGetMask')
howToGetMask.addEventListener('click',function(){
    document.querySelector('.jiangRule').classList.toggle('fade')
})




//// =================  商品   =================

let productList = [
    {
        id:1,
        imgSrc:'<%=request.getContextPath()%>/static/expand/expand/myUeImg.png',
        name:'笔',
        info:'西湖论坛周边钥匙扣',
        price:'10.00',
        // 是否是奖品
        ifPrize:false,
    },
    {
        id:2,
        imgSrc:'<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg',
        name:'钥匙扣',
        info:'西湖论坛周边钥匙扣',
        price:'20.00',
        ifPrize:false,
    },
    {
        id:3,
        imgSrc:'<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg',
        name:'鼠标垫',
        info:'西湖论坛周边钥匙扣',
        price:'20.00',
        ifPrize:false,
    },
    {
        id:4,
        imgSrc:'<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg',
        name:'钥匙扣',
        info:'西湖论坛周边钥匙扣',
        price:'20.00',
        ifPrize:false,
    },
]
let productListHtml = document.querySelector('.productList')
let productStr = ``
function product(){
    productList.forEach(item=>{
        productStr +=
        `<figure class="snip1268">
        <div class="image">
          <img src="${item.imgSrc}"/>
          <a class="add-to-cart" data-id="${item.id}" >添加到购物车</a>
        </div>
        <figcaption>
          <h2>${item.name}</h2>
          <p>${item.info}</p>
          <div class="price">${item.price}</div>
        </figcaption>
    </figure>`
    })
    productListHtml.innerHTML = productStr
}
product()
let carttable = document.querySelector('#carttable')
let addToCart = document.querySelectorAll('.add-to-cart')
let itemsquantity = document.querySelector('#itemsquantity')
let total =  document.querySelector('#total')
let CardList = [
    {
        id:101,
        imgSrc:'expand/blackCat.jpg',
        name:'手机（抽奖）',
        info:'西湖论坛周边钥匙扣',
        price:'20.00',
        ifPrize:true, 
    }
]
function cardInit(){
    CardList.forEach(item=>{
        itemsquantity.innerText = Number(itemsquantity.innerText) +1
        total.innerText = Number(total.innerText) + Number(item.price)
        carttable.innerHTML+= `<tr>
        <td>${item.name}</td>
        <td>${item.price}</td>
        </tr>`
    })
}
function addCard(){
cardInit()
addToCart.forEach(item=>{
    item.addEventListener('click',function(){
       let x = Number(item.getAttribute('data-id'))
       CardList.push(productList[x-1])
       
        carttable.innerHTML+= `<tr>
        <td>${productList[x-1].name}</td>
        <td>${productList[x-1].price}</td>
        </tr>`
        itemsquantity.innerText = Number(itemsquantity.innerText) +1
        total.innerText = Number(total.innerText) + Number(productList[x-1].price)
    })
})}
addCard()
let emptycart = document.querySelector('#emptycart')
function clearCard(){
    carttable.innerHTML= ``
    CardList = CardList.filter(item=>item.ifPrize)
    cardInit()
}
emptycart.addEventListener('click',function(){
    clearCard()
})
// 唤起订单
let payMoney = document.querySelector('.payMoney')
document.querySelector('#checkout').addEventListener('click',function(){
    payMoney.classList.remove('hidden')
    payMoney.querySelector('.payPrice').innerText = total.innerText
    payMoney.querySelector('.payItemNum').innerText = itemsquantity.innerText
    let x = ''
    CardList.forEach(item=>{
        x += item.name+' '
    })
    payMoney.querySelector('.payItem').innerText = x
})
let cancalPay = document.querySelector('.cancalPay')
cancalPay.addEventListener('click',function(){
    payMoney.classList.add('hidden')
})
// 切换微信还是支付宝
let payWx = document.querySelector('.payWx')
let payZfb = document.querySelector('.payZfb')
let payImg = document.querySelector('.payEr img')
payWx.addEventListener('click',()=>{
    payWx.classList.add('paychecked')
    payZfb.classList.remove('paychecked')
    payImg.src = 'expand/blackCat.jpg'
})
payZfb.addEventListener('click',()=>{
    payZfb.classList.add('paychecked')
    payWx.classList.remove('paychecked')
    payImg.src = 'expand/footer.jpg'
})
// 假如订单已完成
function cardAfterPay(){
    // 购物车清空
    carttable.innerHTML= ``
    CardList = []
    itemsquantity.innerText = 0
    total.innerText = 0
}
// cardAfterPay()



// ===================== 海报 =========================
// 背景的选中
let posterBgs = document.querySelectorAll('.posterBg')
let posterBgSrc = 'expand/poster/poster2.png'
posterBgs.forEach(item=>{
    item.addEventListener('click',()=>{
        posterBgs.forEach(e=>{
            e.classList.remove('checked')
        })
        item.classList.add('checked')
        posterBgSrc = item.src

        imgInstance.setSrc(posterBgSrc, () => {
           
            posterCtx.renderAll();
            // posterCtx.sendToBack(imgInstance);
          });
    })
})

const posterCtx = new fabric.Canvas("posterCanvas",{})
posterCtx.setWidth(337)
posterCtx.setHeight(600)
CANVAS_WIDTH = 337 
CANVAS_HEIGHT = 600 
// posterCtx.setBackgroundColor("rgb(100,200,200)");
let image = new Image();
  image.src = posterBgSrc;
  	//1.创建图片实例对象
    let imgInstance = new fabric.Image(image, {
      left: 0, //位置
      top: 0,
      scaleX: CANVAS_WIDTH/image.width,
      scaleY: CANVAS_HEIGHT/image.height,
      erasable:false, //是否可擦除
      hasControls: false, // 是否开启图层的控件
      evented:true,//是否可以支持事件
      selectable:false
    });

    //2.添加到画布
    posterCtx.add(imgInstance);

  let text = new fabric.IText(`hello \n world!`, {
    left: 0,
    top: 0,
    cornerColor: 'pink', // 角的颜色（被选中时）
    borderColor: 'yellowGreen', // 边框颜色（被选中时）
  });
  let posterCont = new fabric.IText(`hello \n world!`, {
    left: 60,
    top: 80,
    cornerClor: 'pink', // 角的颜色（被选中时）
    borderColor: 'yellowGreen', // 边框颜色（被选中时）
  });
  posterCtx.add(text)
//   posterCtx.bringForward(text);
  posterCtx.add(posterCont)
//   posterCtx.bringForward(posterCont);

let ptColor = `rgb(0,0,0)`
let pcColor = `rgb(0,0,0)`
Colorpicker.create({
    // 容器标签
    el: "color-picker",
    // 默认颜色
    color: "#000000",
    // 颜色切换
    change: function (el, hex, rgb) {
      // 修改容器标签颜色，如果需要透明度可以自行调整
      el.style.backgroundColor = hex;
      // el.style.backgroundColor = `rgba(${rgb.r}, ${rgb.g}, ${rgb.b}, ${rgb.a})`;
      ptColor = `rgb(${rgb.r},${rgb.g},${rgb.b})`
      text.set({
        fill:ptColor
      })
      posterCtx.renderAll();
    },
  });
  Colorpicker.create({
        // 容器标签
        el: "color-picker1",
        // 默认颜色
        color: "#000000",
        // 颜色切换
        change: function (el, hex, rgb) {
          // 修改容器标签颜色，如果需要透明度可以自行调整
          el.style.backgroundColor = hex;
          // el.style.backgroundColor = `rgba(${rgb.r}, ${rgb.g}, ${rgb.b}, ${rgb.a})`;
          pcColor = `rgb(${rgb.r},${rgb.g},${rgb.b})`
          posterCont.set({
            fill:pcColor
          })
          posterCtx.renderAll();
        }
  })
  document.querySelector('#baocun').addEventListener('click',saveImage,false)
  function saveImage() {
    this.href = posterCtx.toDataURL({
        format: 'png',
        quality: 0.8,
        width: 337,
        height: 600
    });
    this.download = 'canvas.png';
}
  






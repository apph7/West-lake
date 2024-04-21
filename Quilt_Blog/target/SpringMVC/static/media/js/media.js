const cards = document.querySelectorAll('.hl')
const yRange = [-10,10];
const xRange = [-10,10];
function getRoate(range,value,max){
   return value / max * (range[1]-range[0]) + range[0]
}
cards.forEach(item =>{
    item.addEventListener('mousemove',(e)=>{
        let {offsetX , offsetY} = e 
        let {offsetWidth,offsetHeight} = item
        let ry = -getRoate(yRange,offsetX,offsetWidth)
        let rx = getRoate(xRange,offsetY,offsetHeight)
        //  console.log(rx)
         item.style.setProperty('--rx',`${rx}deg`)
         item.style.setProperty('--ry',`${ry}deg`)
    })
    item.addEventListener('mouseleave',()=>{
        item.style.setProperty('--rx',`0deg`)
        item.style.setProperty('--ry',`0deg`)
   })
})

let jumpToVideo = document.querySelectorAll('.jumpToVideo')
jumpToVideo.forEach(item=> {
    item.addEventListener('click',function(){
        window.location.href= 'mVideo.html'
    })
})
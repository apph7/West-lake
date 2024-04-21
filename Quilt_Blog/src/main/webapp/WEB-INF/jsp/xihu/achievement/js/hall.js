
let hTitles = document.querySelectorAll('.title')
let hNavs = document.querySelectorAll('.h-nav')
// h-nav
let hbuttons = document.querySelectorAll('.h-button')
hbuttons.forEach((item,index) =>{
    item.addEventListener('click',()=>{
        item.classList.toggle('active') 
        hTitles[index].classList.toggle('active')  
        hNavs[index].classList.toggle('active')   
    })
})

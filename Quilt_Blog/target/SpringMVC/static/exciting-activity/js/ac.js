// type 的类型
// news 观看功能（有的有下载pdf功能） 可以去到news页面
// subscribe 允许被订阅 可以去到订阅页面  
// train   去到特殊页面 比如报名和花钱 西湖论剑安全特训营

// sort 页面顶上的分类id
const ac = [
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac1.png',
        name:['格致论道@西湖论剑'],
        info:'“格致论道”是中国科学院计算机网络信息中心和中国科学院科学传播局联合主办的科学文化讲坛。致力于非凡思想的跨界交流，提倡以"格物致知"的精神探讨科技、教育、生活、未来的发展。',
        time:'2023-05-05 18:30 - 21:45',
        location:'杭州市滨江区文化中心剧院一层',
        heat:22,
        type:'subscribe',
        sortid:1
    },
    {   imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac2.png',
        name:['西湖论剑安全特训营','网络攻防蓝队实战技法进阶班'],
        info:'本次培训面向网络安全从业人员，特别是负责网络安全防护的蓝队人员，以及有意向从事蓝队工作的人员。',
        time:'2023-05-04 09:00 - 18:00',
        location:'线上+线下',
        heat:22,
        type:'train',
        sortid:2
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac3.png',
        name:['西湖论剑安全特训营','数字安全官高级研修班'],
        info:'作为整个企业安全治理结构的设计者和践行人，数字安全官即需要了解国家、行业合规需求与发展趋势，还要洞悉数字经济背景下企业所需的安全能力，协助企业提升安全能力建设的成熟度。',
        time:'2023-05-04 09:00 - 18:00',
        location:'线上+线下',
        heat:23,
        type:'train',
        sortid:2
    },

    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac4.png',
        name:['新·见未来 实·现梦想'],
        info:'今年是习近平总书记提出“八八战略”实施的20周年，是杭州亚运会举办之年，是数字浙江建设20周年,同时也是西湖论剑网络安全大会迈向第二个十年的起始之年。',
        time:'2023-04-19 13:30 - 17:00',
        location:'线上',
        heat:33,
        type:'subscribe',
        sortid:3
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac5.png',
        name:['新品发布日（精彩预告）'],
        info:'4月19日，以“新·见未来 实·现梦想”为主题的安恒信息首次年度新品发布会即将举行，来自产业界、投资界、财经界、媒体界等多方代表将共同见证。',
        time:'2023-04-18 09:00 - 09:30',
        location:'线上',
        heat:34,
        type:'subscribe',
        sortid:3
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac6.png',
        name:['第二直播间-1'],
        info:'本期嘉宾：左晓栋教授 中国科学技术大学公共事务学院、网络空间安全学院',
        time:'2022-07-07 14:00 - 14:30',
        location:'线上',
        heat:34,
        type:'subscribe',
        sortid:4
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac7.png',
        name:['第二直播间-2'],
        info:'本期嘉宾：尤其 中国网络安全审查技术与认证中心 培训与人员认证部副主任、黄玉钏 应急管理部大数据中心网络安全部负责人',
        time:'2022-07-05 14:00 - 15:00',
        location:'线上',
        heat:36,
        type:'subscribe',
        sortid:4
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac8.png',
        name:['第二直播间-3'],
        info:'本期嘉宾：段平霞 安恒信息高级副总裁、崔光耀 中国信息安全原副社长、主编',
        time:'2022-07-05 14:00 - 15:00',
        location:'线上',
        heat:36,
        type:'subscribe',
        sortid:4
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac9.png',
        name:['小强实验室'],
        info:'擦亮眼睛，智能家居有安全风险，小强实验室探秘，“安全屋”里的奥秘。',
        time:'2022-07-04 14:00 - 15:00',
        location:'线上',
        heat:23,
        type:'subscribe',
        sortid:5
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac11.png',
        name:['新时代青年科学家安全观对话'],
        info:'元宇宙是一个新概念吗？新技术下安全要怎么做？他们带着答案来了！',
        time:'2022-06-28 14:00 - 15:00',
        location:'线上',
        heat:55,
        type:'subscribe',
        sortid:5
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac11.png',
        name:['新时代青年科学家安全观对话'],
        info:'元宇宙是一个新概念吗？新技术下安全要怎么做？他们带着答案来了！',
        time:'2022-06-28 14:00 - 15:00',
        location:'线上',
        heat:55,
        type:'subscribe',
        sortid:6
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/ac12.png',
        name:['光明网AI主播精彩专访','西湖论剑·安全对话'],
        info:'“网安”与“医学”话攻防 跨次元漫谈病毒',
        time:'2022-06-27 10:00 - 11:00',
        location:'线上',
        heat:31,
        type:'subscribe',
        sortid:5
    },
    {
        imgSrc:'<%=request.getContextPath()%>/static/exciting-activity/ac/acb.png',
        name:['西湖论剑的十个维度'],
        info:'2023年，西湖论剑迈入新十年，奋进十年，持续精进，新篇将起，邀君从高度、力度、厚度、精度……十个维度，共鉴大会。',
        time:'2023-04-12',
        location:'线上+线下',
        heat:23,
        type:'news',
        sortid:5
    },
    // {
    //     imgSrc:'../ac/aca.png',
    //     name:['十周年精华特刊'],
    //     info:'分为三个板块:大会介绍、2022西湖论剑、十周年献礼',
    //     time:'2023-04-03 00:00',
    //     location:'线上',
    //     heat:23,
    //     type:'news',
    //     sortid:5
    // },
]
function changeStr(xx){
    let str = ``
    xx.forEach(x=>{
        str+=`<div class="card"><img class="card__img" src="${x.imgSrc}">
        <div class="card__content">`
        x.name.forEach(h=>{
            str +=   `<h1 class="card__header">${h}</h1>`
        })
        str+=`<div class="card__text-wrapper">
            <p class="card__text">${x.info}</p>
            <p class="card__text"><i class="ri-time-line ac-icon">${x.time}</i><br>
               <i class="ri-map-pin-line  ac-icon">${x.location}</i><br>
               <i class="ri-flag-line ac-icon">${x.heat}</i>`
        if(x.type == 'subscribe'){
            str+=`<br><i class="ri-magic-fill ac-d-icon">订阅</i>`
        }
        str+=`</p>
         </div>
          <button class="card__btn">了解详情 <span>&rarr;</span></button>
        </div>
        </div>`


     })
     return str
}
let acGrid = document.getElementById('acGrid')
function resetAc(index){
    let str = ``
    
   if(index == 0){
    let xx = ac
    str = changeStr(xx)
   }else{
     let xx = ac.filter(item=>item.sortid == index)
     str = changeStr(xx)
   }
   acGrid.innerHTML = str
}
resetAc(0)
let acSort = document.querySelectorAll('.acSort span')
acSort.forEach((item,index)=>{
    item.addEventListener('click',function(){
        resetAc(index)
        acSort.forEach(item=>{
            item.classList.remove('active')
        })
        item.classList.add('active')
    })
})
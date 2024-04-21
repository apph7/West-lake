// dataid    5月6日 上午

const ca = [
    {
        dateId:0,
        date:"5月5日 下午",
        content:[{
            name:"格致论道@西湖论剑",
            dateId:0,
            date:"5月5日 下午",
            time:"09:00 - 12:00",
            location:"杭州洲际酒店·杭州厅",
            type:3
        },
            {
                name:"开幕式及全体大会",
                dateId:0,
                date:"5月5日 下午",
                time:"09:00 - 12:00",
                location:"杭州洲际酒店·杭州厅",
                type:3
            }]
    },
    {
        dateId:1,
        date:"5月6日 上午",
        content:[
            {
                name:"95后极客青年Talk",
                dateId:1,
                date:"5月6日 上午",
                time:"10:00 - 10:30 ",
                location:"线上直播",
                type:4
            },
        ]

    },{
        dateId:2,
        date:"5月6日 下午",
        content:[
            {
                name:"当科幻照进现实我们会更安全吗？",
                dateId:2,
                date:"5月6日 下午",
                time:"13:00 - 13:30 ",
                location:"线上直播",
                type:4
            },
            {
                name:"人工智能会颠覆安全行业吗？",
                dateId:2,
                date:"5月6日 下午",
                time:"15:00 - 15:30",
                location:"线上直播",
                type:4
            },
            {
                name:"反诈直播间@西湖论剑",
                dateId:2,
                date:"5月6日 下午",
                time:"16:00 - 16:30 ",
                location:"线上直播",
                type:4
            },
        ]
    },{
        dateId:3,
        date:"5月7日 上午",
        content:[
            {
                name:"主论坛",
                dateId:3,

                time:"09:00 - 12:00",
                location:"5月7日 上午",
                type:1
            },
            {
                name:"生态合作伙伴分论坛",
                dateId:3,
                date:"5月7日 上午",
                time:"09:00 - 22:00",
                location:"杭州英冠索菲特酒店",
                type:5
            },
        ]
    },{
        dateId:4,
        date:"5月7日 下午",
        content:[
            {
                name:"数字中国&安全治理论坛",
                dateId:4,
                date:"5月7日 下午",
                time:"13:30 - 18:00",
                location:"杭州洲际酒店·杭州厅",
                type:2
            },
            {
                name:"信创软件供应链安全论坛",
                dateId:4,
                date:"5月7日 下午",
                time:" 13:30 - 17:10 ",
                location:"杭州洲际酒店·天津厅",
                type:2
            },

            {
                name:"车联网安全论坛",
                dateId:4,
                date:"5月7日 下午",
                time:"13:30 - 17:00",
                location:"杭州洲际酒店·上海厅",
                type:2
            },
            {
                name:"工业领域网络和数据安全论坛",
                dateId:4,
                date:"5月7日 下午",
                time:"  13:30 - 17:30",
                location:"杭州洲际酒店·北京厅",
                type:2
            },

            {
                name:"独家探营·数字安全创新成果展",
                dateId:4,
                date:"5月7日 下午",
                time:"13:30 - 17:00",
                location:"线上直播",
                type:4
            },
            {
                name:"第二直播间",
                dateId:4,
                date:"5月7日 下午",
                time:"  13:30 - 17:30",
                location:"线上直播",
                type:4
            },

        ]
    },{
        dateId:5,
        date:"5月8日 上午",
        content:[  {
            name:"教育技术产业融合创新发展论坛",
            dateId:5,
            date:"5月8日 上午",
            time:" 08:30 - 12:10",
            location:"杭州洲际酒店·国际厅1厅",
            type:2
        },

            {
                name:"商用密码应用论坛",
                dateId:5,
                date:"5月8日 上午",
                time:" 09:00 - 12:00",
                location:"杭州洲际酒店·国际厅2厅",
                type:2
            },
            {
                name:"MSS安全托管运营服务论坛",
                dateId:5,
                date:"5月8日 下午",
                time:" 13:30 - 18:00",
                location:"杭州洲际酒店·国际厅1厅",
                type:2
            },
            {
                name:"金融行业网络安全论坛",
                dateId:5,
                date:"5月8日 下午",
                time:" 13:30 - 18:00",
                location:"杭州洲际酒店·国际厅2厅",
                type:2
            },]
    }
]
let agendaList = ca
let caDateType = document.querySelectorAll('.ca-dateType span')
//  caAgendaType = document.querySelectorAll('.ca-agendaType span')

caAgendaIndex = 0
agendaListStr = ``
let caContent = document.querySelector('.ca-content')

sortDataAgenda(agendaList)

function sortDataAgenda(list){
    agendaListStr = ``
    list.forEach(item=>{
        agendaListStr +=`<div class="ca-c-item">
    <div class="ca-c-title">
       <div class="catit">
          <p content="${item.date}">${item.date}</p>
        </div>
    </div>
    <div class="ca-c-container">`

        item.content.forEach(x=>{
            agendaListStr +=`
        <a class="card1" >
           <h3>${x.name}</h3>
           <p class="small"><i class="ri-time-line"></i>${x.time}</p>
           <p class="small"> <i class="ri-map-pin-time-line"></i>${x.location}</p>
           <p class="small ca-weiding">订阅</p>
           <div class="go-corner" href="#">
             <div class="go-arrow">
              <i class="ri-logout-box-r-line"></i>
             </div>
           </div>
     </a>`
        })
        agendaListStr+= `</div>
    </div>`
    })
    caContent.innerHTML = agendaListStr
}

let list
let caDIndex = 0
function clearDateActive(){
    caDateType.forEach(item=>{
        item.classList.remove('active')
    })
}
caDateType.forEach((item,index)=>{
    item.addEventListener('click',function(){
        sortdata(index)
        sortDataAgenda(list)
        clearDateActive()
        item.classList.add('active')
        caDIndex = index
    })
})

function sortdata(index){
    if(index==0){
        list = agendaList
    }
    else if(index == 1){
        list = agendaList.filter(item => item.dateId == 0 )
    }else{
        list = agendaList.filter(item => (item.dateId == (index-1)*2 ) ||  (item.dateId == (index-1)*2-1))
    }
}
let caWeiding = document.querySelectorAll('.ca-weiding')
caWeiding.forEach(item =>{
    item.addEventListener('click',function(){
        item.innerText = '已订阅'
    })
})
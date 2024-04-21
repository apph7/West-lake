<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie ie6 lt8 lt9 lt10"><![endif]-->
<!--[if IE 7]><html class="ie ie7 lt8 lt9 lt10"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lt9 lt10"><![endif]-->
<!--[if IE 9]><html class="ie ie9 lt10"><![endif]-->
<!--[if (gt IE 9) | !(IE)]><!-->
<html>
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta name="author" content="guanwang" />

    <meta name="keywords" content="个人中心 2023西湖论剑，西湖论剑官网"/>
    <meta name="description" content="2023西湖论剑·数字安全大会"/>
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:image" content="/doa/images/logo2.png" />
    <meta name="robots" content="all" />
    <title>个人中心 2023西湖论剑</title>
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/test/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/test/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/test/css/iconfont.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/test/css/ax.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/test/css/common.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/test/css/user.css">
    <!--公用文件 END-->
    <!--[if lt IE 9]>

    <![endif]-->

</head>
<body>
<div class="loading_wrap">
    <div class="loading_container">
        <div class="loading1"></div>
        <div class="loading2"></div>
        <div class="loading3"></div>
    </div>
</div>
    <header id="header" class="ax-header">
        <div class="ax-row">
            <a href="/" >
                <img src="<%=request.getContextPath()%>/static/img/logo.png" alt="">
            </a>
            <div class="ax-col"></div>
            <nav class="ax-nav">
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="0" href="" >首页</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="1" href="agenda" >大会议程</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="2" href="about" >关于大会</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="3" href="expert" >大咖云集</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="4" href="/wonderful_activity" >精彩活动</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="5" href="/exhibitor" >展商风采</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="6" href="/results" >成果发布</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="7" href="/news" >媒体中心</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="8" href="/attendance_guide" >参会指南</a>


                </div>
                <div  class="  ax-item"

                >
                    <a class="ax-text " data-id="9" href="/agendaLive" >大会直播</a>


                </div>

            </nav>
            <div class="ax-login sign">
                <a href="javascript:;">
                    <i class="iconfont icon-yonghu"></i>
                    <span>登录</span>
                </a>
                <a href="javascript:;">注册</a>
            </div>
            <div class="individual ax-login">
                <a href="/user">
                    <i class="iconfont icon-yonghu"></i>
                    <span>个人中心</span>
                </a>
                <a href="javascript:;" id="logout">
                    <span>退出</span>
                </a>
            </div>
        </div>
    </header>
<div id="app" class="user">
    <div class="common-banner container" style="background-image: url(https://obs-xhlj.obs.cn-east-3.myhuaweicloud.com/2023/3/7a0f1a8a401a4672a02783624f245507.jpg) ">
        <div class="ax-row">
            <h1 class="wow animate__animated animate__fadeInLeft">个人中心</h1>
        </div>
    </div>

    <div class="user_main">
        <div class="ax-row">
            <div class="left personalData wow animate__animated animate__fadeInRight">
                <div class="user_name  ">
                    <h1>{{userInfo.name}}</h1>
                    <span>
                        {{
                            userInfo.role==1?'大会嘉宾 ':
                                    userInfo.role==2?' 线上观众 ':
                                            userInfo.role==3?' 工作人员 ':''
                        }}
                    </span>
                </div>
                <div class="user_integral">
                    <p>我的积分</p>
                    <div>
                        <span class="icon-_jifen iconfont"></span>
                        <span>{{totalScore}}</span>
                    </div>
                    <a href="javascript:;" :class="SigninToday?'pointer hover link-button':'hover link-button'  " @click="getSigninScore">
                        {{SigninToday?'已签到':'每日签到'}}
                    </a>
                </div>
                <div class="user_information">
                    <ul>
                        <li>
                            <span>公司</span>
                            <p class="text-overflow">{{userInfo.company}}</p>
                        </li>
                        <li>
                            <span>部门</span>
                            <p>{{userInfo.department}}</p>
                        </li>
                        <li>
                            <span>职位</span>
                            <p>{{userInfo.position}}</p>
                        </li>
                        <li>
                            <span>联系电话</span>
                            <p>{{userInfo.phone}}</p>
                        </li>
                        <li>
                            <span>邮箱</span>
                            <p>{{userInfo.email}}</p>
                        </li>
                    </ul>
                    <a href="###"  class=" hover link-button "  @click="clickInformation">
                        修改资料
                    </a>
                </div>
                <div class="user_code" v-if="userInfo.role==1" >
                    <div id="qrcode"></div>
                    <p>嘉宾行程扫码可见</p>
                </div>
            </div>
            <div class="right content wow animate__animated animate__fadeInUp">
                <div class="tab_nav">
                    <ul>
                        <li  :class="{active:tabNav==0}" @click="mySubscribeList,tabNav=0">
                            <span class="iconfont icon-dingyue"></span>
                            <span>我的订阅</span>
                        </li>
                        <li  :class="{active:tabNav==1}" @click="tabNav=1">
                            <span class="iconfont icon-weibiaoti2fuzhi14"></span>
                            <span>我的积分</span>
                        </li>
                    </ul>
                </div>
                <div class="tab_content" v-show="tabNav==0">
                    <div class="subscribe">
                        <ul>
                            <li  :class="{active:subscribeTab==0}" @click="mySubscribeList, subscribeTab=0,currentPage=1">
                                议程订阅
                            </li>
                            <li  :class="{active:subscribeTab==1}" @click="queryMySubscribe,subscribeTab=1,currentPage=1">
                                精彩活动订阅
                            </li>
                        </ul>
                        <div class="subscribe_content" v-show="subscribeTab==0">
                            <div class=" ax-grid ax-grid-3 ax-space-xxl" v-if="agendaList.length>0">
                                <div v-for="(item,index) in agendaList" class="item ">
                                    <div class="ax-card-block" @click="subscribe(item)">
                                        <div class="ax-img">
                                            <a v-if="item.coverImgUrl" href="javascript:;" class="ax-figure" :style="'background-image:url('+item.coverImgUrl+'),var(--load-gif);'"></a>
                                            <a v-else href="javascript:;" class="ax-figure" style="background-image:url(<%=request.getContextPath()%>/static/img/bg_none.png),var(--load-gif);"></a>
                                            <div class="box">
                                                <div class="top">
                                                    <h1 class="">{{item.title}}</h1>
                                                    <span> {{item.typeName}}</span>
                                                    <div href="javascript:;" class="type">
                                                        {{item.status==1?'未开始':item.status==2?'直播中':item.status==3?'观看回放':''}}
                                                    </div>
                                                </div>
                                                <div class="bottom">
                                                    <span class="iconfont icon-31shijian"></span>
                                                    <span>{{item.timeQuantum}}</span>
                                                    <span class="iconfont icon-dizhi"></span>
                                                    <span>{{item.site}}</span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div v-else style="text-align: center">
                                <img src="/img/bg_none.png" alt="" style="width: 30rem;">
                            </div>
                        </div>
                        <div class="wonderful_content" v-show="subscribeTab==1">
                            <div class=" ax-grid ax-grid-3 ax-space-xxl" v-if="wonderfulList.length>0">
                                <div v-for="(item,index) in wonderfulList" class="item ">
                                    <div class="ax-card-block">
                                        <div class="ax-img">

                                            <a v-if="item.image" href="javascript:;" class="ax-figure" :style="'background-image:url('+item.image+'),var(--load-gif);'"></a>
                                            <a v-else href="javascript:;" class="ax-figure" style="background-image:url(<%=request.getContextPath()%>/static/img/bg_none.png),var(--load-gif);"></a>
                                        </div>
                                        <div class="ax-title">
                                            <h1 class="text-overflow">{{item.title}}</h1>
                                            <span>{{item.activeDate.substring(0,10)}} {{item.activeTime}}&nbsp;</span>
                                        </div>
                                        <div class="button">
                                            <a :href="'/activityLive/'+item.infoCommon+'.html'" target="_blank" class="details hover link-button ">
                                                查看详情
                                            </a>
                                            <!--                                            <a href="javascript:;"  @click="delete(2,item.subscribeId)" class="details hover link-button ">-->
                                            <!--                                               取消订阅-->
                                            <!--                                            </a>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div v-else style="text-align: center">
                                <img src="/img/bg_none.png" alt="" style="width: 30rem;">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab_content" v-show="tabNav==1">
                    <div class="integrale">
                        <ul>
                            <li  :class="{active:integraleTab==0}" @click="integraleTab=0">
                                积分规则
                            </li>
                            <li  :class="{active:integraleTab==1}" @click="getScoreGoodsList(),currentPage=1,count=0,integraleTab=1">
                                积分兑换
                            </li>
                            <li  :class="{active:integraleTab==2}" @click="getUserScoreList(),integraleTab=2">
                                积分明细
                            </li>
                            <!--                            <li  :class="{active:integraleTab==3}" @click="queryIntegrateRankingList(),integraleTab=3">-->
                            <!--                                积分排名-->
                            <!--                            </li>-->
                        </ul>
                        <div class="rules_content" v-show="integraleTab==0">
                            <table class="ax-table">

                                <tbody>
                                <tr>
                                    <td>用户注册</td>
                                    <td>+100积分</td>
                                    <td>注册账号即送100积分 </td>
                                    <td><span>已注册</span></td>
                                </tr>
                                <tr>
                                    <td>签到</td>
                                    <td>+100积分</td>
                                    <td>签到即送100积分 <span>（每日仅限一次）</span> </td>
                                    <td><a href="javascript:;" class="hover link-button" v-if="!SigninToday" @click="getSigninScore">去签到</a>
                                        <span v-else>已签到</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>完善信息</td>
                                    <td>+1500积分</td>
                                    <td>完善信息即送1500积分 <span>（仅限一次）</span> </td>
                                    <td>
                                        <a href="javascript:;" class="hover link-button"  v-if="!ImproveInformation" @click="clickInformation">去完善</a>
                                        <span v-else>已完善</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>观看直播（5分钟以上）</td>
                                    <td>+2000积分</td>
                                    <td>观看直播（5分钟以上）即送2000积分  </td>
                                    <td>
                                        <a href="/agenda/" class="hover link-button" v-if="sysconfig!=1">观看直播</a>
                                        <span v-else style="background: #eee;color:#999;">未开始</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>订阅</td>
                                    <td>+200积分</td>
                                    <td>订阅即送200积分  </td>
                                    <td>
                                        <a href="/agenda/" class="hover link-button" v-if="sysconfig!=1">去订阅</a>
                                        <span v-else style="background: #eee;color:#999;">未开始</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>分享</td>
                                    <td>+200积分</td>
                                    <td>微信小程序参与分享即送200积分<span>（每日仅限一次）</span>   </td>
                                </tr>
                                <tr>
                                    <td>线下展商打卡</td>
                                    <td>+200积分</td>
                                    <td>线下展商打卡即送200积分<span>（每个展位打卡仅限一次）</span>   </td>
                                </tr>
                                <tr>
                                    <td>邀请好友参会</td>
                                    <td>+500积分</td>
                                    <td>邀请好友注册即送500积分<span>（小程序邀请）</span>   </td>
                                </tr>
                                </tbody>
                            </table>
                            <h1>积分规则说明</h1>
                            <div class="">
                                1.您所得积分可参与平台不定期开展的物品兑换活动，具体参见每次兑换活动说明；<br>
                                2. 用户所得积分仅可在活动期间内参与物品兑换活动，活动结束后将无法进行兑换，每个账号用户在活动期间仅能参与3次兑换，您不得通过直接或间接方式利用多个账号获取多次兑换机会；<br>
                                3. 您获取积分后将有机会获取奖品。请以网站所展示的展品为准（奖品先到先得，全部兑换完为止）<br>
                                4. 请您勿必知晓，您须按要求填写相关信息，如因用户原因导致无法配送或收货等后果由用户自行承担相关责任；同时，本活动奖品价值为市场参考价值，且您所收到奖品请以所发送的实物为准；<br>
                                5.如您在积分领取及活动过程中存在违规行为（包括但不限于使用多个账号、使用辅助程序等非人为操作方式、利用平台技术漏洞和平台规则漏洞等作弊方式或他不合理方式参与本活动），平台有权取消、冻结您的积分并取消您参与活动的资格，没收相关奖励，情节严重的，平台有权封禁账号并追究用户违规责任；<br>
                                6. 如出现不可抗力或情势变更的情况（包括但不限于重大灾害事件、活动受政府机关指令需要停止举办或调整的、活动遭受严重网络攻击或因系统故障需要暂停举办的），则平台可依相关法律法规的规定主张免责；<br>
                                7.平台可以根据运营情况对积分规则进行变动或调整，相关变动或调整将公布在活动页面上，公布后依法生效；<br>
                                8. 平台在法律允许的最大范围内对活动拥有解释权。
                            </div>

                        </div>
                        <div class="exchange_content" v-show="integraleTab==1">
                            <div class=" ax-grid ax-grid-1 ax-space-xxl">
                                <div v-for="(item,index) in exchangeList" :class="item.canExchange?'active item':'item' ">
                                    <div class="ax-card-block" @click="exchangeRecordsDetail(item)">
                                        <div class="ax-img">
                                            <a href="###" class="ax-figure"
                                               :style="'background-image:url('+item.image+'),var(--load-gif);'">
                                            </a>
                                        </div>
                                        <div class="ax-right">
                                            <div class="ax-title">
                                                <h1 class="text-overflow">{{item.name}}</h1>
                                                <p >{{item.goods_desc}}</p>
                                            </div>
                                            <div class="bottom">
                                                <p><span>{{item.score}}</span>积分</p>
                                                <a  target="_blank" :class="item.count==0?'grey ':'details hover link-button' " @click="popupaddress(item.id,item.score)" v-if="!item.canExchange">
                                                    {{item.count==0?'已抢空':'立即兑换'}}
                                                </a>
                                                <a  target="_blank" class="details hover link-button " v-if="item.canExchange">
                                                    已兑换
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                    <div :id="'Records'+item.id" class="RecordsDetail">
                                        <div class="ax-close">
                                            <i class="ax-iconfont ax-icon-close" @click="closeRecordsDetail(item.id)"></i>
                                        </div>
                                        <div class="content">
                                            <h1>该商品于{{RecordsDetail.createtime}}已兑换</h1>
                                            <ul>
                                                <li>收货地址:</li>
                                                <li>{{RecordsDetail.consignee}} {{RecordsDetail.phone}}</li>
                                                <li>{{RecordsDetail.detailAddress}}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="details_content" v-show="integraleTab==2">
                            <table class="ax-table" stripe=odd>

                                <tbody>
                                <tr>
                                    <th>时间</th>
                                    <th>操作</th>
                                    <th>积分变动</th>
                                </tr>
                                <tr v-for="(item,index) in integralList">
                                    <td>{{item.createtime}}</td>
                                    <td>{{item.sceneName}}</td>
                                    <td>{{item.score.toString().indexOf('-')?'+'+item.score:item.score}}积分 </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <!--                        <div class="details_content" v-show="integraleTab==3">-->
                        <!--                            <table class="ax-table" stripe=odd>-->

                        <!--                                <tbody>-->
                        <!--                                <tr>-->
                        <!--                                    <th>排名</th>-->
                        <!--                                    <th>姓名</th>-->
                        <!--                                    <th>手机号</th>-->
                        <!--                                    <th>积分值</th>-->
                        <!--                                </tr>-->
                        <!--                                <tr v-for="(item,index) in integrateRankingList" :key="index">-->
                        <!--                                    <td>-->
                        <!--                                        <span v-if="index+1==1">&nbsp;&nbsp;<img src="/img/one.png" alt=""></span>-->
                        <!--                                        <span v-else-if="index+1==2">&nbsp;&nbsp;<img src="/img/two.png" alt=""></span>-->
                        <!--                                        <span v-else-if="index+1==3">&nbsp;&nbsp;<img src="/img/three.png" alt=""></span>-->
                        <!--                                        <span v-else-if="index+1>3">&nbsp;&nbsp;&nbsp;{{index+1}}</span>-->
                        <!--                                    </td>-->
                        <!--                                    <td>{{item.name}}</td>-->
                        <!--                                    <td>{{hidePhoneMiddle(item.phone)}}</td>-->
                        <!--                                    <td>{{item.totalScore}} </td>-->
                        <!--                                </tr>-->
                        <!--                                </tbody>-->
                        <!--                            </table>-->
                        <!--                        </div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    修改资料-->
    <!--窗口-表单1-->
    <div class="ax-dialog popupmodify" data-overlay="true">
        <div class="ax-dialog-overlay" @click="closemodify" ></div>
        <div class="ax-dialog-wrapper" style="">
            <a href="###" class="ax-dialog-close" @click="closemodify" >
                <i class="ax-iconfont ax-icon-close"></i>
            </a>
            <div class="ax-dialog-header">修改资料</div>
            <div class="ax-dialog-body">
                <div class="ax-padding">
                    <div class="ax-dialog-content">
                        <form method="post">
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>姓名：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="username" name="username" placeholder="请输入姓名" type="text" v-model="form.name">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="validateBoolean.name">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请填写姓名
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>公司：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="company" name="company" placeholder="请输入公司名称" type="text" v-model="form.company">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="validateBoolean.company">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请输入公司名称
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>部门：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="department" name="department" placeholder="请输入部门名称" type="text" v-model="form.department">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="validateBoolean.department">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请输入部门名称
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>职位：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="position" name="position" placeholder="请输入职位名称" type="text" v-model="form.position">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="validateBoolean.position">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请输入职位名称
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>手机号码：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input style="background: #eaeaea" id="phone" readonly name="phone" placeholder="请输入手机号码" type="text"  v-model="userInfo.phone">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>邮箱地址：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="email" name="email" placeholder="请输入邮箱地址" type="text" v-model="form.email">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="validateBoolean.email">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请输入正确的邮箱地址
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <button type="button" class="submit fnt_18" @click="modifyData">提交</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="ax-dialog-footer"></div>
        </div>
    </div>
    <div class="ax-dialog popupaddress " data-overlay="true">
        <div class="ax-dialog-overlay" @click="closeaddress" ></div>
        <div class="ax-dialog-wrapper" style="">
            <a href="###" class="ax-dialog-close" @click="closeaddress" >
                <i class="ax-iconfont ax-icon-close"></i>
            </a>
            <div class="ax-dialog-header">添加地址</div>
            <div class="ax-dialog-body">
                <div class="ax-padding">
                    <div class="ax-dialog-content">
                        <form method="post">
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>姓名：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="consignee" name="consignee" placeholder="请输入姓名" type="text" v-model="addressForm.consignee">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="valiAddressBoolean.consignee">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请填写姓名
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>手机号码：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <input id="addressphone" name="phone" placeholder="请输入手机号码" type="text" v-model="addressForm.phone">
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="valiAddressBoolean.phone">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请输入正确手机号码
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>省/市/区：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input" id="bigOne"  >
                                            <div id="box">
                                                <span class="loadText text">请选择省/市/区</span>
                                                <span class="textProvince text"></span>
                                                <span class="textCity text"></span>
                                                <span class="textArea text"></span>
                                                <span class="iconfont icon-arrow-down arrow"></span>
                                            </div>
                                            <input id="address" name="address" placeholder="请选择" readonly="" type="text" v-model="addressForm.address">
                                            <div id="content">
                                                <div class="chose-tab">
                                                    <div id="province" class="chosePCA select">省份
                                                        <ul class="province-list list">
                                                        </ul>
                                                    </div>
                                                    <div id="city" class="chosePCA">城市
                                                        <ul class="city-list list">
                                                        </ul>
                                                    </div>
                                                    <div id="area" class="chosePCA">区县
                                                        <ul class="area-list list">
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="valiAddressBoolean.address">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请选择省/市/区
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ax-break-md"></div>
                            <div class="ax-form-group">
                                <div class="ax-flex-row">
                                    <div class="ax-form-label">
                                        <span>*</span>详细地址：</div>
                                    <div class="ax-form-con">
                                        <div class="ax-form-input">
                                            <textarea id="detailAddress" name="detailAddress" placeholder="请输入详细地址" type="text" v-model="addressForm.detailAddress"></textarea>
                                        </div>
                                        <div class="ax-valid ax-color-danger" v-show="valiAddressBoolean.detailAddress">
                                            <span class="ax-iconfont ax-icon-close-o-f"></span> 请输入您的详细地址
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="submit fnt_18" @click="confirm">提交</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="ax-dialog-footer"></div>
        </div>
    </div>
    <div class="ax-dialog confirm " data-overlay="true">
        <div class="ax-dialog-overlay" @click="closeconfirm" ></div>
        <div class="ax-dialog-wrapper" style="">
            <a href="javascript:;" class="ax-dialog-close" @click="closeconfirm" >
                <i class="ax-iconfont ax-icon-close"></i>
            </a>
            <div class="ax-dialog-header">兑换该商品需消耗 <span>{{Integral}}</span> 积分，是否确认兑换?</div>
            <div class="ax-dialog-body">
                <div class="ax-padding">
                    <div class="btns">
                        <a href="javascript:;" @click="closeconfirm" class="hover link-button">取消</a>
                        <a href="javascript:;" @click="submits" class="hover1 link-button">确定</a>
                    </div>
                </div>
            </div>
            <div class="ax-dialog-footer"></div>
        </div>
    </div>
</div>
<footer id="footer" class="container">
    <div class="bg"></div>
    <div class="rightBar " >
        <ul class="animate__fadeInRight animate__animated">
            <li>
                <a href="/poster" >
                    <i class="icon_sharing icon"  ></i>
                    <p>分享海报</p>
                </a>
            </li>
            <li>
                <a href="javascript:;" onclick="clickSubscribe()">
                    <i class="icon_subscribe icon" ></i>
                    <p>我的订阅</p>
                </a>
            </li>
            <li>
                <a href="javascript:;"  onclick="clickIntegral()">
                    <i class="icon_integral icon" ></i>
                    <p>互动有礼</p>
                </a>
            </li>
            <li>
                <a href="javascript:;" >
                    <i class="icon_xcx icon" ></i>
                    <p>小程序访问</p>
                </a>
                <div class="QrContainer">
                    <div class="QrBox">
                        <img src="https://img2023.gcsis.cn/2023/4/792c55535d6144fe874fc309b07d3ac9.jpg" alt="扫码进入小程序">
                    </div>
                </div>
            </li>
            <li>
                <a href="javascript:;" class="toTop">
                    <i class="back_top icon" ></i>
                    <p>返回顶部</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="ax-row organizer" >
        <div class="ax-col-6">
            <h1>指导单位</h1>
            <ul>
                <li>
                    <a href="" target="_blank">浙江省互联网信息办公室</a>
                </li>
                <li>
                    <a href="" target="_blank">浙江省经济和信息化厅</a>
                </li>
                <li>
                    <a href="" target="_blank">浙江省公安厅</a>
                </li>
                <li>
                    <a href="" target="_blank">浙江省发展和改革委员会</a>
                </li>
                <li>
                    <a href="" target="_blank">浙江省通信管理局</a>
                </li>
            </ul>
        </div>
        <div class="ax-col-6">
            <h1>主办单位</h1>
            <li>
                <a href="" target="_blank">杭州市人民政府</a>
            </li>
        </div>
        <div class="ax-col-6">
            <h1>联合主办单位</h1>
            <ul>
                <li>
                    <a href="" target="_blank">中国信息通信研究院</a>
                </li>
                <li>
                    <a href="" target="_blank">中国网络空间研究院</a>
                </li>
                <li>
                    <a href="" target="_blank">国家工业信息安全发展研究中心</a>
                </li>
                <li>
                    <a href="" target="_blank">中国电子技术标准化研究院</a>
                </li>
                <li>
                    <a href="" target="_blank">工业和信息化部教育与考试中心</a>
                </li>
                <li>
                    <a href="" target="_blank">杭州市滨江区人民政府</a>
                </li>
            </ul>
        </div>
        <div class="ax-col-6">
            <h1>承办单位</h1>
            <ul>
                <li>
                    <a href="" target="_blank">杭州市互联网信息办公室</a>
                </li>
                <li>
                    <a href="" target="_blank">杭州市经济和信息化局</a>
                </li>
                <li>
                    <a href="" target="_blank">杭州市公安局</a>
                </li>
                <li>
                    <a href="" target="_blank">杭州市发展和改革委员会</a>
                </li>
                <li>
                    <a href="" target="_blank">浙江省网络空间安全协会</a>
                </li>
                <li>
                    <a href="" target="_blank">安恒信息</a>
                </li>
            </ul>
        </div>
        <div class="ax-col-6">
            <h1>战略合作媒体</h1>
            <ul>
                <li>
                    <a href="" target="_blank">新华网</a>
                </li>
            </ul>
        </div>
        <div class="ax-col-6">
            <h1>特别支持媒体</h1>
            <ul>
                <li>
                    <a href="" target="_blank">光明网</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="ax-row footer_nav">
        <div class="footer_left">
            <a href="/" class="footer_logo">
                <img src="/img/logo_bottom.png" alt="">
            </a>
            <div class="privacyProtocol">
                <a href="/privacy">隐私协议</a>/<a href="/service">服务条款</a>
            </div>
        </div>
        <div class="footer_center">
            <ul>
                <li>
                    <a href="/" data-id="0" >首页</a>
                </li>
                <li>
                    <a href="/agenda" data-id="1" >大会议程</a>
                </li>
                <li>
                    <a href="/about" data-id="2" >关于大会</a>
                </li>
                <li>
                    <a href="/expert" data-id="3" >大咖云集</a>
                </li>
                <li>
                    <a href="/wonderful_activity" data-id="4" >精彩活动</a>
                </li>
                <li>
                    <a href="/exhibitor" data-id="5" >展商风采</a>
                </li>
                <li>
                    <a href="/results" data-id="6" >成果发布</a>
                </li>
                <li>
                    <a href="/news" data-id="7" >媒体中心</a>
                </li>
                <li>
                    <a href="/attendance_guide" data-id="8" >参会指南</a>
                </li>
                <li>
                    <a href="/agendaLive" data-id="9" >大会直播</a>
                </li>
            </ul>
            <div class="copyright">
                <p>
                    <span> © 杭州安恒信息技术股份有限公司</span>
                    <a href="https://beian.miit.gov.cn/" target="_blank" >浙ICP备09102757号-28</a>
                    <a href="https://www.beian.gov.cn/portal/registerSystemInfo?recordcode=35018102000550" target="_blank"  >浙公网安备 33010802009170号</a>
                </p>
            </div>

        </div>
        <div class="footer_right">
            <img src="https://img2023.gcsis.cn/2023/4/792c55535d6144fe874fc309b07d3ac9.jpg" alt="扫码进入小程序">
            <p>扫码进入小程序</p>
        </div>
    </div>
</footer>


</body>
</html>

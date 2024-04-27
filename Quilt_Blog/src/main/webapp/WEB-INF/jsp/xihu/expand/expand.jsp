<%@ page contentType="text/html;charset=UTF-8" %>
<!-- 7.8.10 -->
<%@ page import="java.sql.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="static java.sql.DriverManager.getConnection" %>
<%@ page import="java.text.SimpleDateFormat" %>


<script>
    //  ================ 浏览器图标 ====================
    let favicon2 = document.createElement('link');
    favicon2.rel = 'xihulunjian icon';
    favicon2.href = '<%=request.getContextPath()%>/static/achievement/img/smallLogo.png';
    document.head.appendChild(favicon2);
</script>
<%
    session = request.getSession();
    String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 图标组件库 -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/expand/expand.css">
    <title>我在西湖论坛很想你</title>
</head>
<style>
    .comment-item {
        display: flex; /* 使用 Flexbox 布局 */
        align-items: center; /* 垂直居中 */
    }
    .comment-item input[type="text"] {
        flex: 1; /* 输入框占据剩余空间 */
        width: 200px; /* 调整输入框的宽度 */
        height: 60px;
        margin-right: 5px; /* 设置输入框右边距 */
    }
    .comment-item input[type="submit"] {
        margin-left: 5px; /* 设置评论按钮左边距 */
    }
</style>
<body>
    <div class="preloader" data-preloader>
        <div class="preloader-circle"></div>
    </div>

    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg">
                </span>
                <div class="text logo-text">
                    <%
                        session = request.getSession();
                        username = (String) session.getAttribute("username");
                    %>
                    <span class="name"><%= username %></span>
                    <span class="profession">游客</span>
                </div>
            </div>

            <i class="bx bx-chevron-right toggle"></i>
        </header>
        <div class="menu-bar">
            <div class="menu">
                <li class="search-box">
                    <i class='bx bxs-analyse icon'></i>
                    <span class="text">数字安全 共襄盛举</span>
                </li>

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="#" class="active blue">
                            <i class="bx bx-home-alt icon"></i>
                            <span class="text nav-text">我在西湖论剑等你</span>
                            <!-- 拍照打卡，分享生活 -->
                        </a>
                    </li>
                     <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-bar-chart-alt-2 icon'></i>
                            <span class="text nav-text">活动公告</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-message-square-edit icon'></i>
                            <span class="text nav-text">发言为诗</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-pie-chart-alt icon'></i>
                            <span class="text nav-text">每日签到</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-heart icon'></i>
                            <span class="text nav-text">积分抽奖</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bxs-florist icon'></i>
                            <span class="text nav-text">海报制作</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-shopping-bag icon'></i>
                         
                            <span class="text nav-text">周边售卖</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-shopping-bag icon'></i>
                            <span class="text nav-text">信息管理</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="bottom-content">
                <li>
                    <a href="index">
                        <i class="bx bx-log-out icon"></i>
                        <span class="text nav-text">返回首页</span>
                    </a>
                </li>
            </div>

        </div>
    </nav>

    <section class="home">
        <div class="expandBox">
            <!-- 背景 -->
            <div class="s-videoBk">我在西湖论剑等你</div>
            <!-- 说的话 -->
            <div class="shuoshuoBox">
                <div class="paixvBox">
                    <p>按&emsp;<p class="paixvText orange">时间 </p>|<p class="paixvText">热度</p>&emsp;排序</p>
                </div>

                <%
                    // 数据库连接信息
                    String url = "jdbc:mysql://49.232.137.252:3306/blog";
                    String dbUsername = "root";
                    String dbPassword = "666888aa";

                    // 获取提交的用户名和密码
                    try {
                        // 加载MySQL的JDBC驱动程序
                        Class.forName("com.mysql.jdbc.Driver");
                        // 建立数据库连接
                        Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
                        // 准备查询SQL语句
                        String sql = "SELECT * FROM comments_interactions  ";
                        PreparedStatement selectActivityStmt = conn.prepareStatement(sql);
                        ResultSet activityResultSet = selectActivityStmt.executeQuery();
                %>
                <% while (activityResultSet.next()) { %>
                <div class="shuoshuo">

                    <div class="shuoshuoTop">
                        <div class="s-headImg">
                            <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
                        </div>
                        <div class="s-intro">
                            <div class="s-name"><%= activityResultSet.getString("user_id") %></div>
                            <div class="s-other"><p><%= activityResultSet.getString("comment_time") %></p> <p>神秘的网安打工人一枚</p></div>
                        </div>
                    </div>
                    <div class="shuoshuoCenter">
                        <div class="sc-Content shrink">
                            <pre><%= activityResultSet.getString("comment_content") %>
                            </pre>
                        </div>
                        <a class="more-link">展开</a>

                    </div>
                    <div class="s-zan">
                        <div class="s-icon showpinglun">
                            <i class='bx bx-comment-dots icon'></i>
                            <span class="text"><%= activityResultSet.getString("replies_count") %></span>
                        </div>
                        <div class="s-icon zanActive">
                            <i class='bx bxs-hot'></i>
                            <span class="text"><%= activityResultSet.getString("likes_count") %></span>
                        </div>
                        <div class="s-comment fade">
                            <div class="giveAcomment">
                                <form action="" class="s-form">
                                    <input type="text" class="input-comment" placeholder="发表评论..." name="comment">
                                    <button class="s-fabiao shouqi"  type="button">收起</button>
                                    <button class="s-fabiao" type="submit">发表</button>
                                    <button class="s-fabiao fade cancleBack" type="button" >取消回复</button>
                                </form>
                                <p class="atWho"></p>
                            </div>
                            <div class="s-com" data-input="0">
                                <div class="scomment-item">
                                    <div class="scon-top">
                                        <div class="scon-head">
                                            <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
                                        </div>
                                        <div class="scon-textBox">
                                            <p class="scon-name o">姓名</p>:<p class="scon-text">要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话要说的话</p>
                                        </div>
                                    </div>
                                    <div class="scon-bottom">
                                        <p class="scon-time">24-01-01 11:30</p>
                                        <p class="scon-back poiner">回复</p>
                                    </div>
                                </div>
                                <div class="scomment-item">
                                    <div class="scon-top">
                                        <div class="scon-head">
                                            <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
                                        </div>
                                        <div class="scon-textBox">
                                            <p class="scon-name o">第二个人</p>:<p class="scon-text">听不见</p>
                                        </div>
                                    </div>

                                    <div class="scon-bottom">
                                        <p class="scon-time">24-01-01 11:30</p>
                                        <p class="scon-back poiner">回复</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <%
                        } {
                    }
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    } catch (ClassNotFoundException e) {
                        throw new RuntimeException(e);
                    }
                %>





            </div>
                <form class="comment-item"action="submit" method="POST">
                    <input type="hidden" name="username" value="<%= username %>">
                    <input type="text" name="comment">
                    <input type="submit" value="评论">
                </form>
        </div>
        <div class="expandBox fade">
            <div class="activityRule">
                        <%
                            // 加载MySQL的JDBC驱动程序
                            Class.forName("com.mysql.jdbc.Driver");
                            // 建立数据库连接
                            Connection s = DriverManager.getConnection(url, dbUsername, dbPassword);
                            try {
                                // 准备 SQL 查询语句
                                String sql = "SELECT * FROM new";
                                // 执行查询
                                Statement stmt = s.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                // 遍历结果集并输出数据
                                while (rs.next()) {
                                 %>

                                    <div class="activityRuleBox" style="">
                                            <h1>活动公告</h1>
                                    <p>【活动公告】<%= rs.getString("title") %></p>
                                    <p>时间： <%= rs.getString("start_date") %> 至 <%= rs.getString("end_date") %></p>
                                    <p>地点： <%= rs.getString("location") %></p>
                                    <p>内容： <%= rs.getString("content") %></p>

                                    </div>

                                 <%
                             }
                                // 关闭资源
                                rs.close();
                                stmt.close();
                                s.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        %>
            </div>
        </div>

        <div class="expandBox fade">
            <div class="poetryBox">
                <div class="poetrySortBox">
                    <p>按&emsp;<p class="poetrySortText orange poiner">时间 </p>|<p class="poetrySortText poiner">热度</p>&emsp;排序</p>
                </div>
                <section class="columns">

                    <div class="column">
                        <h2 class="poetryTitle"> 黄鹤楼送孟浩然之广陵</h2>
<p>故人西辞黄鹤楼，
烟花三月下扬州。
孤帆远影碧空尽，
唯见长江天际流。</p>

<div class="poetryZan poiner" style="color: coral;">
    <i class='bx bxs-hot'></i>
    <span class="text">99</span>
</div>

<div class="poetryInfo">
    <div class="poetryHeadImg">
        <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
    </div>
    <div class="poetryOther">
        <p class="poetryAuthor">作者</p>
        <p class="poetryTime">时间</p>
    </div>

</div>

                    </div>
                    <div class="column">
                        <h2 class="poetryTitle"> 黄鹤楼送孟浩然之广陵</h2>
<p>君不见，黄河之水天上来，奔流到海不复回。
君不见，高堂明镜悲白发，朝如青丝暮成雪。
人生得意须尽欢，莫使金樽空对月。
天生我材必有用，千金散尽还复来。
烹羊宰牛且为乐，会须一饮三百杯。
岑夫子，丹丘生，将进酒，杯莫停。
与君歌一曲，请君为我倾耳听。
钟鼓馔玉不足贵，但愿长醉不愿醒。
古来圣贤皆寂寞，惟有饮者留其名。
陈王昔时宴平乐，斗酒十千恣欢谑。
主人何为言少钱，径须沽取对君酌。
五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。</p>

<div class="poetryZan poiner" style="color: coral;">
    <i class='bx bxs-hot'></i>
    <span class="text">99</span>
</div>

<div class="poetryInfo">
    <div class="poetryHeadImg">
        <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
    </div>
    <div class="poetryOther">
        <p class="poetryAuthor">作者</p>
        <p class="poetryTime">时间</p>
    </div>

</div>

                    </div>
                    <div class="column">
                        <h2 class="poetryTitle">2nd Content Area</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi ratione architecto necessitatibus cum praesentium dolor totam voluptatibus recusandae? Illo quod nemo ratione itaque dolores laudantium error vero laborum blanditiis nostrum.</p>
                        <div class="poetryZan poiner" style="color: coral;">
                            <i class='bx bxs-hot'></i>
                            <span class="text">99</span>
                        </div>
                        
                        <div class="poetryInfo">
                            <div class="poetryHeadImg">
                                <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
                            </div>
                            <div class="poetryOther">
                                <p class="poetryAuthor">作者</p>
                                <p class="poetryTime">时间</p>
                            </div>
                        
                        </div>
                        
                    </div>
                  
                  <div class="column">
                        <h2 class="poetryTitle">3rd Content Area</h2>
                        <p>Illo quod nemo ratione itaque dolores laudantium error vero laborum blanditiis nostrum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi ratione architecto cum praesentium voluptatibus recusandae?</p>
                        <div class="poetryZan poiner" style="color: coral;">
                            <i class='bx bxs-hot'></i>
                            <span class="text">99</span>
                        </div>
                        
                        <div class="poetryInfo">
                            <div class="poetryHeadImg">
                                <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
                            </div>
                            <div class="poetryOther">
                                <p class="poetryAuthor">作者</p>
                                <p class="poetryTime">时间</p>
                            </div>
                        
                        </div>
                        
                    </div>
                    <div class="column">
                        <h2 class="poetryTitle">3rd Content Area</h2>
                        <p>Illo quod nemo ratione itaque dolores laudantium error vero laborum blanditiis nostrum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi ratione architecto cum praesentium voluptatibus recusandae?</p>
                        <div class="poetryZan poiner" style="color: coral;">
                            <i class='bx bxs-hot'></i>
                            <span class="text">99</span>
                        </div>
                        
                        <div class="poetryInfo">
                            <div class="poetryHeadImg">
                                <img src="<%=request.getContextPath()%>/static/expand/expand/blackCat.jpg" alt="">
                            </div>
                            <div class="poetryOther">
                                <p class="poetryAuthor">作者</p>
                                <p class="poetryTime">时间</p>
                            </div>
                        
                        </div>
                        
                    </div>
                </section>
            </div>

            <div class="laishou poiner">
                <p class="laishouText" >诗兴大发,来一首？</p>
                <img src="<%=request.getContextPath()%>/static/expand/expand/shiren.png" alt="">
            </div>
            <div class="zuoshiMask fade" >
                <div class="zuoshiBox">
                    <form action="" class="zuoshiFrom">
                        <p class="zuoshiT">腹有诗书气自真,挥毫泼墨写精神</p>
                        <textarea name="shi" id="shi" cols="30" rows="10"></textarea>
                        <br>
                        <div class="zuoshiBtns">
                            <button type="submit">提交</button>
                            <button type="button" class="exitzuoshi">退出</button>
                        </div>
                      
                    </form>
                </div>
            </div>
            <script>
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

            </script>
        </div>
        <div class="expandBox fade">
            <div class="calendarBox">
                <div class="calendar-container">
                    <header>
                        <div class="day">26</div>
                        <div class="month">三月</div>
                    </header>
                    <table class="calendar">
                        <thead>
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
                        <tr>
                            <td class="prev-month">29</td>
                            <td class="prev-month">30</td>
                            <td class="prev-month">31</td>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                        </tr>

                        <tr>
                            <td>5</td>
                            <td>6</td>
                            <td>7</td>
                            <td>8</td>
                            <td>9</td>
                            <td>10</td>
                            <td>11</td>
                        </tr>

                        <tr>
                            <td>12</td>
                            <td>13</td>
                            <td>14</td>
                            <td>15</td>
                            <td>16</td>
                            <td>17</td>
                            <td>18</td>
                        </tr>
                        <tr>
                            <td>19</td>
                            <td>20</td>
                            <td>21</td>
                            <td>22</td>
                            <td>23</td>
                            <td>24</td>
                            <td>25</td>
                        </tr>
                        <tr>
                            <td>26</td>
                            <td>27</td>
                            <td>28</td>
                            <td>29</td>
                            <td>30</td>
                            <td>31</td>
                            <td class="next-month">1</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="ring-left"></div>
                    <div class="ring-right"></div>
                </div>
                <div class="qiandao">
                    <p>本活动季度已签到<span>2</span>天</p>
                    <p>已连续签到<span>2</span>天</p>
                    <div class="qian"><button type="button" class="btn-15" id="signButton">签到</button></div>
                </div>
            </div>
        </div>

        <script>
            // =================  每日签到  =================
            let today = new Date(); //获取当前时间
            var year = today.getFullYear();
            let month = today.getMonth() + 1; //获取当前月
            let day = today.getDate(); //获取当前日

            document.querySelector('.day').innerHTML = day;
            document.querySelector('.month').innerHTML = month + '月';
            // 签到
            let topdayQianDao = false;
            let btn15 = document.getElementById('signButton');
            btn15.addEventListener('click', function () {
                if (!topdayQianDao) {
                    btn15.innerHTML = '已签到';
                    btn15.disabled = true;
                    topdayQianDao = true;
                }
            });
        </script>



        <div class="expandBox fade redBk">
                <div class="choujiang">
                    <div class="luckdraw">
                        <div class="luckpanel">
                          <canvas id="canvas"></canvas>
                          <div class="prize">
                            <!-- <div class="prize-item">
                              <div class="prize-item__name">奖品</div>
                              <div class="prize-item__img">
                                <img src="https://img14.360buyimg.com/imagetools/jfs/t1/104165/34/15186/96522/5e6f1435E46bc0cb0/d4e878a15bfd9362.png" alt="">
                              </div>
                            </div> -->
                          </div>
                        </div>
                    
                        <div class="pointer"></div>
                      </div>

                    <div class="jiangList">
                        <div class="jangMark">
                            您的积分是<span>55</span>分
                            ,还可以抽奖<span class="cishu">5</span>次
                        </div>
                        <div class="howToGetMask" id="howToGetMask">
                            <i class='bx bxs-quote-alt-left'>如何获取积分？</i><i class='bx bxs-quote-alt-right'></i>
                        </div>
                        <div class="jiangListTitle">
                            <img src="<%=request.getContextPath()%>/static/expand/expand/jiang.png" alt="">
                            您的抽奖结果
                        </div>
                    </div>
                </div>
                <div class="jiangRule fade">
<pre>“我在长沙等你”积分抽奖活动积分获得规则
亲爱的参与者们，为了让大家在活动中更加积极互动，我们设定了以下积分获得规则：
1. 发帖打卡积分:
   - 每成功发布一个帖子,可获得10积分。
   - 每日最多获得10积分,超出部分不再计分。
2. 评论积分:
   - 每成功发表一条评论,可获得5积分。
   - 每日通过评论最多获得10积分,超出部分不再计分。
3. 点赞积分:
   - 每点赞一次,可获得2积分。
   - 每日通过点赞最多获得10积分,超出部分不再计分。
4. 被点赞积分:
   - 每被点赞一次,可获得3积分。
   - 每日被点赞数最多的前五十人可以获得15积分。
5. 写诗积分:
   - 每提交一首原创诗,可获得20积分。
   - 每日最多获得40积分,超出部分不再计分。
   - 被点赞一次可以获得1积分,无上限
6. 每日签到积分:
   - 每日签到,可获得2积分。
   - 连续签到额外奖励:连续签到第2天获得4积分,第3天获得6积分,以此类推,连续签到第7天及以后每天获得14积分。
7. 积分上限:
   - 每个参与者每日通过上述活动总共最多可获得50积分。
   - 积分的上限是80积分
   - 若发现故意大量点赞、评论以获取积分的行为，一经发现，将扣除违规积分，并可能取消参与资格。
9. 奖品领取:
   - 抽到的奖品默认以零元进入“周边售卖模块”,参与者们去填写具体信息,等待邮寄。
8. 活动期限：
   - 积分获取期限从活动开始至活动结束，具体时间请关注活动公告。
我们鼓励大家积极参与，公平互动，共同营造一个和谐的活动氛围！</pre>


                </div>
            <script>
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
            </script>
        </div>
        <div class="expandBox poster fade">
            <div class="leftSettings">
                    选择背景图
                <div class="posterBgBox">
                    <img src="<%=request.getContextPath()%>/static/expand/expand/poster/poster2.png" alt="" class="posterBg checked">
                    <img src="<%=request.getContextPath()%>/static/expand/expand/poster/poster1.png" alt="" class="posterBg">
                    <img src="<%=request.getContextPath()%>/static/expand/expand/poster/poster.jpg" alt="" class="posterBg">
                    <img src="<%=request.getContextPath()%>/static/expand/expand/poster/poster3.png" alt="" class="posterBg">
                </div>
                <div class="pt">
                    <h1>设置标题</h1>
                        <span style="font-size: 16px;">标题颜色</span>
                        <div id="color-picker"></div>
                     <br>
                </div>
                <div class="pc">
                    <h1>内容设置</h1>
                    <span class="posterSetting">

                     </span>
                     <br>
                    
                     <span style="font-size: 16px;">内容颜色</span>
                     <div id="color-picker1"></div>
                     </span>
                </div>
                
            </div>
            <div class="rightCanvas">
                <canvas id="posterCanvas"></canvas>
                <a id="baocun" href="#" class="poiner">点我保存图片</a>
            </div>
            <script>

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
            </script>
        </div>
        <div class="expandBox shopBox fade">
            <div class="shopping">
                <div class="cart-container">
                    <h2>购物车</h2>
                    <form id="purchaseForm"  method="post" >
                        <table>
                            <thead>
                            <tr>
                                <th><strong>商品</strong></th>
                                <th><strong>价格</strong></th>
                                <th><strong>数量</strong></th>
                            </tr>
                            </thead>
                            <tbody id="carttable">
                            <!-- Cart items will be added here -->
                            <%
                                 url = "jdbc:mysql://49.232.137.252:3306/blog";
                                 dbUsername = "root";
                                 dbPassword = "666888aa";

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Establish database connection
                                    Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
                                    String sql = "SELECT * FROM Product";
                                    Statement stmt = conn.createStatement();
                                    ResultSet rs = stmt.executeQuery(sql);

                                    // Iterate through the result set and display product information
                                    while (rs.next()) {
                                        String id = rs.getString("ProductID");
                                        String name = rs.getString("Name");
                                        double price = rs.getDouble("Price");
                            %>
                            <tr>
                                <td><%= name %></td>
                                <td>￥<%= price %></td>
                                <td>
                                    <input type="number" class="quantity" name="quantity_<%= id %>" value="0" min="0">
                                </td>
                                <input type="hidden" name="product_id_<%= id %>" value="<%= price %>">
                            </tr>
                            <%
                                    }
                                    rs.close();
                                    stmt.close();
                                    conn.close();
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                            %>
                            </tbody>
                        </table>
                        <hr>
                        <table id="carttotals">
                            <tr>
                                <td><strong>商品数量</strong></td>
                                <td><strong>总价格</strong></td>
                            </tr>
                            <tr>
                                <td>x <span id="itemsquantity">0</span></td>
                                <td>￥<span id="total">0</span></td>
                            </tr>
                        </table>
                        <div class="cart-buttons">
                            <button type="button" id="checkout">确认订单</button>
                        </div>
                    </form>
                </div>
                <style>
                    .modal {
                        display: none;
                        position: fixed;
                        z-index: 1;
                        left: 0;
                        top: 0;
                        width: 100%;
                        height: 100%;
                        overflow: auto;
                        background-color: rgb(0, 0, 0);
                        background-color: rgba(0, 0, 0, 0.4);
                    }

                    .modal-content {
                        background-color: #fefefe;
                        margin: 15% auto; /* 使模态框垂直居中 */
                        padding: 20px;
                        border: 1px solid #888;
                        width: 80%; /* 设置模态框宽度 */
                    }

                    .close {
                        color: #aaaaaa;
                        float: right;
                        font-size: 28px;
                        font-weight: bold;
                    }

                    .close:hover,
                    .close:focus {
                        color: #000;
                        text-decoration: none;
                        cursor: pointer;
                    }
                </style>
                <!-- Modal -->
                <div  id="myModal" class="modal"style="display: none;">
                    <div class="modal-content">
                        <span class="close">&times;</span>
                        <h2>填写订单信息</h2>
                        <form action="expand" id="orderForm" method="POST">
                            <label for="address">地址:</label>
                            <input type="text" id="address" name="address" required><br><br>
                            <label for="phone">电话:</label>
                            <input type="text" id="phone" name="phone" required><br><br>
                            <h3>已选商品</h3>
                            <table id="selectedItems">
                                <!-- Selected items will be added here -->
                            </table>
                            <input type="submit" id="confirmOrder"></input>
                        </form>
                    </div>
                </div>
                <%
                    if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("address") != null && request.getParameter("phone") != null) {
                        // 获取订单信息
                        String address = request.getParameter("address");
                        String phone = request.getParameter("phone");
                        System.out.println("Address: " + address);
                        System.out.println("Phone: " + phone);

                        // 获取用户选择的商品和数量信息
                        String[] productIds = request.getParameterValues("product_id");
                        String[] quantities = request.getParameterValues("quantity");

                        // 设置数据库连接信息
                        url = "jdbc:mysql://49.232.137.252:3306/blog";
                        dbUsername = "root";
                        dbPassword = "666888aa";

                        // 获取用户信息
                        session = request.getSession();
                        username = (String) session.getAttribute("username");

                        try {
                            // 加载数据库驱动程序
                            Class.forName("com.mysql.jdbc.Driver");
                            // 建立数据库连接
                            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
                            // 设置自动提交为 false，用于事务处理
                            conn.setAutoCommit(false);
                            // 创建 SQL 语句
                            String sql = "INSERT INTO purchase (UserID, address, phone, ProductID, quantity,PurchaseDate,TotalPrice) VALUES (?, ?, ?, ?, ?,?,?)";
                            // 创建 PreparedStatement 对象
                            PreparedStatement pstmt = conn.prepareStatement(sql);
                            // 设置参数值
                            for (int i = 0; i < productIds.length; i++) {
                                pstmt.setString(1, username);
                                pstmt.setString(2, address);
                                pstmt.setString(3, phone);
                                pstmt.setString(4, productIds[i]);
                                pstmt.setString(5, quantities[i]);
                                pstmt.setTimestamp(6, new java.sql.Timestamp(System.currentTimeMillis()));
                                            int id= Integer.parseInt(productIds[i]);
                                                    // 创建 SQL 查询语句
                                            String priceQuery = "SELECT Price FROM Product WHERE ProductID = ?";
                                                   // 创建 PreparedStatement 对象
                                            PreparedStatement priceStmt = conn.prepareStatement(priceQuery);
                                            priceStmt.setInt(1, id);
                                            ResultSet priceResult = priceStmt.executeQuery();
                                            double price = 0.0; // 设置默认价格为0
                                            if (priceResult.next()) {
                                                price = priceResult.getDouble("Price");
                                            }


                                            priceResult.close();
                                            priceStmt.close();

                                            double number= Double.parseDouble(quantities[i]);
                                            double totalprice=price*number;
                                System.out.println(totalprice);
                                pstmt.setDouble(7, totalprice);
                                // 执行 SQL 插入操作
                                pstmt.executeUpdate();
                            }
                            // 提交事务
                            conn.commit();
                            // 关闭 PreparedStatement 和 Connection
                            pstmt.close();
                            conn.close();
                        } catch (SQLException e) {
                            // 发生 SQL 异常时抛出运行时异常
                            throw new RuntimeException(e);
                        } catch (ClassNotFoundException e) {
                            // 找不到数据库驱动程序时抛出运行时异常
                            throw new RuntimeException(e);
                        }
                    }
                %>



                <script>
                    // Update total quantity and price when quantity changes
                    var quantities = document.getElementsByClassName("quantity");
                    for (var i = 0; i < quantities.length; i++) {
                        quantities[i].addEventListener("change", function () {
                            updateTotal();
                        });
                    }

                    function updateTotal() {
                        var totalQuantity = 0;
                        var totalPrice = 0;

                        for (var i = 0; i < quantities.length; i++) {
                            var quantity = parseInt(quantities[i].value);
                            totalQuantity += quantity;
                            totalPrice += quantity * parseFloat(quantities[i].parentNode.previousElementSibling.innerHTML.substring(1));
                        }

                        document.getElementById("itemsquantity").innerHTML = totalQuantity;
                        document.getElementById("total").innerHTML = totalPrice.toFixed(2);
                    }

                    // Call updateTotal initially
                    updateTotal();








                    document.getElementById("checkout").addEventListener("click", function() {
                        var totalQuantity = parseInt(document.getElementById("itemsquantity").innerHTML);
                        if (totalQuantity > 0) {
                            var modal = document.getElementById("myModal");
                            var span = document.getElementsByClassName("close")[0];
                            modal.style.display = "block";

                            // Display selected items in modal
                            var selectedItemsTable = document.getElementById("selectedItems");
                            selectedItemsTable.innerHTML = "";
                            var quantities = document.getElementsByClassName("quantity");
                            for (var i = 0; i < quantities.length; i++) {
                                var quantity = parseInt(quantities[i].value);
                                if (quantity > 0) {
                                    var productId = quantities[i].name.split("_")[1]; // Extract product ID from input name
                                    var productName = quantities[i].parentNode.previousElementSibling.previousElementSibling.innerHTML;
                                    var productPrice = parseFloat(quantities[i].parentNode.previousElementSibling.innerHTML.substring(1));
                                    var row = "<tr><td>" + productName + "</td><td>" + quantity + "</td><td>￥" + (quantity * productPrice).toFixed(2) + "</td></tr>";
                                    selectedItemsTable.innerHTML += row;

                                    // Add hidden input fields to pass product ID and quantity to the form
                                    var hiddenProductIdInput = "<input type='hidden' name='product_id' value='" + productId + "'>";
                                    var hiddenQuantityInput = "<input type='hidden' name='quantity' value='" + quantity + "'>";
                                    document.getElementById("orderForm").innerHTML += hiddenProductIdInput + hiddenQuantityInput;
                                }
                            }

                            // Close the modal when close button is clicked
                            span.onclick = function() {
                                modal.style.display = "none";
                            }

                            // Close the modal when user clicks anywhere outside of it
                            window.onclick = function(event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else {
                            alert("请先选择商品再确认订单！");
                        }
                    });

                </script>




                <div class="cart-container">
                    <h2>商品状态</h2>
                    <table>
                        <thead>
                        <tr>
                            <th><strong>商品</strong></th>
                            <th><strong>价格</strong></th>
                            <th><strong>选购数量</strong></th>
                            <th><strong>下单时间</strong></th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                             url = "jdbc:mysql://49.232.137.252:3306/blog";
                             dbUsername = "root";
                             dbPassword = "666888aa";

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
                                String sql = "SELECT productid, TotalPrice, Quantity, PurchaseDate FROM purchase WHERE UserID = ? ORDER BY PurchaseDate DESC";
                                PreparedStatement pstmt = conn.prepareStatement(sql);
                                pstmt.setString(1, username); // assuming `username` is the user's ID
                                ResultSet rs = pstmt.executeQuery();

                                while (rs.next()) {
                                    String id = rs.getString("productid");
                                                int iid= Integer.parseInt(id);
                                                // 创建 SQL 查询语句
                                                String Query = "SELECT name FROM Product WHERE ProductID = ?";
                                                // 创建 PreparedStatement 对象
                                                PreparedStatement Stmt = conn.prepareStatement(Query);
                                                Stmt.setInt(1, iid);
                                                ResultSet priceResult = Stmt.executeQuery();
                                    String name =null;
                                                if (priceResult.next()) {
                                                    name = priceResult.getString("name");
                                                }


                                                priceResult.close();
                                                Stmt.close();

                                    double price = rs.getDouble("TotalPrice");
                                    int status = rs.getInt("Quantity");
                                    // 获取购买日期并将其格式化为年月日字符串
                                    Timestamp purchaseDate = rs.getTimestamp("PurchaseDate");
                                    String purchaseDateStr = null;
                                    if (purchaseDate != null) {
                                        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                                        purchaseDateStr = dateFormat.format(purchaseDate);
                                    } else {
                                        // 如果购买日期为null，您可以定义一个默认值，或者根据需要处理
                                        purchaseDateStr = "N/A";
                                    }



                        %>
                        <tr>
                            <td><%= name %></td>
                            <td>￥<%= price %></td>
                            <td><%= status %></td>
                            <td><%= purchaseDateStr %></td>
                        </tr>
                        <%
                                }
                                rs.close();
                                pstmt.close();
                                conn.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            } catch (ClassNotFoundException e) {
                                e.printStackTrace();
                            }
                        %>
                        </tbody>
                    </table>
                </div>

            </div>
            <div class="payMoney hidden">
                <!-- Payment form will be shown here -->
            </div>
        </div>

        <div class="expandBox poster fade">
            <%
                session = request.getSession();
                username = (String) session.getAttribute("username");
                int score = (int) session.getAttribute("score");
            %>
            <%
                if ("POST".equalsIgnoreCase(request.getMethod())  &&  request.getParameter("password") != null) {
                    // 获取提交的用户名和密码
                    String password = request.getParameter("password");
                    String email = request.getParameter("email");
                    String telephone = request.getParameter("telephone");
                    String firm = request.getParameter("firm");
                    // 假设你已经建立了数据库连接，并且数据库表名为 user_info
                    try {
                        // 加载MySQL的JDBC驱动程序
                        Class.forName("com.mysql.jdbc.Driver");
                        // 建立数据库连接
                        Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
                        // 准备更新SQL语句
                        String sql = "UPDATE guest SET password=?, email=?, telephone=? ,firm=? WHERE username=?";
                        // 创建PreparedStatement对象
                        PreparedStatement stmt = conn.prepareStatement(sql);

                        // 设置参数
                        stmt.setString(1, password);
                        stmt.setString(2, email);
                        stmt.setString(3, telephone);
                        stmt.setString(4, firm);
                        stmt.setString(5, username);

                        // 执行更新操作
                        int rowsAffected = stmt.executeUpdate();
                        // 关闭资源
                        stmt.close();
                        conn.close();
                        // 如果更新成功，弹出成功消息并返回原页面
                        if (rowsAffected > 0) {
            %>
            <script>
                alert("信息修改成功！");
                window.location.href = "<%= request.getContextPath() %>/user";
            </script>
            <%
                        }
                    } catch (ClassNotFoundException | SQLException e) {
                        e.printStackTrace(); // 处理异常情况
                    }
                }
            %>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background-image: url(https://obs-xhlj.obs.cn-east-3.myhuaweicloud.com/2023/3/7a0f1a8a401a4672a02783624f245507.jpg);
                        background-size: cover;
                        background-position: center;
                    }

                    .overlay {
                        position: absolute;
                        top: 200px; /* 页面距顶部300px */
                        bottom: 20px; /* 页面距底部300px */
                        left: 0;
                        right: 0;
                        background-color: rgba(255 ,250 ,250, 1); /* 灰色覆盖层 */
                        z-index: -1; /* 将覆盖层置于背景之后 */
                    }

                    .container {
                        position: relative; /* 使内容与覆盖层处于同一级别 */
                        display: flex;
                        justify-content: flex-start;
                        align-items: flex-start;
                        padding: 20px;
                    }

                    .user-info {
                        width: 300px;
                        height: 500px;
                        background-color: #ffffff;
                        padding: 20px;
                        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                        border-radius: 10px;
                        margin-left: 100px;
                    }
                    .activity-container {
                        flex-grow: 1; /* 让活动容器占据剩余空间 */
                        margin-left: 20px; /* 添加左边距，与用户信息区分开 */
                    }
                    .activity-info {
                        width: calc(100% - 40px); /* 让活动信息占据整个可用宽度，并留出左右各20px的空白 */
                        background-color: #ffffff;
                        padding: 20px;
                        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                        border-radius: 10px;
                        margin-top: 20px; /* 每个活动信息之间留出20px的间距 */
                    }

                    /* Form styling */
                    form {
                        weight:300px;
                        margin-bottom: 100px;
                        margin-right: auto; /* 将右外边距设置为自动，使其居中 */
                        padding-left: 40px; /* 保持左内边距为 50px */
                        padding-right: 30px; /* 如果需要右内边距，可以设置右内边距为相同值 */
                    }


                    label {
                        display: block;
                        margin-bottom: 10px;
                        font-weight: bold;
                    }

                    input[type="text"],
                    input[type="email"],
                    input[type="password"] {
                        width: calc(100% - 20px); /* Subtract padding */
                        padding: 10px;
                        margin-bottom: 20px;
                        border: 1px solid #ccc;
                        border-radius: 5px;
                        box-sizing: border-box;
                    }

                    input[type="submit"] {
                        background-color: #ffffff;
                        color: #007bff; /* 修改为蓝色 */
                        border: 1px solid #007bff; /* 添加边框 */
                        padding: 10px 20px;
                        border-radius: 25px; /* 使用较大的圆角值 */
                        cursor: pointer;
                        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */
                        transition: background-color 0.3s, color 0.3s; /* 添加过渡效果 */
                    }

                    input[type="submit"]:hover {
                        background-color: #007bff;
                        color: #ffffff;
                    }

                </style>
            <div class="overlay"></div>
            <div class="container">
                <div class="user-info">
                    <h2 style="text-align: center;"><%= username %></h2>
                    <h2 style="text-align: center;">积分：<%= score %></h2>
                    <form action="score" method="post" style="margin-bottom: 10px">
                        <input type="hidden" name="username" value="<%= username %>">
                        <input type="submit" value="签到">
                    </form>

                    <form action="user" method="post">

                        <div style="display: flex; align-items: center; margin-bottom: 20px;">
                            <label for="email" style="display: inline-block; width: 80px;">邮箱</label>
                            <input type="email" id="email" name="email">
                        </div>
                        <div style="display: flex; align-items: center; margin-bottom: 20px;">
                            <label for="password" style="display: inline-block; width: 80px;">密码</label>
                            <input type="password" id="password" name="password">
                        </div>
                        <div style="display: flex; align-items: center; margin-bottom: 20px;">
                            <label for="telephone" style="display: inline-block; width: 80px;">电话</label>
                            <input type="text" id="telephone" name="telephone">
                        </div>

                        <div style="display: flex; align-items: center; margin-bottom: 20px;">
                            <label for="firm" style="display: inline-block; width: 80px;">公司</label>
                            <input type="text" id="firm" name="firm">
                        </div>

                        <div style="text-align: center;">
                            <input type="submit" value="修改信息">
                        </div>

                    </form>
                </div>

                <div class="activity-container">
                    <%
                        try {
                            // 加载MySQL的JDBC驱动程序
                            Class.forName("com.mysql.jdbc.Driver");
                            // 建立数据库连接
                            Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword);
                            // 查询活动订阅信息
                            String selectSubscriptionSql = "SELECT * FROM activity_registration WHERE user_id = ?";
                            PreparedStatement selectSubscriptionStmt = conn.prepareStatement(selectSubscriptionSql);
                            selectSubscriptionStmt.setString(1, username); // 设置查询条件为全局变量username
                            ResultSet subscriptionResultSet = selectSubscriptionStmt.executeQuery();
                            // 展示订阅信息
                            while (subscriptionResultSet.next()) {
                                int activityId = subscriptionResultSet.getInt("activity_id");
                                Timestamp registrationTime = subscriptionResultSet.getTimestamp("registration_time");

                                // 查询活动信息
                                String selectActivitySql = "SELECT * FROM activity_information WHERE activity_id = ?";
                                PreparedStatement selectActivityStmt = conn.prepareStatement(selectActivitySql);
                                selectActivityStmt.setInt(1, activityId); // 设置查询条件为活动ID
                                ResultSet activityResultSet = selectActivityStmt.executeQuery();

                                // 如果找到了匹配的活动信息，则展示出来
                                if (activityResultSet.next()) {
                                    String activityName = activityResultSet.getString("activity_name");
                                    String activityTime = activityResultSet.getString("activity_time");
                                    String activityLocation = activityResultSet.getString("activity_location");
                                    String activityContent = activityResultSet.getString("activity_content");
                                    boolean hasLive = activityResultSet.getBoolean("has_live");
                                    String videoReplayLink = activityResultSet.getString("video_replay_link");
                                    boolean subscriptionStatus = activityResultSet.getBoolean("subscription_status");
                                    int activityHeatLevel = activityResultSet.getInt("activity_heat_level");
                    %>
                    <div class="activity-info">
                        <h2> <%= activityName %></h2>
                        <p>活动时间： <%= activityTime %></p>
                        <p>活动地点： <%= activityLocation %></p>
                    </div>
                    <%
                                    // 关闭资源
                                    activityResultSet.close();
                                    selectActivityStmt.close();
                                }
                            }

                            // 关闭资源
                            subscriptionResultSet.close();
                            selectSubscriptionStmt.close();
                            conn.close();

                        } catch (ClassNotFoundException | SQLException e) {
                            // 处理异常情况，可以输出到日志或者呈现给用户
                            e.printStackTrace();
                        }
                    %>

                </div>
            </div>

        </div>
    </section>

     <div class="pop fade" id="popImgBox">
        <div class="popCont">
            <img src="" alt="" id="scaleId">
        </div>
     </div>
     <!-- 取色器 -->
     <script src="<%=request.getContextPath()%>/static/expand/colorpicker.js"></script>
     <!-- canvas拖拽api -->
     <script src="http://cdnjs.cloudflare.com/ajax/libs/fabric.js/2.4.6/fabric.min.js"></script>
    <script src="https://unpkg.com/coco-modal/coco-modal.min.js"></script>

</body>

</html>

<script>

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


</script>
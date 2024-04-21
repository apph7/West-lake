package com.quilt.controller;
import com.quilt.dto.Result;
import com.quilt.entity.Log;
import com.quilt.entity.User;
import com.quilt.exception.QuiltException;
import com.quilt.exception.enums.QuiltEnums;
import com.quilt.service.LogService;
import com.quilt.service.UserService;
import com.quilt.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @Autowired
    LogService logService;

    @RequestMapping("/login")
    public String getLoginPage() {
        return "login_or_register/login";
    }

    @RequestMapping("/register")
    public String getLoginPage3() {
        return "login_or_register/register";
    }

    @RequestMapping("/guest")
    public String getLoginPage5() {
        return "login_or_register/guest";
    }

    @RequestMapping("/confirm_register")
    public String getLoginPage4() {
        return "login_or_register/confirm_register";
    }

    @RequestMapping("/admin")
    public String getLoginPage2(){
        return "admin/index";
    }

    @RequestMapping("/confirm_guest")
    public String getLoginPage6(){
        return "login_or_register/confirm_guest";
    }

    @RequestMapping("/user")
    public String getLoginPage7(){
        return "login_or_register/user";
    }

    @RequestMapping("/activity")
    public String getLoginPage10(){
        return "activity/Activity";
    }

    @RequestMapping("/manage")
    public String getLoginPage11(){
        return "manage/index";
    }

    @RequestMapping("/comment")
    public String getLoginPage12(){
        return "activity/comment";
    }

    @RequestMapping("/submit")
    public String getLoginPage13(){
        return "xihu/expand/submit";
    }


    @RequestMapping("/score")
    public String getLoginPage14(){
        return "login_or_register/score";
    }

    // 西湖界面
    @RequestMapping("/index")
    public String getLoginPage15(){
        return "/xihu/home/index";
    }
    @RequestMapping("/ConferenceAgenda")
    public String getLoginPage21(){
        return "/xihu/agenda/ConferenceAgenda";
    }
    @RequestMapping("/hall")
    public String getLoginPage22(){
        return "/xihu/achievement/hall";
    }
    @RequestMapping("/newproduct")
    public String getLoginPage23(){
        return "/xihu/achievement/newproduct";
    }
    @RequestMapping("/media")
    public String getLoginPage24(){
        return "/xihu/media/media";
    }
    @RequestMapping("/mImg")
    public String getLoginPage25(){
        return "/xihu/media/mImg";
    }
    @RequestMapping("/mVideo")
    public String getLoginPage26(){
        return "/xihu/media/mVideo";
    }
    @RequestMapping("/news")
    public String getLoginPage27(){
        return "/xihu/media/news";
    }
    @RequestMapping("/About")
    public String getLoginPage28(){
        return "/xihu/mien/About";
    }
    @RequestMapping("/Exhibitor")
    public String getLoginPage29(){
        return "/xihu/mien/Exhibitor";
    }
    @RequestMapping("/expert")
    public String getLoginPage30(){
        return "/xihu/agenda/expert";
    }
    @RequestMapping("/ac")
    public String getLoginPage31(){
        return "/xihu/exciting-activity/ac";
    }
    @RequestMapping("/train")
    public String getLoginPage32(){
        return "/xihu/exciting-activity/train";
    }
    @RequestMapping("/expand")
    public String getLoginPage33(){
        return "/xihu/expand/expand";
    }

    @RequestMapping("/test")
    public String getLoginPage34(){
        return "/test/test";
    }

    @RequestMapping("/exit")
    public String getLoginPage35(){
        return "/xihu/home/exit";
    }
    @RequestMapping("/Announcement")
    public String getLoginPage36(){
        return "/admin/news";
    }

    @RequestMapping("/show")
    public String getLoginPage37(){
        return "/admin/show";
    }






    @RequestMapping("/edit_articles")
    public String getLoginPage16(){
        return "admin/edit_articles";
    }

    @RequestMapping("/article")
    public String getLoginPage17(){
        return "admin/all_articles";
    }


    @RequestMapping("/user_info")
    public String getLoginPage18(){
        return "admin/user_info";
    }

    @RequestMapping("/comments")
    public String getLoginPage19(){
        return "admin/comment";
    }


    @RequestMapping("/login/check")
    @ResponseBody
    public Result loginCheck(HttpServletRequest servletRequest, HttpSession session, String username, String password){
        try {

            User user = userService.login(username, password);

            if (user == null) {
                Log log = new Log();
                log.setIp(WebUtils.getClientIp(servletRequest));
                log.setLogDetail("登录失败");
                log.setLogType("登录");
                logService.addLogRecord(log);
                return new Result(QuiltEnums.FAILED);
            } else {
                session.setAttribute("user", user);
                Log log = new Log();
                log.setIp(WebUtils.getClientIp(servletRequest));
                log.setLogDetail("登录成功");
                log.setLogType("登录");
                logService.addLogRecord(log);
                return new Result(QuiltEnums.SUCCESS);
            }
        }catch (QuiltException qe){
            return new Result(qe.getQuiltEnums());
        }
    }




}

package com.lzgeorge.blogserver.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.lzgeorge.blogserver.entity.User;
import com.lzgeorge.blogserver.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 初始化 “我的产品”列表 JSP页面,具有分页功能
     * 跳转界面
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/listUser", method = RequestMethod.GET)
    public String showMyProduct(HttpServletRequest request, Model model) {
        this.userService.showProductsByPage(request, model);
        return "show_user";
    }

    //test返回json格式数据
    @ResponseBody
    @RequestMapping("yes")
    public List<User> showAllUsers(Integer id, String name) {
        return userService.showAllMsg();
    }

    //test自动装配
    @RequestMapping("/login")
    public String hello(String username, String userpassword, HttpSession session) {
        User lgUser = null;
        lgUser = userService.checkLogin(username, userpassword);
        if (lgUser != null) {
            session.setAttribute("lgUser", lgUser);
            return "success";
        } else return "error";
    }

    @ResponseBody
    @RequestMapping(value = "/LgStatus", produces = "application/json; charset=utf-8")
    public String currentLgUser(HttpSession session) {
        User lguser = (User)session.getAttribute("lgUser");
        return lguser !=null?lguser.toString():"No user login!";
    }

    @ResponseBody
    @RequestMapping("/lgOut")
    public String logout(HttpSession session){
        if(session.getAttribute("lgUser") != null) {
            session.removeAttribute("lgUser");
            return "Logout success!";
        }else {
            return "Logout failure！";
        }
    }

	/*@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request, Model model){
		return "login";
	}*/
}

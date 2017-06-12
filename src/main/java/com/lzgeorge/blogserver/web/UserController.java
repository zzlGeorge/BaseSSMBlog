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

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @RequestMapping("/login")
    public String login(String username, String userpassword, HttpSession session) {
        User lgUser = null;
        lgUser = userService.checkLogin(username, userpassword);
        if (lgUser != null) {
            session.setAttribute("lgUser", lgUser);
            return "../index";
        } else return "error";
    }

    @ResponseBody
    @RequestMapping(value = "/LgStatus")
    public User currentLgUser(HttpSession session) {
        User lguser = (User) session.getAttribute("lgUser");
        return lguser;
    }

    @ResponseBody
    @RequestMapping("/lgOut")
    public Map<String, Object> logout(HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (session.getAttribute("lgUser") != null) {
            session.removeAttribute("lgUser");
            map.put("s", "success");

        } else {
            map.put("s", "failure");
        }
        return map;
    }

    @ResponseBody
    @RequestMapping("/register")
    public String register(User user) {
        user.setCreateTime(new Date());
        int execute = userService.register(user);
        return execute > 0 ? "success" : "failure";
    }

	/*@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request, Model model){
		return "login";
	}*/
}

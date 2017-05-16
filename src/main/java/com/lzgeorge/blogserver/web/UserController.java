package com.lzgeorge.blogserver.web;

import com.lzgeorge.blogserver.entity.User;
import com.lzgeorge.blogserver.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by admin on 2017/5/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @ResponseBody
    @RequestMapping("/index")
    public String index(String msg) {
        return "Success test!";
    }

    @ResponseBody
    @RequestMapping("/listUser")
    public List<User> getUser() {
        return userService.getAllUser();
    }

    @ResponseBody
    @RequestMapping("/searchUser")
    public User getUser(Integer id) {
        User user = userService.findUserById(id);
        return user != null ? user : null;
    }
}

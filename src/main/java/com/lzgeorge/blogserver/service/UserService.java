package com.lzgeorge.blogserver.service;

import javax.servlet.http.HttpServletRequest;

import com.lzgeorge.blogserver.entity.User;
import org.springframework.ui.Model;

import java.util.List;

public interface UserService {
    /**
     * 分页显示商品
     * @param request
     * @param model
     */
    void showProductsByPage(HttpServletRequest request, Model model);

    List<User> showAllMsg();

    User checkLogin(String username, String userpassword);

    int register(User user);
}

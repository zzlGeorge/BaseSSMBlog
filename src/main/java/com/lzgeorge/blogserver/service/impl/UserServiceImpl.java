package com.lzgeorge.blogserver.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.lzgeorge.blogserver.dao.UserMapper;
import com.lzgeorge.blogserver.entity.User;
import com.lzgeorge.blogserver.service.UserService;
import com.lzgeorge.blogserver.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userDao;

    public void showProductsByPage(HttpServletRequest request, Model model) {
        String pageNow = request.getParameter("pageNow");

        Page page = null;

        List<User> products = new ArrayList<User>();

        int totalCount = (int) userDao.getUsersCount();

        if (pageNow != null) {
            page = new Page(totalCount, Integer.parseInt(pageNow));
            products = this.userDao.selectUsersByPage(page.getStartPos(), page.getPageSize());
        } else {
            page = new Page(totalCount, 1);
            products = this.userDao.selectUsersByPage(page.getStartPos(), page.getPageSize());
        }

        model.addAttribute("products", products);
        model.addAttribute("page", page);
    }

    public List<User> showAllMsg() {
        return userDao.showAllUser();
    }

    public User checkLogin(String username, String userpassword) {
        return userDao.loginCk(username, userpassword);
    }
}

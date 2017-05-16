package com.lzgeorge.blogserver.service;

import com.lzgeorge.blogserver.entity.User;

import java.util.List;

/**
 * Created by admin on 2017/5/15.
 */
public interface UserService {

    List<User> getAllUser();

    User findUserById(Integer id);

}

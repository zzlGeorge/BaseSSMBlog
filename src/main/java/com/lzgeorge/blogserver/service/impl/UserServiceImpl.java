package com.lzgeorge.blogserver.service.impl;

import com.lzgeorge.blogserver.dao.UserMapper;
import com.lzgeorge.blogserver.entity.User;
import com.lzgeorge.blogserver.entity.UserCriteria;
import com.lzgeorge.blogserver.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by admin on 2017/5/15.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserMapper userMapper;

    public List<User> getAllUser() {
        UserCriteria criteria = new UserCriteria();
        return userMapper.selectByExample(criteria);
    }

    public User findUserById(Integer id) {
        if (id == null)
            return null;
        return userMapper.selectByPrimaryKey(id);
    }
}

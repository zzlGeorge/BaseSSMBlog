package com.lzgeorge.blogserver.dao;

import com.lzgeorge.blogserver.entity.User;
import com.lzgeorge.blogserver.entity.UserCriteria;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface UserMapper {
    int countByExample(UserCriteria example);

    int deleteByExample(UserCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExampleWithRowbounds(UserCriteria example, RowBounds rowBounds);

    List<User> selectByExample(UserCriteria example);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserCriteria example);

    int updateByExample(@Param("record") User record, @Param("example") UserCriteria example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> showAllUser();

    /**
     * 使用注解方式传入多个参数，用户产品分页，通过登录用户ID查询
     *
     * @param
     * @return #{startPos},#{pageSize}
     */
    List<User> selectUsersByPage(@Param(value = "startPos") Integer startPos,
                                 @Param(value = "pageSize") Integer pageSize);

    /**
     * 取得产品数量信息，通过登录用户ID查询
     *
     * @param
     * @return
     */
    public long getUsersCount();

    /**
     * 登陆,注意标注参数@Param
     */
    User loginCk(@Param(value = "username") String username1, @Param(value = "password") String userpassword);
}
package com.zwb.dao;

import com.zwb.entity.User;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 10:00
 */
public interface UserDAO {


    User queryById(User user);
    User queryByNameAndPwd(User user);
    User queryByName(String name);
    User queryByTel(String tel);

    void insert(User user);
}

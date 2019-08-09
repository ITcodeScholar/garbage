package com.zwb.services;

import com.zwb.dao.UserDAO;
import com.zwb.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 11:10
 */
@Service
public class UserServices {
    @Autowired
    public UserDAO userDAO;

   public  User queryById(User user) {
        return userDAO.queryById(user);

    }
    public void insert(User user){
        userDAO.insert(user);
    }

    public User queryByNameAndPwd(User user){
       return userDAO.queryByNameAndPwd(user);
    }

    public User queryByName(String name){
       return userDAO.queryByName(name);
    }

    public User queryByTel(String tel){
        return userDAO.queryByTel(tel);
    }
}

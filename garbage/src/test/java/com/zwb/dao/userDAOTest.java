package com.zwb.dao;


import com.zwb.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 10:27
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")

public class userDAOTest {

    @Autowired
    public UserDAO userDAO;

    @Test
    public void queryTest(){
        User user = new User();
        user.setUserName("bin");
        user.setUserPwd("666666");
        user.setUserTel("15877777777");
        userDAO.insert(user);


    }

}

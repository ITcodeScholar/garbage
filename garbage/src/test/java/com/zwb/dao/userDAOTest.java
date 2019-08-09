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
        /*User user = new User();
        user.setUserName("bin");
        user.setUserPwd("666666");
        user.setUserTel("15877777777");
        userDAO.insert(user);*/

        /*测试querybynameandpwd
        User user=new User();
        user.setUserName("y111111");
        user.setUserPwd("111111");
        User user1=userDAO.queryByNameAndPwd(user);
        System.out.println(user1);*/

        /*
        测试querybyname
        String name="zhangwenbin";
        User user=userDAO.queryByName(name);
        System.out.println(user);*/

        String tel="15879931291";
        User user=userDAO.queryByTel(tel);
        System.out.println(user);


    }

}

package com.zwb.dao;

import com.zwb.dao.test.BaseTest;
import com.zwb.entity.Garbage;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/8/8 15:28
 */
public class garbageDAOTest extends BaseTest {


    @Autowired
    GarbageDAO garbageDAO;


    @Test
    public void queryByNameTest(){
        String name="废电池";
        List<Garbage> garbageList=garbageDAO.queryByName(name);
        garbageList.forEach(temp-> System.out.println(temp));


    }
}

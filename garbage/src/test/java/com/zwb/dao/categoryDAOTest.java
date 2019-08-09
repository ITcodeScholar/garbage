package com.zwb.dao;

import com.zwb.dao.test.BaseTest;
import com.zwb.entity.Category;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/8/9 9:08
 */
public class categoryDAOTest extends BaseTest {

    @Autowired
    public CategoryDAO categoryDAO;

    @Test
    public void TestCategoryQuery(){
        List<Category> category=categoryDAO.queryById(1);
        category.forEach(temp-> System.out.println(temp));

    }
}

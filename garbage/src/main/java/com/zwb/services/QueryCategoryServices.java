package com.zwb.services;

import com.zwb.dao.CategoryDAO;
import com.zwb.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/8/9 10:53
 */
@Service
public class QueryCategoryServices {
    @Autowired
    public CategoryDAO categoryDAO;

    public List<Category> queryById(int id){
        return categoryDAO.queryById(id);
    }
}

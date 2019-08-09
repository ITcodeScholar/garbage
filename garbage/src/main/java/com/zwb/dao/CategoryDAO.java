package com.zwb.dao;

import com.zwb.entity.Category;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/8/8 16:59
 */
public interface CategoryDAO {

    List<Category> queryById(int id);



}

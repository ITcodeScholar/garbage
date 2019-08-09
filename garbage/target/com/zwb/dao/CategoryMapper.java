package com.zwb.dao;

import com.zwb.entity.Category;
import com.zwb.entity.CategoryExample;
import com.zwb.entity.CategoryWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CategoryMapper {
    int countByExample(CategoryExample example);

    int deleteByExample(CategoryExample example);

    int deleteByPrimaryKey(Integer categoryId);

    int insert(CategoryWithBLOBs record);

    int insertSelective(CategoryWithBLOBs record);

    List<CategoryWithBLOBs> selectByExampleWithBLOBs(CategoryExample example);

    List<Category> selectByExample(CategoryExample example);

    CategoryWithBLOBs selectByPrimaryKey(Integer categoryId);

    int updateByExampleSelective(@Param("record") CategoryWithBLOBs record, @Param("example") CategoryExample example);

    int updateByExampleWithBLOBs(@Param("record") CategoryWithBLOBs record, @Param("example") CategoryExample example);

    int updateByExample(@Param("record") Category record, @Param("example") CategoryExample example);

    int updateByPrimaryKeySelective(CategoryWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CategoryWithBLOBs record);

    int updateByPrimaryKey(Category record);
}
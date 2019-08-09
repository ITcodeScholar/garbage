package com.zwb.dao;

import com.zwb.entity.Garbage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/8/8 15:23
 */
public interface GarbageDAO {


    List<Garbage> queryByName(@Param("garbageName") String name);

}

package com.zwb.services;

import com.zwb.dao.GarbageDAO;
import com.zwb.entity.Garbage;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: mazhq
 * @Date: 2019/8/9 10:51
 */
@Service
public class QueryGarbageServices {
    @Autowired
    public GarbageDAO garbageDAO;

    public List<Garbage> queryByName( String name){
        return garbageDAO.queryByName(name);
    }
}

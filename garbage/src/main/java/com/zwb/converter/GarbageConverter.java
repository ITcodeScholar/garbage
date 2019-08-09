package com.zwb.converter;

import com.zwb.entity.Garbage;
import com.zwb.vo.GarbageVO;

/**
 * @Author: mazhq
 * @Date: 2019/8/8 15:19
 */
public class GarbageConverter {
    public Garbage convert(GarbageVO garbageVO){
        Garbage garbage=new Garbage();
        garbage.setGarId(garbageVO.getGarId());
        garbage.setGarName(garbageVO.getGarName());
        garbage.setResolveTime(garbageVO.getResolveTime());
        garbage.setPenalty(garbageVO.getPenalty());
        garbage.setVisitNum(garbageVO.getVisitNum());

        return  garbage;




    }

}

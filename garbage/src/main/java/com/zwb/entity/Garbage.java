package com.zwb.entity;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 9:57
 */
public class Garbage {
    private Integer garId;
    private String garName;
    private String resolveTime;
    private Double penalty;
    private Integer visitNum;
    private Category categoryId;


    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    public Garbage(Integer garId, String garName, String resolveTime, Double penalty, Integer visitNum, Category categoryId) {
        this.garId = garId;
        this.garName = garName;
        this.resolveTime = resolveTime;
        this.penalty = penalty;
        this.visitNum = visitNum;
        this.categoryId = categoryId;
    }





    public Garbage() {
    }



    public Integer getGarId() {
        return garId;
    }

    public void setGarId(Integer garId) {
        this.garId = garId;
    }

    public String getGarName() {
        return garName;
    }

    public void setGarName(String garName) {
        this.garName = garName;
    }

    public String getResolveTime() {
        return resolveTime;
    }

    public void setResolveTime(String resolveTime) {
        this.resolveTime = resolveTime;
    }

    public Double getPenalty() {
        return penalty;
    }

    public void setPenalty(Double penalty) {
        this.penalty = penalty;
    }

    public Integer getVisitNum() {
        return visitNum;
    }

    public void setVisitNum(Integer visitNum) {
        this.visitNum = visitNum;
    }

    @Override
    public String toString() {
        return "Garbage{" +
                "garId=" + garId +
                ", garName='" + garName + '\'' +
                ", resolveTime='" + resolveTime + '\'' +
                ", penalty=" + penalty +
                ", visitNum=" + visitNum +
                ", categoryId=" + categoryId +
                '}';
    }

    public Category getCategoryId() {
        return categoryId;
    }
}

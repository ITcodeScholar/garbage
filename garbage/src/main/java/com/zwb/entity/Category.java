package com.zwb.entity;

import java.io.Serializable;
import java.util.List;

public class Category implements Serializable {
    private Integer categoryId;

    private String categoryName;

    private String categoryImg;

    private String categoryBody;

    private String categoryExplain;

    private String categoryRequire;

    private List<Garbage> garbages;

    @Override
    public String toString() {
        return "Category{" +
                "categoryId=" + categoryId +
                ", categoryName='" + categoryName + '\'' +
                ", categoryImg='" + categoryImg + '\'' +
                ", categoryBody='" + categoryBody + '\'' +
                ", categoryExplain='" + categoryExplain + '\'' +
                ", categoryRequire='" + categoryRequire + '\'' +
                ", garbages=" + garbages +
                '}';
    }

    public List<Garbage> getGarbages() {
        return garbages;
    }

    public void setGarbages(List<Garbage> garbages) {
        this.garbages = garbages;
    }

    public Category(Integer categoryId, String categoryName, String categoryImg, String categoryBody, String categoryExplain, String categoryRequire, List<Garbage> garbages) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categoryImg = categoryImg;
        this.categoryBody = categoryBody;
        this.categoryExplain = categoryExplain;
        this.categoryRequire = categoryRequire;
        this.garbages = garbages;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryImg() {
        return categoryImg;
    }

    public void setCategoryImg(String categoryImg) {
        this.categoryImg = categoryImg;
    }

    public String getCategoryBody() {
        return categoryBody;
    }

    public void setCategoryBody(String categoryBody) {
        this.categoryBody = categoryBody;
    }

    public String getCategoryExplain() {
        return categoryExplain;
    }

    public void setCategoryExplain(String categoryExplain) {
        this.categoryExplain = categoryExplain;
    }

    public String getCategoryRequire() {
        return categoryRequire;
    }

    public void setCategoryRequire(String categoryRequire) {
        this.categoryRequire = categoryRequire;
    }

    public Category() {
    }

    public Category(Integer categoryId, String categoryName, String categoryImg, String categoryBody, String categoryExplain, String categoryRequire) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categoryImg = categoryImg;
        this.categoryBody = categoryBody;
        this.categoryExplain = categoryExplain;
        this.categoryRequire = categoryRequire;
    }
}
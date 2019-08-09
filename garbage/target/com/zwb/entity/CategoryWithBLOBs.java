package com.zwb.entity;

import java.io.Serializable;

public class CategoryWithBLOBs extends Category implements Serializable {
    private String categoryBody;

    private String categoryExplain;

    private String categoryRequire;

    private static final long serialVersionUID = 1L;

    public String getCategoryBody() {
        return categoryBody;
    }

    public void setCategoryBody(String categoryBody) {
        this.categoryBody = categoryBody == null ? null : categoryBody.trim();
    }

    public String getCategoryExplain() {
        return categoryExplain;
    }

    public void setCategoryExplain(String categoryExplain) {
        this.categoryExplain = categoryExplain == null ? null : categoryExplain.trim();
    }

    public String getCategoryRequire() {
        return categoryRequire;
    }

    public void setCategoryRequire(String categoryRequire) {
        this.categoryRequire = categoryRequire == null ? null : categoryRequire.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        CategoryWithBLOBs other = (CategoryWithBLOBs) that;
        return (this.getCategoryId() == null ? other.getCategoryId() == null : this.getCategoryId().equals(other.getCategoryId()))
            && (this.getCategoryName() == null ? other.getCategoryName() == null : this.getCategoryName().equals(other.getCategoryName()))
            && (this.getCategoryImg() == null ? other.getCategoryImg() == null : this.getCategoryImg().equals(other.getCategoryImg()))
            && (this.getCategoryBody() == null ? other.getCategoryBody() == null : this.getCategoryBody().equals(other.getCategoryBody()))
            && (this.getCategoryExplain() == null ? other.getCategoryExplain() == null : this.getCategoryExplain().equals(other.getCategoryExplain()))
            && (this.getCategoryRequire() == null ? other.getCategoryRequire() == null : this.getCategoryRequire().equals(other.getCategoryRequire()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCategoryId() == null) ? 0 : getCategoryId().hashCode());
        result = prime * result + ((getCategoryName() == null) ? 0 : getCategoryName().hashCode());
        result = prime * result + ((getCategoryImg() == null) ? 0 : getCategoryImg().hashCode());
        result = prime * result + ((getCategoryBody() == null) ? 0 : getCategoryBody().hashCode());
        result = prime * result + ((getCategoryExplain() == null) ? 0 : getCategoryExplain().hashCode());
        result = prime * result + ((getCategoryRequire() == null) ? 0 : getCategoryRequire().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", categoryBody=").append(categoryBody);
        sb.append(", categoryExplain=").append(categoryExplain);
        sb.append(", categoryRequire=").append(categoryRequire);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
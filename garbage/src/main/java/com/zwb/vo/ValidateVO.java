package com.zwb.vo;

/**
 * @Author: mazhq
 * @Date: 2019/8/8 10:56
 */
public class ValidateVO {
    private String userName;
    private String userTel;

    @Override
    public String toString() {
        return "UserVO{" +
                "userName='" + userName + '\'' +
                ", userTel='" + userTel + '\'' +
                '}';
    }

    public ValidateVO() {
    }

    public ValidateVO(String userName, String userTel) {
        this.userName = userName;
        this.userTel = userTel;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }
}

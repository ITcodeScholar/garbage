package com.zwb.entity;

/**
 * @Author: mazhq
 * @Date: 2019/8/7 9:59
 */
public class User {

    private int userId;
    private String userName;
    private String userPwd;
    private String userTel;
    private int score;
    private int gradeId;

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userTel='" + userTel + '\'' +
                ", score=" + score +
                ", gradeId=" + gradeId +
                '}';
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getGradeId() {
        return gradeId;
    }

    public void setGradeId(int gradeId) {
        this.gradeId = gradeId;
    }

    public User() {
    }

    public User(int userId, String userName, String userPwd, String userTel, int score, int gradeId) {
        this.userId = userId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userTel = userTel;
        this.score = score;
        this.gradeId = gradeId;
    }
}

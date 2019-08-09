package com.zwb.vo;

/**
 * @Author: mazhq
 * @Date: 2019/8/8 10:59
 */
public class ResultVO {
    private boolean result;
    private String userNameError;
    private String userTelError;

    public ResultVO() {
    }

    @Override
    public String toString() {
        return "ResultVO{" +
                "result=" + result +
                ", userNameError='" + userNameError + '\'' +
                ", userTelError='" + userTelError + '\'' +
                '}';
    }

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public String getUserNameError() {
        return userNameError;
    }

    public void setUserNameError(String userNameError) {
        this.userNameError = userNameError;
    }

    public String getuserTelError() {
        return userTelError;
    }

    public void setuserTelError(String userTelError) {
        this.userTelError = userTelError;
    }

    public ResultVO(boolean result, String userNameError, String userTelError) {
        this.result = result;
        this.userNameError = userNameError;
        this.userTelError = userTelError;
    }
}

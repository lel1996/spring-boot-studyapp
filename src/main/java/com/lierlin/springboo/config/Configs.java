package com.lierlin.springboo.config;

public enum Configs {
    SUCCESS(0,"访问成功"),
    FAIL(1,"访问失败");
    private int code;
    private String Message;

    public void setCode(int code) {
        this.code = code;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return Message;
    }

    Configs(int code, String message){
        this.code=code;
        this.Message=message;
    }

}

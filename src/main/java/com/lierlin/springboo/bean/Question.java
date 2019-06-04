package com.lierlin.springboo.bean;

public class Question {
    private int cid;
    private String cname;
    private String tid;

    public Question(int cid, String cname, String tid) {
        this.cid = cid;
        this.cname = cname;
        this.tid = tid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }
}

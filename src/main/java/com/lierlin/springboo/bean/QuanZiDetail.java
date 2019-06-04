package com.lierlin.springboo.bean;

import javax.xml.crypto.Data;
import java.util.Date;

public class QuanZiDetail {
    private int id;
    private String courseName;
    private String author;
    private Date date;
    private String content;
    private  int praise;
    private int comment;

    public QuanZiDetail(int id, String courseName, String author, Date date, String content, int praise, int comment) {
        this.id = id;
        this.courseName = courseName;
        this.author = author;
        this.date = date;
        this.content = content;
        this.praise = praise;
        this.comment = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPraise() {
        return praise;
    }

    public void setPraise(int praise) {
        this.praise = praise;
    }

    public int getComment() {
        return comment;
    }

    public void setComment(int comment) {
        this.comment = comment;
    }
}

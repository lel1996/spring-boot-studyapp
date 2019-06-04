package com.lierlin.springboo.bean;

public class VideoCase {
    private int id;
    private String img;
    private String title;
    private String url;

    public VideoCase(int id, String img, String title, String url) {
        this.id = id;
        this.img = img;
        this.title = title;
        this.url = url;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

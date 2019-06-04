package com.lierlin.springboo.bean;

public class Case {
    private int id;
    private String img;
    private String coursename;
    private String schoolname;
    private String college;
    private String video;
    private int page;

    public Case(int id, String img, String coursename, String schoolname, String college, String video, int page) {
        this.id = id;
        this.img = img;
        this.coursename = coursename;
        this.schoolname = schoolname;
        this.college = college;
        this.video = video;
        this.page = page;
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

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getSchoolname() {
        return schoolname;
    }

    public void setSchoolname(String schoolname) {
        this.schoolname = schoolname;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }
}

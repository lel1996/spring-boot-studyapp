package com.lierlin.springboo.bean;

import com.lierlin.springboo.bean.Case;

import java.util.List;

public class HelpCase {

    List<Case> cases;
    private int totalpage;
    public HelpCase(List<Case> cases,int totalpage) {
        this.totalpage = totalpage;
        this.cases = cases;
    }

    public int getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(int totalpage) {
        this.totalpage = totalpage;
    }

    public List<Case> getCases() {
        return cases;
    }

    public void setCases(List<Case> cases) {
        this.cases = cases;
    }
}

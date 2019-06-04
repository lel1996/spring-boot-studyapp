package com.lierlin.springboo.mapper;

import com.lierlin.springboo.bean.CourseQ;

import java.util.List;

public interface QuestionMapper {
    /*获取题库中的所有项目*/
    public List QuestionAll();
    /*获取题库中某一项的所有测试题*/
    public List QuestionList(CourseQ c);
    /*获取某一项的测试题中的所有question*/
    public List QuestionListOne(int cqid);
}

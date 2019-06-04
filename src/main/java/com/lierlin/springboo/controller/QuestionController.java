package com.lierlin.springboo.controller;

import com.lierlin.springboo.bean.CourseQ;
import com.lierlin.springboo.bean.User;
import com.lierlin.springboo.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class QuestionController {
    @Autowired
    QuestionService questionService;
    @PostMapping("course")
    public List QuestionAll(){
        return questionService.QuestionAll();
    }
    /*某一科目的题的列表集*/
    @PostMapping("courselist")
    public List QuestionList(int cid){
        CourseQ c=new CourseQ();
        c.setCid(cid);
        return questionService.QuestionList(c);
    }
    /*获取列表中的所以question*/
    @PostMapping("questionListOne")
    public List QuestionListOne(String cqid){
          if (cqid!=null)
         return questionService.QuestionListOne(cqid);
          else return null;
    }
}

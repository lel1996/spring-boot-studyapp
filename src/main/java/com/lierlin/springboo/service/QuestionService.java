package com.lierlin.springboo.service;

import com.lierlin.springboo.bean.CourseListOne;
import com.lierlin.springboo.bean.CourseQ;
import com.lierlin.springboo.mapper.QuestionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class QuestionService {
    @Autowired
    QuestionMapper questionMapper;
    public List QuestionAll(){
        return  questionMapper.QuestionAll();
    }
    public List QuestionList(CourseQ c){
        return questionMapper.QuestionList(c);
    }
    public List QuestionListOne(String cqid){
       String str=cqid;
         //Map map =new HashMap();
        List list=new ArrayList();
        String[] strings=str.split(",");
        for (int i=0;i<strings.length;i++)
            list.add(i,questionMapper.QuestionListOne(Integer.valueOf(strings[i].toString()))) ;
        //map.put(i,questionMapper.QuestionListOne(Integer.valueOf(strings[i].toString()))) ;
       /* List<CourseListOne> listOnes=new ArrayList<>();
        listOnes.add()*/
        return list;

    }
}

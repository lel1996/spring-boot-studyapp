package com.lierlin.springboo.service;

import com.lierlin.springboo.mapper.QuanZi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuanZiService {
    @Autowired
    QuanZi quanZi;
    public List AllCourse(){
      return   quanZi.Quanzi();
    }
    public List AllDetail(){
        return quanZi.QuanZiDetail();
    }
}

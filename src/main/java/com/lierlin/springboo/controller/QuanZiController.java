package com.lierlin.springboo.controller;

import com.lierlin.springboo.service.QuanZiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class QuanZiController {
    @Autowired
    QuanZiService quanZiService;
    @PostMapping("quanzi")
    public List AllCourse(){
        return quanZiService.AllCourse();
    }
    @PostMapping("quanzidetail")
    public List AllDetail(){
        return quanZiService.AllDetail();
    }
}

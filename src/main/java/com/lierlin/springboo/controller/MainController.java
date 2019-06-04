package com.lierlin.springboo.controller;

import com.lierlin.springboo.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MainController {
@Autowired
    MainService mainService;
    @PostMapping("Slider")
    public List SliderImg(){
      return   mainService.SliderImg();
    }
    @PostMapping("res")
    public List MainRes(){
        return mainService.MainRes();
    }
    /*视频案列*/
    @PostMapping("videocase")
    public List VideoCase(){
        return mainService.VideoCase();
    }
    /*参考案列*/
    @PostMapping("recase")
    public List ReCase(){
        return mainService.Recase();
    }
}

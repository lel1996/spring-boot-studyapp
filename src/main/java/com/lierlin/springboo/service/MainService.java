package com.lierlin.springboo.service;

import com.lierlin.springboo.mapper.MainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainService {
    @Autowired
    MainMapper mainMapper;
    public List SliderImg(){
      return   mainMapper.SliderImg();
    }
    public List MainRes(){
        return mainMapper.MainRes();
    }
    /*视频案列*/
    public  List VideoCase(){
        return mainMapper.VideoCase();
    }
    /*参考案例*/
    public List Recase(){
        return mainMapper.Recase();
    }

}

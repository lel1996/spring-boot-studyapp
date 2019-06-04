package com.lierlin.springboo.mapper;



import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface MainMapper {
    public List SliderImg();
    public List MainRes();
    public List VideoCase();
    public List Recase();
}

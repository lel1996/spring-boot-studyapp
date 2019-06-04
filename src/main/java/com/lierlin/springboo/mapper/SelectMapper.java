package com.lierlin.springboo.mapper;

import com.lierlin.springboo.bean.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SelectMapper {
      /* @Select("select * from user where id=#{id}")*/
           public User Select(User user);
           public int Resgister(User user);
           public User SelectByid(int id);
           public int updateP(User user);
}

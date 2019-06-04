package com.lierlin.springboo.service;

import com.lierlin.springboo.bean.User;
import com.lierlin.springboo.mapper.SelectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    SelectMapper selectMapper;

    public Boolean SelectUser(User user){

       User user1 =selectMapper.Select(user);
       if (user1!=null)
       return true;
       else
           return false;
    }
    public Boolean Resgister(User user){
       int a= selectMapper.Resgister(user);
       if (a!=0)
           return true;
       else return false;

    }
    public User SelectByid(int id){
        return selectMapper.SelectByid(id);
    }
    public Boolean updateP(User user){
        int num=selectMapper.updateP(user);
        if (num==0)return false;
        else return true;
    }
}

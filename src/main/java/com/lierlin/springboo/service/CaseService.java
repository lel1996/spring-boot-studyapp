package com.lierlin.springboo.service;

import com.lierlin.springboo.mapper.CaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CaseService {
    @Autowired
    CaseMapper caseMapper;
    public List Case(){
        return caseMapper.Case();
    }
    public int Count(){
        double begin=caseMapper.Count();
       int count= (int) Math.ceil(begin/7);
       return count;
    }
}

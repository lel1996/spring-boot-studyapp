package com.lierlin.springboo.controller;

import com.lierlin.springboo.bean.Case;
import com.lierlin.springboo.bean.HelpCase;
import com.lierlin.springboo.service.CaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CaseController {
    @Autowired
    CaseService caseService;
    @PostMapping("case")
    public HelpCase Case(){
      List<Case> cases= caseService.Case();
      int count=caseService.Count();
      HelpCase helpCase=new HelpCase(cases,count);
      return helpCase;
    }
}

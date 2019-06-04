package com.lierlin.springboo.controller;

import com.lierlin.springboo.bean.User;
import com.lierlin.springboo.config.StatusCode;
import com.lierlin.springboo.service.UserService;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import sun.net.httpserver.HttpServerImpl;

@RestController
public class SelectController {

    @Autowired
    UserService userService;

    @RequestMapping("select")
    public int getUser(@RequestParam("n") String n,@RequestParam("p") String p){
        User user=new User();
        user.setName(n);
        user.setPassword(p);
        boolean b= userService.SelectUser(user);
         if (b!=false){
             System.out.println("-------------------------");
             return StatusCode.success;
         }
         else
             return StatusCode.user_invalid;
    }
  @GetMapping("selectuser/{id}")
    public User select(@PathVariable("id") int id) {
      return userService.SelectByid(id);


  }
    @RequestMapping("Resgister")
    public int ResUser(@RequestParam("uname") String uname, @RequestParam("upasswd") String upasswd){

         User user=new User();
         user.setName(uname);
         user.setPassword(upasswd);
         boolean b= userService.Resgister(user);
        if (b!=true){return StatusCode.fail;}
        else return StatusCode.success;

    }
    @RequestMapping("Modifty")
    public int ModPassword(@RequestParam("uname") String uname,@RequestParam("newPassword") String newPassword){
        User user=new User();
        user.setName(uname);
        user.setPassword(newPassword);
        boolean b=userService.updateP(user);
        if (b!=true)return StatusCode.fail;
        else return StatusCode.success;
    }
}

package com.example.book.controller;

import com.example.book.entiy.User;
import com.example.book.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by hewenlong on 2018/5/19.
 */
@Controller
@ComponentScan("com.example.book.service")
@MapperScan("com.example.book.dao")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/findAll")
    public String findAll(HttpServletRequest request) {

        System.out.println("PageController:page()");

        List<User> list = userService.findAll();

        System.out.println(list.get(0).getName());
        request.setAttribute("userlist", list);

        return "listall";

    }

    /**
     * 登陆方法判断用户
     * @param name
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public String login(String name,String password,HttpServletRequest request){
        User use=null;

        if(StringUtils.isNotEmpty(name)&&StringUtils.isNotEmpty(password)){
            User user= new User();
            user.setName(name);
            user.setPassword(password);
            use = userService.getUserById(user);
        }
        if(use!=null){
            //设置返回的获取的对象
            request.setAttribute("user",use);
            return "success";
        }
        request.setAttribute("user",use);
        return "error";
    }
}

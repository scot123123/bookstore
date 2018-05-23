package com.example.book.controller;

import com.example.book.entiy.User;
import com.example.book.service.UserService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
     * @param request
     * @param name
     * @param password
     * @return
     */
    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String login( @RequestParam("name")String name, @RequestParam("password")String password,ModelMap model){
        User user = userService.getUserById(name, password);
        if(user!=null){
            //设置返回的获取的对象
            return "listall";
        }
        return "error";

    }

}

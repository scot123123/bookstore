package com.example.book.controller;

import com.example.book.entiy.Menu;
import com.example.book.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 对于菜单的操作
 * created by hewenlong  on 2018/5/25
 */
@RestController
public class MenuController {
    @Autowired
    private MenuService menuService;

    @RequestMapping("/getAllMenu")
    @ResponseBody
    public List<Menu> getAllMenu(){
        List<Menu> list = menuService.findAll();
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}

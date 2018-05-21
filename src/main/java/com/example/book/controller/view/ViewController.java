package com.example.book.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * created by hewenlong  on 2018/5/21
 */
@Controller
public class ViewController {

    //首页默认页面
    @RequestMapping("")
    public String index(){
        return "index";
    }
}

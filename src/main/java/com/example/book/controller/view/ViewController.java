package com.example.book.controller.view;

import com.example.book.entiy.Menu;
import com.example.book.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * created by hewenlong  on 2018/5/21
 */
@Controller
public class ViewController {
    @Autowired
    private MenuService menuService;
    //首页默认页面
    @RequestMapping("")
    public String index(){
        return "index";
    }

    @RequestMapping("/menu")
    public String menu(Model model){
        List<Menu> menuLisy = menuService.selectMenusByUserId();
        model.addAttribute("menus",menuLisy);
        return "/menu/menuList";
    }
}

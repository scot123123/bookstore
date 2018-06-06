package com.example.book;

import com.example.book.dao.MenuMapper;
import com.example.book.dao.RoleMapper;
import com.example.book.dao.UserMapper;
import com.example.book.entiy.Menu;
import com.example.book.entiy.RoleInfo;
import com.example.book.entiy.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookApplicationTests {
    @Autowired
    private MenuMapper<Menu> menuMapper;
    @Autowired
    private UserMapper<User> userMapper;
    @Autowired
    private RoleMapper<RoleInfo> roleMapper;
    @Test
    public void contextLoads1() {
//        List<User> list = userMapper.findAll();
//        System.out.println("");
//        for (User user:list) {
//            if (user!=null){
//                System.out.println(user.getName());
//            }
//        }

    }
    @Test
    public void contTest(){
//        List<RoleInfo> list = roleMapper.findAll();
//        if(list!=null){
//            System.out.println(list.get(0).getRoleName());
//        }
    }
    @Test
    public void contextLoads() {
//        Menu menus = menuMapper.getMenuById("1");
        List<Menu> menuLisy = menuMapper.selectMenusByUserId();
        List<Menu> list = menuMapper.findAll();
        for (Menu menu:list) {
            if(menu!=null){
                System.out.println(menu.getName());
            }
        }

    }

}

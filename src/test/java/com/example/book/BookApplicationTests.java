package com.example.book;

import com.example.book.dao.UserMapper;
import com.example.book.entiy.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookApplicationTests {
    @Autowired
    private UserMapper<User> userMapper;
    @Test
    public void contextLoads() {
        User user = userMapper.getUserById("ceshi","123");
        if (user!=null){
            System.out.println(user.getName());
        }

    }


}

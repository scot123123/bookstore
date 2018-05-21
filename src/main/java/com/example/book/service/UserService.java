package com.example.book.service;

import com.example.book.dao.UserMapper;
import com.example.book.entiy.User;
import org.apache.maven.shared.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by hewenlong on 2018/5/19.
 */
@Service
@ComponentScan("com.example.book.dao")
public class UserService {
    @Autowired
    private UserMapper<User> userMapper;

    public List<User> findAll() {
        return userMapper.findAll();
    }

    public void save(User user) {
        userMapper.save(user);
    }

    //查询对象通过id值
    public User getUserById(User user){
        if(user!=null){
            return userMapper.getUserById(user);
        }
        return null;
    }

}

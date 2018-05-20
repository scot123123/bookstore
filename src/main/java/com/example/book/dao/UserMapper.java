package com.example.book.dao;

import com.example.book.entiy.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by hewenlong on 2018/5/19.
 */
@Component
@Mapper
public interface UserMapper<T> {
    //    @Select("select id,name,password from user")
    List<User> findAll();

    //    @Insert("insert into user(name,password)values(#{name},#{password}")
    void save(T user);
}

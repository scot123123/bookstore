package com.example.book.dao;

import com.example.book.entiy.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * created by hewenlong  on 2018/5/25
 */
@Component
@Mapper
public interface MenuMapper<T> {
    List<Menu> findAll();

    T getMenuById(@Param("id") String id);
}

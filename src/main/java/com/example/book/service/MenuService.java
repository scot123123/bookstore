package com.example.book.service;

import com.example.book.dao.MenuMapper;
import com.example.book.entiy.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * created by hewenlong  on 2018/5/25
 */
@Service
public class MenuService {
    @Autowired
    private MenuMapper<Menu> menuMapper;

    public List<Menu> findAll(){
        return menuMapper.findAll();
    }

}

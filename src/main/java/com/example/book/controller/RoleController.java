package com.example.book.controller;

import com.example.book.entiy.RoleInfo;
import com.example.book.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * created by hewenlong  on 2018/5/24
 */
@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    public void save(RoleInfo roleInfo){

    }

}

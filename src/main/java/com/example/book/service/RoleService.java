package com.example.book.service;

import com.example.book.dao.RoleMapper;
import com.example.book.entiy.RoleInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * created by hewenlong  on 2018/5/24
 */
@Service
public class RoleService {
    @Autowired
    private RoleMapper<RoleInfo> roleMapper;

    /**
     * 通过角色名字查询返回角色对象
     * @param roleName
     * @return
     */
    public RoleInfo getRoleByName(String roleName){
        return roleMapper.getRoleByName(roleName);
    }
}

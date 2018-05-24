package com.example.book.dao;

import com.example.book.entiy.RoleInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * created by hewenlong  on 2018/5/24
 */
@Component
@Mapper
public interface RoleMapper<T> {
    List<RoleInfo> findAll();

    void save(T roleInfo);

    RoleInfo getRoleByName(@Param("roleName") String roleName);
}

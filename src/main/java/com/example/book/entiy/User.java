package com.example.book.entiy;

/**
 * 用户表
 * Created by hewenlong on 2018/5/19.
 */

public class User {

    private String id;
    /**
     * 用户名
     */
    private String name;
    /**
     * 密码
     */
    private String password;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}

package com.example.book.entiy;

import java.util.ArrayList;
import java.util.List;

/**
 * 菜单对应的实例
 * created by hewenlong  on 2018/5/25
 */
public class Menu {
    private String id;
    /**
     * 菜单的名字
     */
    private String name;
    /**
     * 菜单
     */
    private String parentId;
    /**
     * 排序
     */
    private String orderNum;
    /**
     * 菜单的路径
     */
    private String url;
    private List<Menu> children = new ArrayList<Menu>();

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }
}

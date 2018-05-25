package com.example.book.entiy;

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
     * 菜单的路径
     */
    private String url;

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
}

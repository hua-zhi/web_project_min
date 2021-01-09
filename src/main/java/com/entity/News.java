package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String title;
    private String content;
    private String author;
    private Date create_time;
    private Date update_time;

    public News() {
    }

    public News(int id, String title, String content, String author, Date create_time, Date update_time) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.author = author;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date creat_time) {
        this.create_time = creat_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }
}

package com.example.dao;

public class Res {
    private String id;
    private String content;

    public Res(String id, String content) {
        this.id = id;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Res{" +
                "id='" + id + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}

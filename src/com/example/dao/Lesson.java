package com.example.dao;

public class Lesson {
    private String id;
    private String chapterId;
    private String content;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getChapterId() {
        return chapterId;
    }

    public void setChapterId(String chapterId) {
        this.chapterId = chapterId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "课程{" +
                "id='" + id + '\'' +
                ", 章节一'" + chapterId + '\'' +
                ", 内容='" + content + '\'' +
                '}';
    }
}

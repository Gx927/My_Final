package com.example.dao;

public class Chapter {
    private String id;
    private String courseId;
    private String title;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "章节{" +
                "id='" + id + '\'' +
                ", 课程号='" + courseId + '\'' +
                ", 主题='" + title + '\'' +
                '}';
    }
}

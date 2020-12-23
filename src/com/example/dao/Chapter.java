package com.example.dao;

public class Chapter {
    private String chapterid;
    private String courseId;
    private String content;

    public String getChapterid() {
        return chapterid;
    }

    public void setChapterid(String chapterid) {
        this.chapterid = chapterid;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "章节{" +
                "id='" + chapterid + '\'' +
                ", 课程号='" + courseId + '\'' +
                ", 主题='" + content + '\'' +
                '}';
    }
}

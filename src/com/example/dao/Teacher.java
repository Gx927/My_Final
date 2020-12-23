package com.example.dao;

public class Teacher {
    private String teaName;
    private String courseTime;
    private String classRoom;

    public Teacher(String teaName, String courseTime, String classRoom) {
        this.teaName = teaName;
        this.courseTime = courseTime;
        this.classRoom = classRoom;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getCourseTime() {
        return courseTime;
    }

    public void setCourseTime(String courseTime) {
        this.courseTime = courseTime;
    }

    public String getClassRoom() {
        return classRoom;
    }

    public void setClassRoom(String classRoom) {
        this.classRoom = classRoom;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teaName='" + teaName + '\'' +
                ", courseTime='" + courseTime + '\'' +
                ", classRoom='" + classRoom + '\'' +
                '}';
    }
}

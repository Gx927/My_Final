package com.example.dao;

import com.example.dao.Student;
import com.example.dao.Teacher;

import java.util.List;

public interface InfoImpl {
    public Student getStuInfo(String account);
    public Teacher getTeaInfo();
    public int stuRegister(Student s);
    public Course getCourseInfo(String s);
    public List<Chapter> getChapterInfo(String s);
    public Lesson getLesson( Course c,Chapter d);
}

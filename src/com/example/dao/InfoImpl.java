package com.example.dao;

import com.example.dao.Student;
import com.example.dao.Teacher;

import java.util.List;

public interface InfoImpl {
    public Student getStuInfo(String account);
    public int stuRegister(Student s);
    public Course getCourseInfo(String s);
    public List<Chapter> getChapterInfo(String s);
    public Lesson getLesson( );
    public List<Teacher> getTeaInfo();
    public int addTrouble(Trouble trouble);
    public List<Res> getRes();
    public  List<Trouble> getTrouble();
    public int deleteNew(String s);
    public int updateNew(Trouble s);
}

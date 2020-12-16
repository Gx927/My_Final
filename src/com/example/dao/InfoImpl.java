package com.example.dao;

import com.example.dao.Student;
import com.example.dao.Teacher;

public interface InfoImpl {
    public Student getStuInfo(String account);
    public Teacher getTeaInfo();
    public int stuRegister(Student s);
}

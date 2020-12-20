package com.example.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.example.dao.Chapter;
import com.example.dao.Course;
import com.example.dao.InfoImpl;
import javax.annotation.Resource;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.Student;
import com.mysql.cj.x.protobuf.MysqlxDatatypes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class MyController {
    @Resource
    InfoImpl infoImpl;
    @RequestMapping(value = "/login" ,method = RequestMethod.POST)
    public String tologin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String name = request.getParameter("account");
        String pwd = request.getParameter("password");
        Student student = infoImpl.getStuInfo(name);
        String name_from_db = student.getAccount();
        String pwd_from_db = student.getPassword();
        System.out.println(student);
        if (name_from_db.equals(name) && pwd_from_db.equals(pwd)) {//login success
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
            return "main";
        }
        return "login";}
         @RequestMapping(value = "/register",method = RequestMethod.POST)
        public String register (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            // TODO Auto-generated method stub
             request.setCharacterEncoding("utf-8");
             response.setContentType("text/html; charset=UTF-8");
             response.setCharacterEncoding("utf-8");

            String id =request.getParameter("id");
            String stuName = request.getParameter("stuName");
            String account = request.getParameter("account");
            String password = request.getParameter("password");
            Student b = new Student();
            b.setId(id);
            b.setStuName(stuName);
            b.setAccount(account);
            b.setPassword(password);
             System.out.println(b);
            int ret=infoImpl.stuRegister(b);
             if(ret>=0) {
                 System.out.println("注册成功");
                 return "main";
             }
            System.out.println(b);
            PrintWriter out = response.getWriter();
            out.println("<font color=black>" + b.toString() + "</font>");
            return "register";
        }
        @RequestMapping(value = "/Course",method = RequestMethod.POST)
    public String selecetCourse(HttpServletRequest request, HttpServletResponse response, Model model){
        String courseName=request.getParameter("coursename");
        List<Chapter> chapter =infoImpl.getChapterInfo(courseName);
        model.addAttribute("cour",chapter);
        return "course";
    }

    @RequestMapping(value = "/Lesson")
    public String selecetLesson(HttpServletRequest request, HttpServletResponse response, Model model){
        String courseName=request.getParameter("coursename");
        List<Chapter> chapter =infoImpl.getChapterInfo(courseName);
        model.addAttribute("cour",chapter);
        return "course";
    }

    }

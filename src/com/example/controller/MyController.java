package com.example.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.example.dao.*;

import javax.annotation.Resource;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        @RequestMapping(value = "/Chapter",method = RequestMethod.POST)
    public String selecetCourse(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("utf-8");
        String courseName=request.getParameter("coursename");
        List<Chapter> chapter =infoImpl.getChapterInfo(courseName);
        model.addAttribute("chapter",chapter);
           /* String chaptername =request.getParameter("tolesson1");
            System.out.println(chaptername);
            Lesson lessons =infoImpl.getLesson(chaptername);
            model.addAttribute("lesson",lessons);*/

        return "chapter";
    }

    @RequestMapping(value = "/Lesson" )
    public String selecetLesson(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {


        Lesson lessons =infoImpl.getLesson();
        model.addAttribute("lesson",lessons);
        return "lesson";
    }
    @RequestMapping(value = "/teacher" )
    public String getTea(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {


        List<Teacher> teachers =infoImpl.getTeaInfo();
        model.addAttribute("tea",teachers);
        return "toclass";
    }
    @RequestMapping(value = "/addcomment" ,method = RequestMethod.POST )
    public String addcomment(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");

        String bugname = request.getParameter("id");
        String[] bianyi=request.getParameterValues("gettype");
        String bianyi1=bianyi[0];
        Trouble trouble =new Trouble("1",bugname,bianyi1);
        System.out.println(trouble);
       int ret=infoImpl.addTrouble(trouble);
        if (ret>0){
            System.out.println("ok");
        }

        return "addcomment";
    }
    @RequestMapping(value = "/res" )
    public String getRes(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {


        List<Res> res =infoImpl.getRes();
        model.addAttribute("res",res);
        return "look";
    }
    @RequestMapping(value = "/new" )
    public String getnew(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {


        List<Trouble> trouble =infoImpl.getTrouble();
        model.addAttribute("tour",trouble);
        System.out.println(trouble);
        return "new";
    }

    @RequestMapping(value = "/delete" ,method = RequestMethod.GET )
    public String deletenew(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {
        List<Trouble> trouble =infoImpl.getTrouble();
        model.addAttribute("tour",trouble);
        String name=trouble.get(0).getContent();
        System.out.println(trouble.get(0).getContent());
        int ret=infoImpl.deleteNew(name);
        if (ret>0)
            System.out.println("Bug删除成功！");
        return "new";
    }
    @RequestMapping(value = "/update" ,method = RequestMethod.POST )
    public String updatenew(HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("utf-8");

        String bugname = request.getParameter("id");
        String[] bianyi=request.getParameterValues("gettype");
        String bianyi1=bianyi[0];
        Trouble trouble =new Trouble("1",bugname,bianyi1);
        int ret =infoImpl.updateNew(trouble);
        if (ret>0)
            System.out.println("Bug修改成功！");
        return "new";
    }

    }

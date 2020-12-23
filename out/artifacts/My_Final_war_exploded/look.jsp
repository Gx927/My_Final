<%--
  Created by IntelliJ IDEA.
  User: Gx-02
  Date: 2020/12/10
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>

<head>
    <title>讨论池</title>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="./css/css.css" />
</head>

<body>
<script>
    function skipregister() {
        window.location.href = '${pageContext.request.contextPath }/register.jsp';
    }
</script>
<script>
    function login() {
        window.location.href = '${pageContext.request.contextPath }/login';
    }
    function skiprhalo() {
        window.location.href = 'http://www.tfswufe.top:8090/admin/index.html#/user/profile';
    }
    function cengke() {
        window.location.href = '${pageContext.request.contextPath }/teacher';
    }
    function fenxiang() {
        window.location.href = '${pageContext.request.contextPath }/addcomment.jsp';
    }
    function tomost() {
        window.location.href = '${pageContext.request.contextPath }/res';
    }
    function tonew() {
        window.location.href = '${pageContext.request.contextPath }/new';
    }
    function skiprhalo() {
        window.location.href = 'http://www.tfswufe.top:8090/admin/index.html#/user/profile';
    }
    function cengke() {
        window.location.href = '${pageContext.request.contextPath }/teacher';
    }
    function pinglun() {
        window.location.href = '${pageContext.request.contextPath }/comment.jsp';
    }

</script>
<div id="yi">

</div>
<div id="yi_01">
    <h1>e·起学Java</h1>

    <input class="input_3" type="button" value="线上" />
    <input class="input_3" type="button" onclick="skipregister()" value="线下" />

</div>
<div id="zuo">

</div>
<div id="zuo_01">
    <li id="anniu1"><a href="${pageContext.request.contextPath }/chapter.jsp"><input class="input_4" type="button" value="在线学习平台" />
    </a></li>
    <li id="anniu2"> <input class="input_3" type="button" value="讨论池" /></li>
    <li id="anniu3"> <input class="input_3" type="button" onclick="cengke()" value="蹭课表" /></li>
</div>
<div id="zuo2">

</div>
<div id="zuo2_01">
    <li id="anniu4"> <input class="input_3" type="button" onclick="skiprhalo()" value="个人中心" /></li>
    <li id="anniu5"> <input class="input_3" type="button" value="退出" /></li>
</div>
<div id="you">

</div>
<div id="you_01">
   <%-- <h1>在线学习平台</h1>
    <li id="anniu_chaxun1"> <input class="input_chaxun1" id="username" size="15" name="coursename"></li>
    <li id="anniu_chaxun2"> <input class="input_chaxun2" type="button" value="查询课程" /></li>


    <div id="you_02">

        <li id="info1">1</li>
        <li id="info2">2</li>

    </div>
    <div id="you_03">

        <li id="info3">1</li>
        <li id="info4">2</li>

    </div>--%>

           <h1>讨论池</h1>
       <input class=input_4 type="button" onclick="tomost()" value="查看热帖" />
       <input class=input_4 type="button" onclick="tonew()" value="最新发布" />

        <div id="troubles">
            <a href="https://blog.csdn.net/u012410733/article/details/72567195?ops_request_misc=%25257B%252522request%25255Fid%252522%25253A%252522160872221816780258051639%252522%25252C%252522scm%252522%25253A%25252220140713.130102334..%252522%25257D&request_id=160872221816780258051639&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~baidu_landing_v2~default-6-72567195.first_rank_v2_pc_rank_v29&utm_term=JavaEE"><li><p>${res[0]}</p></li></a>
            <a href="https://blog.csdn.net/Sakuraaaaaaa/article/details/104219898?ops_request_misc=%25257B%252522request%25255Fid%252522%25253A%252522160872221816780258085985%252522%25252C%252522scm%252522%25253A%25252220140713.130102334.pc%25255Fall.%252522%25257D&request_id=160872221816780258085985&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~first_rank_v2~rank_v29-13-104219898.first_rank_v2_pc_rank_v29&utm_term=JavaEE"><li><p>${res[1]}</p></li></a>
            <a href="https://blog.csdn.net/qq_43567709/article/details/108718311?ops_request_misc=%25257B%252522request%25255Fid%252522%25253A%252522160872221816780258085985%252522%25252C%252522scm%252522%25253A%25252220140713.130102334.pc%25255Fall.%252522%25257D&request_id=160872221816780258085985&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~first_rank_v2~rank_v29-21-108718311.first_rank_v2_pc_rank_v29&utm_term=JavaEE"><li><p>${res[2]}</p></li></a>
            <a href="https://blog.csdn.net/weixin_45876508/article/details/103058414?ops_request_misc=%25257B%252522request%25255Fid%252522%25253A%252522160872221816780258085985%252522%25252C%252522scm%252522%25253A%25252220140713.130102334.pc%25255Fall.%252522%25257D&request_id=160872221816780258085985&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~first_rank_v2~rank_v29-22-103058414.first_rank_v2_pc_rank_v29&utm_term=JavaEE"><li><p>${res[3]}</p></li></a>
            <a href="https://download.csdn.net/download/qq_21355765/11088521?ops_request_misc=%25257B%252522request%25255Fid%252522%25253A%252522160872221816780258085985%252522%25252C%252522scm%252522%25253A%25252220140713.130102334.pc%25255Fall.%252522%25257D&request_id=160872221816780258085985&biz_id=1&utm_medium=distribute.pc_search_result.none-task-download-2~all~first_rank_v2~rank_v29-27-11088521.first_rank_v2_pc_rank_v29&utm_term=JavaEE"><li><p>${res[4]}</p></li></a>
        </div>



</div>

<script type="text/javascript" src="./js/script.js"></script>
</body>

</html>
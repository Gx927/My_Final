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
    <title>登录界面</title>
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
</script>
<div id="yi">

</div>
<div id="yi_01">
    <h1>e</h1>

    <input class="input_3" type="button" value="线上" />
    <input class="input_3" type="button" onclick="skipregister()" value="线下" />

</div>
<div id="zuo">

</div>
<div id="zuo_01">
    <li id="anniu1"> <input class="input_4" type="button" value="在线学习平台" /></li>
    <li id="anniu2"> <input class="input_3" type="button" value="讨论池" /></li>
    <li id="anniu3"> <input class="input_3" type="button" value="蹭课表" /></li>
</div>
<div id="zuo2">

</div>
<div id="zuo2_01">
    <li id="anniu4"> <input class="input_3" type="button" value="个人中心" /></li>
    <li id="anniu5"> <input class="input_3" type="button" value="退出" /></li>
</div>
<div id="you">

</div>
<div id="you_01">
    <h1>在线学习平台</h1>
    <form action="/Course"  method="post">
    <li id="anniu_chaxun1"> <input class="input_chaxun1" id="username" size="15" name="coursename"></li>
    <li id="anniu_chaxun2"> <input class="input_chaxun2" type="submit" value="查询课程" /></li>
    </form>

    <div id="you_02">

        <a href="${pageContext.request.contextPath }/Lesson" ><li id="info1"><p name="">${cour[0].title}</p></li></a>
        <a href="${pageContext.request.contextPath }/Lesson"> <li id="info1"><p>${cour[1].title}</p></li></a>
        <a href="${pageContext.request.contextPath }/Lesson"><li id="info1"><p>${cour[2].title}</p></li></a>
        <a href="${pageContext.request.contextPath }/Lesson"><li id="info1"><p>${cour[3].title}</p></li></a>
        <a href="${pageContext.request.contextPath }/Lesson"> <li id="info1"><p>${cour[4].title}</p></li></a>


    </div>
    <div id="you_03">



    </div>
</div>

<script type="text/javascript" src="./js/script.js"></script>
</body>

</html>
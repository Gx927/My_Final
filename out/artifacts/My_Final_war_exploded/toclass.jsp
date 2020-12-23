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
    <title>蹭课啦</title>
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
    <li id="anniu2"> <input class="input_3" type="button" onclick="pinglun()" value="讨论池" /></li>
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
    <table border="1" id="table">
        <tr style="height: 30px">
            <th>任课教师</th>
            <th>上课时间</th>
            <th>教室地点</th>
        </tr>
       <tr style="height: 40px">
        <td>${tea[0].teaName}</td>
        <td>${tea[0].courseTime}</td>
        <td>${tea[0].classRoom}</td>
    </tr>
        <tr style="height: 40px">
            <td>${tea[1].teaName}</td>
            <td>${tea[1].courseTime}</td>
            <td>${tea[1].classRoom}</td>
        </tr>
        <tr style="height: 40px">
            <td>${tea[2].teaName}</td>
            <td>${tea[2].courseTime}</td>
            <td>${tea[2].classRoom}</td>
        </tr>
    </table>

</div>

<script type="text/javascript" src="./js/script.js"></script>
</body>

</html>
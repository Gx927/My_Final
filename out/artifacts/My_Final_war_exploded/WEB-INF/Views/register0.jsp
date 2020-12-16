<%--
  Created by IntelliJ IDEA.
  User: Gx-02
  Date: 2020/12/10
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css.css" />
</head>
<body>
<script>  function skipregister() {
    window.location.href='${pageContext.request.contextPath }/register';
}</script>
<form name="form1"  method="post">

    <h1>E起学Java系统</h1>
    <h3>新用户注册</h3>
    <input class=input_1 id=id size=15  name="username"  placeholder=学号><br />
    <input class=input_1 id=stuName size=15  name="username"  placeholder=姓名><br />
    <input class=input_1 id=username size=15  name="username"  placeholder=用户名><br />
    <input class=input_1 id=password type=text size=15 name="password" placeholder=密码><br />

    <span class="radio_box">
               <input type="radio" id="radio_1" name="gettype" value="users" checked>
               <label for="radio_1"></label>
              学生
        	</span>
    <span class="radio_box">
               <input type="radio" id="radio_2" name="gettype" value="admin">
               <label for="radio_2"></label>
               教师
       		</span><br/>
    <input class=input_3 type="button" onclick="skipregister()" value="注册" />

</form>
<script type="text/javascript" src="script.js"></script>
</body>
</html>

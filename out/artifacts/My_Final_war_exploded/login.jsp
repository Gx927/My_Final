<%--
  Created by IntelliJ IDEA.
  User: Gx-02
  Date: 2020/12/10
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<link href="<%=basePath%>/css.css" rel="stylesheet" type="text/css" />--%>
<html>
<head>
    <title>登录界面</title>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/css.css" />
</head>
<body>
<script>  function skipregister() {
    window.location.href='${pageContext.request.contextPath }/register.jsp';
}</script>
<script>  function login() {
    window.location.href='${pageContext.request.contextPath }/login';
}</script>
<form name="form1" id="form1" action="/login"  method="post">
    <h1>e·起学Java系统</h1>
    <input class="input_1" id="username" size="15"  name="account"  placeholder="用户名"><br />
    <input class="input_1" id="password" type="text" size="15" name="password" placeholder="密码"><br />

    <span class="radio_box">
               <input type="radio" id="radio_1" name="gettype" value="users" checked>
               <label for="radio_1"></label>
              学生
        	</span>
    <span class="radio_box">
               <input type="radio" id="radio_2" name="gettype" value="admin">
               <label for="radio_2"></label>
               教师
       		</span>
    <span class="radio_box">
               <input type="radio" id="radio_3" name="gettype" value="users">
               <label for="radio_1"></label>
              管理员
        	</span><br/>
    <input class="input_3" type="submit"   value="登录" />
     <input class="input_3" type="button" onclick="skipregister()" value="注册" />
    <input class="input_3" type="button"  onclick=document.form1.reset() value="重置" />
</form>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>

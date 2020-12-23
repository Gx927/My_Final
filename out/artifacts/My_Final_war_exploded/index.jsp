<%--
  Created by IntelliJ IDEA.
  User: Gx-02
  Date: 2020/12/10
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>初始界面</title>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/css.css" />
</head>
<body>
<form name="form1" id="form1" method="post">
    <script>  function skiplogin() {
        window.location.href='${pageContext.request.contextPath }/login.jsp';

    }

    </script>
    <h1>e·起学Java系统</h1>


    <br/>

    <input class=input_3 type="button" onclick="skiplogin()" value="探索" />

</form>
<script type="text/javascript" src="js/script.js">

</script>
</body>
</html>

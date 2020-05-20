<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>欢迎来到登录页面</title>
    <script rel="stylesheet" src="static/css/bootstrap.css"></script>
  </head>
  <body>
  <form action="LoginServlet" method="post">
    账号：<input name="adminId">
    密码：<input name="passWd">
    <input type="submit" value="登录">
  </form>

  </body>
</html>

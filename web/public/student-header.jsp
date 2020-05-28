<%--
  Created by IntelliJ IDEA.
  User: 73630
  Date: 2020/5/20
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
    <link rel="stylesheet" href="../../static/css/bootstrap-theme.css"/>
    <script src="../pages/teacher/JS/HeaderChose.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul id="headnav" class="nav navbar-nav" style="margin: 0 auto;width: 40%;float: none;">
                <li id="myinfo"><a href="../student/myinfo.jsp">个人信息</a></li>
                <li id="home"><a href="../student/home.jsp">我的主页</a></li>
                <li id="classname"><a href="../student/coursedetail.jsp">我的课程</a></li>
                <li id="data"><a href="../student/databank.jsp">教学资源</a></li>
<%--                <li id="course"><a href="../teacher/Course.jsp">课程</a></li>--%>
                <li id="sign"><a href="../student/studentsign.jsp">签到</a></li>
<%--                <li id="signinformation"><a href="../teacher/SignInformation.jsp">签到详情</a></li>--%>
                <li id="live"><a href="../student/view.jsp">直播</a></li>
            </ul>
            <a href="../../index.jsp" style="float: right;">退出登录</a>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</body>
</html>

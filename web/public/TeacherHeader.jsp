<%--
  Created by IntelliJ IDEA.
  User: 11322
  Date: 2020/5/20
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
    <script src="./JS/HeaderChose.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul id="headnav" class="nav navbar-nav" style="margin: 0 auto;width: 65%;float: none;">
                    <a class="navbar-brand">名字</a>
                    <li id="home"><a href="../teacher/Home.jsp">主页</a></li>
                    <li id="classname"><a href="../teacher/Class.jsp">班级详情</a></li>
                    <li id="data"><a href="../teacher/Data.jsp">教学资源</a></li>
                    <li id="newdata"><a href="../teacher/NewData.jsp">上传资源</a></li>
                    <li id="course"><a href="../teacher/Course.jsp">课程</a></li>
                    <li id="newcourse"><a href="../teacher/NewCourse.jsp">新建课程</a></li>
                    <li id="sign"><a href="../teacher/Sign.jsp">签到</a></li>
                    <li id="signinformation"><a href="../teacher/SignInformation.jsp">签到详情</a></li>
                    <li id="live"><a href="../teacher/Live.jsp">直播</a></li>
                    <li id="myinfo"><a href="../teacher/MyInfo.jsp">个人中心</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</body>
</html>

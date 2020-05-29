<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/Course.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">课程</div>
            <div class="more">
                <a href="./NewCourse.jsp">新建课程</a>
            </div>
        </div>
        <div class="course">
            <img src="static/image/Course.png" alt=""/>
            <div class="courseuse">
                <a href="#" class="enter">进入课程</a>
                <a href="#" class="delete">删除</a>
            </div>
        </div>
        <div class="course">
            <img src="static/image/Course.png" alt=""/>
            <div class="courseuse">
                <a href="#" class="enter">进入课程</a>
                <a href="#" class="delete">删除</a>
            </div>
        </div>
        <div class="course">
            <img src="static/image/Course.png" alt=""/>
            <div class="courseuse">
                <a href="#" class="enter">进入课程</a>
                <a href="#" class="delete">删除</a>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Course</span>
</body>
</html>

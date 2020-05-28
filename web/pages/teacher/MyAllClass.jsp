<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/MyAllClass.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">本人所有班级</div>
        </div>
        <div class="classes">
            <a href="pages/teacher/Class.jsp">
                <div class="classess" style="margin-top: 0;">
                    <span></span>
                    <p class="tz">班级1</p>
                </div>
            </a>
            <a href="pages/teacher/Class.jsp">
                <div class="classess">
                    <span></span>
                    <p class="tz">班级2</p>
                </div>
            </a>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">MyAllClass</span>
</body>
</html>
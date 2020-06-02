<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/SignInformation.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="plan">
        <div class="plan_main" style="display: block;">
            <div class="main_part">
                <div class="main_part_top">
                    <div class="kj">${requestScope.beanByCourseId.courseName}</div>
                </div>
                <c:forEach items="${requestScope.beanListByCourseId}" var="item">
                    <div class="classes">
                        <a href="TeacherServlet?method=getClass&classId=${item.classId}">
                            <div class="classess" style="margin-top: 0;">
                                <span></span>
                                <p class="tz">${item.className}</p>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">CourseClass</span>
</body>
</html>

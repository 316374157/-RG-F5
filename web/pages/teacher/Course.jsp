<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/Course.css">
    <script type="text/javascript">
        $(function () {
            $(".delete").click(function () {
                if(!confirm("是否删除这个课程？")){
                    return false;
                }
            })
        })

    </script>

</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
    <div class="main">
        <div class="main_part">
            <div class="main_part_top">
                <div class="kj">课程</div>
                <div class="more">
                    <a href="pages/teacher/NewCourse.jsp">新建课程</a>
                </div>
            </div>
            <c:if test="${!empty sessionScope.teacher.courseId1}">
                <div class="course">
                    <img src="static/image/Course.png" alt=""/>
                    <div class="courseuse">
                        <a href="#" class="enter">进入课程</a>
                        <a href="TeacherServlet?method=updateCourse&courseId1=${sessionScope.teacher.courseId1}" class="delete">删除</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${!empty sessionScope.teacher.courseId2}">
                <div class="course">
                    <img src="static/image/Course.png" alt=""/>
                    <div class="courseuse">
                        <a href="#" class="enter">进入课程</a>
                        <a href="TeacherServlet?method=updateCourse&courseId2=${sessionScope.teacher.courseId2}" class="delete">删除</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${!empty sessionScope.teacher.courseId3}">
                <div class="course">
                    <img src="static/image/Course.png" alt=""/>
                    <div class="courseuse">
                        <a href="#" class="enter">进入课程</a>
                        <a href="TeacherServlet?method=updateCourse&courseId3=${sessionScope.teacher.courseId3}" class="delete">删除</a>
                    </div>
                </div>
            </c:if>


        </div>
    </div>
    <tbody>
    <c:forEach items="${requestScope.beanListByClassId}" var="item">
        <tr>
            <td>${item.username}</td><td>${item.studentName}</td><td>${item.sex}</td>
        </tr>
    </c:forEach>
    </tbody>
    <div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Course</span>
</body>
</html>

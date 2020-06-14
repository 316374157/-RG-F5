<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/ChangeInfo.css">
</head>
<body>
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">教师信息</div>
        </div>
        <div class="main_part_nav">
            <ul>
                <form action="TeacherServlet" method="post">
                    <li>
                        <a style="display: block;float: left;width: 70px;">课程一：</a>
                        <select name="courseId1">
                            <c:if test="${sessionScope.teacher.courseId1==null || sessionScope.teacher.courseId1==''}">
                                <option value="" selected>当前无课程</option>
                            </c:if>
                            <c:forEach items="${requestScope.beanListAll}" var="item">
                                <c:if test="${item.courseId==sessionScope.teacher.courseId1}">
                                    <option value="${item.courseId}" selected>${item.courseName}</option>
                                </c:if>
                                <c:if test="${item.courseId!=sessionScope.teacher.courseId1}">
                                    <option value="${item.courseId}">${item.courseName}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </li>
                    <li>
                        <a style="display: block;float: left;width: 70px;">课程二：</a>
                        <select name="courseId2">
                            <c:if test="${sessionScope.teacher.courseId2==null || sessionScope.teacher.courseId2==''}">
                                <option value="" selected>当前无课程</option>
                            </c:if>
                            <c:forEach items="${requestScope.beanListAll}" var="item">
                                <c:if test="${item.courseId==sessionScope.teacher.courseId2}">
                                    <option value="${item.courseId}" selected>${item.courseName}</option>
                                </c:if>
                                <c:if test="${item.courseId!=sessionScope.teacher.courseId2}">
                                    <option value="${item.courseId}">${item.courseName}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </li>
                    <li>
                        <a style="display: block;float: left;width: 70px;">课程三：</a>
                        <select name="courseId3">
                            <c:if test="${sessionScope.teacher.courseId3==null || sessionScope.teacher.courseId3==''}">
                                <option value="" selected>当前无课程</option>
                            </c:if>
                            <c:forEach items="${requestScope.beanListAll}" var="item">
                                <c:if test="${item.courseId==sessionScope.teacher.courseId3}">
                                    <option value="${item.courseId}" selected>${item.courseName}</option>
                                </c:if>
                                <c:if test="${item.courseId!=sessionScope.teacher.courseId3}">
                                    <option value="${item.courseId}">${item.courseName}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </li>
                    <input style="margin-left: 100px;" type="submit" value="提交"/>
                </form>
            </ul>
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
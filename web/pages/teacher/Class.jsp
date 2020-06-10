
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/Class.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
    <div class="main">
        <div class="main_part">
            <div class="main_part_top">
                <div class="kj">${requestScope.beanByClassId.className}</div>
            </div>
            <div class="main_part_nav">
                <table class="classes">
                    <thead>
                    <tr>
                        <th scope="col">学号</th>
                        <th scope="col">姓名</th>
                        <th scope="col">性别</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${requestScope.beanListByClassId}" var="item">
                    <tr>
                        <td>${item.username}</td><td>${item.studentName}</td><td>${item.sex}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
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

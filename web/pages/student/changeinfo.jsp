<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/ChangeInfo.css">
    <link rel="stylesheet" href="static/css/bootstrap.css"/>
    <script src="static/js/HeaderChose.js"></script>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">修改信息</div>
        </div>
        <div class="main_part_nav">
            <ul>
                <form action="StudentServlet" method="post">
                    <input name="method" value="update" readonly hidden>
                    <input name="id" value="${sessionScope.student.id}" readonly hidden>
                    <input name="classId" value="${sessionScope.student.classId}" readonly hidden>
                    <input name="username" value="${sessionScope.student.username}" readonly hidden>
                    <li>
                        <a>姓名：</a><input type="text" placeholder="name" name="studentName" value=${sessionScope.student.studentName}>
                    </li>
                    <li>
                        <a>性别：</a><input type="text" placeholder="gender" name="sex" value=${sessionScope.student.sex}>
                    </li>
                    <li>
                        <a>密码：</a><input type="password" placeholder="password" name="passWd" value=${sessionScope.student.passWd}>
                    </li>
                    <input style="margin-left: 100px;" type="submit" value="提交" />
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
<span id="Only" style="display: none;">ChangeInfo</span>
</body>
</html>

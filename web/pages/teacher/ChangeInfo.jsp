
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/ChangeInfo.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">修改信息</div>
        </div>
        <div class="main_part_nav">
            <ul>
                <form action="TeacherServlet" method="post">
                    <li>
                        <label>用户名：</label><input type="text" readonly="readonly" placeholder="name" name="username" value=${sessionScope.teacher.username}>
                    </li>
                    <li>
                        <label>姓名：</label><input type="text" placeholder="name" name="teachername" value=${sessionScope.teacher.teacherName}>
                    </li>
                    <li>
                        <label>性别：</label><input type="text" placeholder="gender" name="gender" value=${sessionScope.teacher.sex}>
                    </li>
                    <li>
                        <label>密码：</label><input type="password" placeholder="password" name="password" value=${sessionScope.teacher.passWd}>
                    </li>
                    <input type="hidden" name="id" value=${sessionScope.teacher.id}>
                    <input type="hidden" name="method" value="changeTeacher">
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
<span id="Only" style="display: none;">MyInfo</span>
</body>
</html>


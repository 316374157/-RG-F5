<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../static/css/Clean.css">
    <link rel="stylesheet" href="../../static/css/ChangeInfo.css">
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
    <script src="../../static/js/HeaderChose.js"></script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">课程信息</div>
        </div>
        <div class="main_part_nav">
            <ul>
                <form action="" method="post">
                    <li>
                        <a style="display: block;float: left;width: 70px;">课程名称：</a><input type="text" placeholder="" />
                    </li>
                    <li>
                        <a style="display: block;float: left;width: 70px;">学分：</a><input type="text" placeholder="" />
                    </li>
                    <li>
                        <a style="display: block;float: left;width: 70px;">课程简介：</a><input type="text" placeholder="" />
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
<span id="Only" style="display: none;">NewCourse</span>
</body>
</html>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>管理员界面</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Home.css">
</head>
<body>
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
    <div class="main_part" style="padding-left: 30px;padding-right: 30px;width: 100%;">
        <div class="main_part_top">
            <div class="kj">管理信息</div>
        </div>
        <div class="but">
            <a href="javascript:void(0)">
                <div class="aaa">
                    <p class="tz">修改密码</p>
                </div>
            </a>
        </div>
        <div class="but">
            <a href="javascript:void(0)">
                <div class="aaa">
                    <p class="tz">班级</p>
                </div>
            </a>
        </div>
        <div class="but">
            <a href="javascript:void(0)">
                <div class="aaa">
                    <p class="tz">课程</p>
                </div>
            </a>
        </div>
        <div class="but">
            <a href="javascript:void(0)">
                <div class="aaa">
                    <p class="tz">老师</p>
                </div>
            </a>
        </div>
        <div class="but">
            <a href="javascript:void(0)">
                <div class="aaa">
                    <p class="tz">签到</p>
                </div>
            </a>
        </div>
        <div class="but">
            <a href="javascript:void(0)">
                <div class="aaa">
                    <p class="tz">学生</p>
                </div>
            </a>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright  ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Home</span>
</body>
</html>

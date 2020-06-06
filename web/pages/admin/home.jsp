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
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">管理信息</div>
        </div>
        <div class="main_part" style="float: top;border: none;margin-bottom: 0;">
            <div class="sign">
                <a href="WEB-INF/index.jsp">
                    <div class="courses">
                        <p class="tz">登出</p>
                    </div>
                </a>
            </div>
            <div class="signInfo">
                <a href="***">
                    <div class="***">
                        <p class="tz">修改密码</p>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="main_part" style="float: right;">
        <div class="main_part_top">
            <div class="kj">签到</div>
            <div class="more">
                <a href="javascript:void(0)">MORE+</a>
            </div>
        </div>
    </div>
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">班级</div>
                <div class="more">
                    <a href="javascript:void(0)">MORE+</a>
                </div>
        </div>
    </div>
    <div class="main_part" style="float: right;">
        <div class="main_part_top">
            <div class="kj">课程</div>
                <div class="more">
                    <a href="javascript:void(0)">MORE+</a>
                </div>
        </div>
    </div>
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">教师</div>
            <div class="more">
                <a href="javascript:void(0)">MORE+</a>
            </div>
        </div>
    </div>
    <div class="main_part" style="float: right;">
        <div class="main_part_top">
            <div class="kj">学生</div>
            <div class="more">
                <a href="javascript:void(0)">MORE+</a>
            </div>
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

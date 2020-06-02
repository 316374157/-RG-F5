<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Home.css">
</head>
<body>
	<jsp:include page="../../public/TeacherHeader.jsp"/>
	<div class="main">
		<div class="main_part">
			<div class="main_part_top">
				<div class="kj">个人信息</div>
			</div>
			<div class="main_part_nav">
				<ul>
					<li>
						<a>姓名：${sessionScope.teacher.teacherName}</a>
					</li>
					<li>
						<a>性别：${sessionScope.teacher.sex}</a>
					</li>
				</ul>
			</div>
		</div>
        <div class="main_part" style="float: right;border: none;margin-bottom: 0;">
            <div class="sign">
                <a href="javascript:void(0)">
                    <div class="courses">
                        <p class="tz">签到</p>
                    </div>
                </a>
            </div>
            <div class="signInfo">
                <a href="SignServlet?method=getAllSignInfo">
                    <div class="courses">
                        <p class="tz">签到详情</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="main_part">
            <div class="main_part_top">
                <div class="kj">课程</div>
                <div class="more">
                    <a href="javascript:void(0)">MORE+</a>
                </div>
            </div>
            <div class="classes">
                <a href="javascript:void(0)">
                    <div class="classess" style="margin-top: 0;">
                        <span></span>
                        <div class="tz">班级1</div>
                    </div>
                </a>
                <a href="javascript:void(0)">
                    <div class="classess">
                        <span></span>
                        <div class="tz">班级2</div>
                    </div>
                </a>
                <a href="javascript:void(0)">
                    <div class="classess" style="margin-top: 0;">
                        <span></span>
                        <div class="tz">班级3</div>
                    </div>
                </a>
            </div>
        </div>
        <div class="main_part" style="float: right;">
            <div class="main_part_top">
                <div class="kj">课程</div>
                <div class="more">
                    <a href="javascript:void(0)">MORE+</a>
                </div>
            </div>
            <div class="course">
                <a href="javascript:void(0)">
                    <div class="courses" style="margin-top: 0;">
                        <span></span>
                        <div class="tz">课程1</div>
                    </div>
                </a>
                <a href="javascript:void(0)">
                    <div class="courses">
                        <span></span>
                        <div class="tz">课程2</div>
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
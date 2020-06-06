
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
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
	<div class="plan">
		<div class="plan_title">
			<p>签到信息</p>
		</div>
		<div class="plan_nav1">
			<ul>
				<li>
					<div class="plan_nav1_part"><p>${requestScope.beanByCourseId1.courseName}</p></div>
				</li>
				<li>
					<div class="plan_nav1_part"><p>${requestScope.beanByCourseId2.courseName}</p></div>
				</li>
				<li>
					<div class="plan_nav1_part"><p>${requestScope.beanByCourseId3.courseName}</p></div>
				</li>
			</ul>
		</div>
		<div class="plan_main">
			<div class="main_part">
				<div class="main_part_top">
					<div class="kj">该课程所有班级</div>
				</div>
				<c:forEach items="${requestScope.beanListByCourseId1}" var="item">
					<div class="classes">
						<a href="SignServlet?method=getSignInfo&courseId=${requestScope.beanByCourseId1.courseId}&classId=${item.classId}">
							<div class="classess" style="margin-top: 0;">
								<span></span>
								<p class="tz">${item.className}</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="plan_main">
			<div class="main_part">
				<div class="main_part_top">
					<div class="kj">该课程所有班级</div>
				</div>
				<c:forEach items="${requestScope.beanListByCourseId2}" var="item">
					<div class="classes">
						<a href="SignServlet?method=getSignInfo&courseId=${requestScope.beanByCourseId2.courseId}&classId=${item.classId}">
							<div class="classess" style="margin-top: 0;">
								<span></span>
								<p class="tz">${item.className}</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="plan_main">
			<div class="main_part">
				<div class="main_part_top">
					<div class="kj">该课程所有班级</div>
				</div>
				<c:forEach items="${requestScope.beanListByCourseId3}" var="item">
					<div class="classes">
						<a href="SignServlet?method=getSignInfo&courseId=${requestScope.beanByCourseId3.courseId}&classId=${item.classId}">
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
<span id="Only" style="display: none;">AllSignInfo</span>
<script>
    $(function () {
        if ($("td").text() == ""){
            this.remove();
        }
    })
    $('div.plan_nav1_part').mousemove(function () {
        var n = $("div.plan_nav1_part").index(this)
        console.log(n);
        $('div').parent().removeClass('dianji1');
        $('div').removeClass('dianji2');
        $('div.plan_main').css('display', 'none');
        $(this).parent().addClass('dianji1');
        $(this).addClass('dianji2');
        console.log($('.plan_main').eq(n).length);
        $('.plan_main').eq(n).css('display', 'block');
    })
</script>
</body>
</html>

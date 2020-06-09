
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
			<table class="table table-hover">
				<tr>
					<td>学号</td>
					<td>姓名</td>
					<td>班级</td>
					<td>课程</td>
					<td>第一次签到</td>
					<td>第二次签到</td>
					<td>第三次签到</td>
					<td>第四次签到</td>
					<td>第五次签到</td>
				</tr>

				<c:forEach items="${requestScope.signList}" var="item">
					<tr>
						<td>${item.studentId}</td>
						<td>${item.studentName}</td>
						<td>${requestScope.classMap.get(item.classId)}</td>
						<td>${requestScope.courseMap.get(item.classId)}</td>
						<td>${item.sign1}</td>
						<td>${item.sign2}</td>
						<td>${item.sign3}</td>
						<td>${item.sign4}</td>
						<td>${item.sign5}</td>
					</tr>
				</c:forEach>
			</table>
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

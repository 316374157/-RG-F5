
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
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">签到信息</div>
		</div>
			<table class="classes">
				<thead>
					<tr>
						<th scope="col" style="width: 12.5%;">学号</th>
						<th scope="col" style="width: 12.5%;">姓名</th>
						<th scope="col" style="width: 12.5%;">班级</th>
						<th scope="col" style="width: 12.5%;">课程</th>
						<th scope="col" style="width: 10%;">第一次签到</th>
						<th scope="col" style="width: 10%;">第二次签到</th>
						<th scope="col" style="width: 10%;">第三次签到</th>
						<th scope="col" style="width: 10%;">第四次签到</th>
						<th scope="col" style="width: 10%;">第五次签到</th>
					</tr>
				</thead>
				<c:forEach items="${requestScope.signList}" var="item">
				<tbody style="font-size: 14px;">
					<tr>
						<td style="width: 12.5%;">${item.studentId}</td>
						<td style="width: 12.5%;">${item.studentName}</td>
						<td style="width: 12.5%;">${requestScope.classMap.get(item.classId)}</td>
						<td style="width: 12.5%;">${requestScope.courseMap.get(item.classId)}</td>
						<td style="width: 10%;">${item.sign1}</td>
						<td style="width: 10%;">${item.sign2}</td>
						<td style="width: 10%;">${item.sign3}</td>
						<td style="width: 10%;">${item.sign4}</td>
						<td style="width: 10%;">${item.sign5}</td>
					</tr>
				</tbody>
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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>签到</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/classdetail.css">
	<script type="text/javascript">
		$(function () {
			const curWwwPath  = window.location.href;
			const pathName = window.location.pathname;
			const realPath = curWwwPath.substring(4,curWwwPath.indexOf(pathName))+pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
			let msg_socket = new WebSocket("ws"+realPath+"/InformServlet");

			let msg = '';
			msg_socket.onmessage = function(data){
				msg = data.data;
			}

			$("#signBtn").click(function () {
				msg = msg.split(',');
				const className = msg[0].substr(10)
				const courseName = msg[1].substr(11)
				const signId = msg[2].substr(7)
				const isSign = msg[3].substr(7)
				if(isSign ==="true"){
					alert("签到")
					$("#className").val(className)
					$("#courseName").val(courseName)
					$("#signId").attr("name",signId)
					$("#signId").val('是')
					$.ajax({
						url:"SignServlet?method=signStudent",
						type:'post',
						data:$("#signTb").serialize(),
						success:function (data) {
							alert(data)
						}
					})
				}
			})

		})
	</script>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">签到</div>
		</div>
		<div class="main_part_nav">
			<table class="classes" style="margin-bottom: 30px;">
				<thead>
				<tr>
					<th scope="col">学号</th>
					<th scope="col">姓名</th>
					<th scope="col">课程</th>
					<th scope="col">第一次签到</th>
					<th scope="col">第二次签到</th>
					<th scope="col">第三次签到</th>
					<th scope="col">第四次签到</th>
					<th scope="col">第五次签到</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${requestScope.signList}" var="item">
					<tr>
						<td>${item.studentId}</td>
						<td>${item.studentName}</td>
						<c:forEach items="${requestScope.courseList}" var="course">
							<c:if test="${course.courseId == item.courseId}">
								<td>${course.courseName}</td>
							</c:if>
						</c:forEach>
						<td>${item.sign1}</td>
						<td>${item.sign2}</td>
						<td>${item.sign3}</td>
						<td>${item.sign4}</td>
						<td>${item.sign5}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<button id="signBtn" style="margin-left: 50px;">签到</button>
			<form id="signTb">
				<input name="className" id="className" type="hidden">
				<input name="courseName" id="courseName" type="hidden">
				<input name="signId" id="signId" type="hidden">
			</form>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Sign</span>
</body>
</html>

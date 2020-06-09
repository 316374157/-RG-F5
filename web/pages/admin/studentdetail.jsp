
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
			<div class="kj">学生详情</div>
		</div>
		<div class="main_part_nav">
			<table class="classes">
				<thead>
				<tr>
					<th scope="col">学号</th>
					<th scope="col">姓名</th>
					<th scope="col">性别</th>
					<th scope="col">班级</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${requestScope.studentList}" var="item">
					<tr>
						<td>${item.username}</td>
						<td>${item.studentName}</td>
						<td>${item.sex}</td>
						<td>${requestScope.classMap.get(item.classId)}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Student</span>
</body>
</html>

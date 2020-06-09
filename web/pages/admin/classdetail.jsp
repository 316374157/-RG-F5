<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/classdetail.css">
</head>
<body>
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top" style="padding: 0 80px;">
			<div class="kj" style="width: 130px;">班级列表</div>
			<div class="more">
				<a href="ClassesServlet?method=toAddClass">增加班级</a>
			</div>
		</div>
		<div class="main_part_nav">
			<table class="classes">
				<thead>
				<tr>
					<th scope="col">班级编号</th>
					<th scope="col">班级名称</th>
					<th scope="col">课程</th>
					<th scope="col">课程</th>
					<th scope="col">课程</th>
					<th scope="col">课程</th>
					<th scope="col">课程</th>
					<th scope="col">操作</th>
				</tr>
				</thead>
				<tbody style="font-size: 14px;">
				<c:forEach items="${requestScope.classesList}" var="item">
					<tr>
						<td>${item.classId}</td>
						<td>${item.className}</td>
						<td>${requestScope.map.get(item.courseId1)}</td>
						<td>${requestScope.map.get(item.courseId2)}</td>
						<td>${requestScope.map.get(item.courseId3)}</td>
						<td>${requestScope.map.get(item.courseId4)}</td>
						<td>${requestScope.map.get(item.courseId5)}</td>
						<td><a href="ClassesServlet?method=getThisClass&classId=${item.classId}">修改</a></td>
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
<span id="Only" style="display: none;">MyAllClass</span>
</body>
</html>
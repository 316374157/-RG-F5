
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/coursemanager.css">
	<script type="text/javascript">
        $(function () {
            $(".delete").click(function () {
                if(!confirm("是否删除这个课程？")){
                    return false;
                }
            })
        })
	</script>

</head>
<body>
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top" style="padding: 0 80px;">
			<div class="kj" style="width: 130px;">课程</div>
			<div class="more">
				<a href="pages/admin/addcourse.jsp">新建课程</a>
			</div>
		</div>
		<table class="classes">
			<thead>
			<tr>
				<th scope="col" style="width: 12%;">课程编号</th>
				<th scope="col" style="width: 64%;">课程名称</th>
				<th scope="col" colspan="2" style="width: 24%">操作</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${requestScope.courseList}" var="item">
				<tr>
					<td style="width: 12%;">${item.courseId}</td>
					<td style="width: 64%;">${item.courseName}</td>
					<td style="width: 12%;"><a href="pages/admin/updatecourse.jsp?id=${item.courseId}&courseId=${item.courseId}&courseName=${item.courseName}">修改</a></td>
					<td style="width: 12%;"><a href="CourseServlet?method=delete&id=${item.id}" class="delete">删除</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Course</span>
</body>
</html>

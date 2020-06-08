
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Course.css">
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
		<div class="main_part_top">
			<div class="kj">课程</div>
			<div class="more">
				<a href="pages/admin/addcourse.jsp">新建课程</a>
			</div>
			<table class="table table-hover">
				<thead>
				<tr>
					<th scope="col">课程编号</th>
					<th scope="col">课程名称</th>
					<th scope="col">操作</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${requestScope.courseList}" var="item">
					<tr>
						<td>${item.courseId}</td>
						<td>${item.courseName}</td>
						<td><a href="">修改</a></td>
						<td><a href="">删除</a></td>
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
<span id="Only" style="display: none;">Course</span>
</body>
</html>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Class.css">
	<script type="text/javascript">
        $(function () {
            $(".delete").click(function () {
                if(!confirm("是否删除这个教师账号？")){
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
				<div class="kj">管理教师账号</div>
			</div>
            <div class="more">
                <a href="pages/admin/addteacher.jsp">新建教师</a>
            </div>
			<div class="main_part_nav">
				<table class="classes">
					<thead>
					<tr>
						<th scope="col">教师号</th>
						<th scope="col">姓名</th>
						<th scope="col">性别</th>
                        <th scope="col">课程</th>
					</tr>
					</thead>
					<tbody>
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

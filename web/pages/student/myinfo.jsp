<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>个人信息</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<table class="table table-bordered" style="width: 30%">
	<tr class="active">
		<td class="active" style="width: 20%">
			姓名
		</td>
		<td class="active">
			user1
		</td>
	</tr>
	<tr class="active">
		<td class="active" style="width: 20%">
			性别
		</td>
		<td class="active">
			男
		</td>
	</tr>
	<tr class="active">
		<td class="active"style="width: 20%">
			班级
		</td>
		<td class="active">
			软工
		</td>
	</tr>
</table>
</body>
</html>

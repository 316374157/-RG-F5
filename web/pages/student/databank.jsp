<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>资料库</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div style="position: absolute;width: 90%;height: 80%;left: 5%;right: 5%">
	<table class="table table-condensed">
		<!-- On rows -->
		<tr class="active">
			<td class="active">
				序号
			</td>
			<td class="success">
				文件名
			</td>
			<td class="warning">
				下载
			</td>
			<%--<td class="danger">

            </td>
            <td class="info">

            </td>--%>
		</tr>
		<tr class="success">
			<td class="active">
				1
			</td>
			<td class="success">
				第一节视频
			</td>
			<td class="warning">
				<a href="#">下载</a>
			</td>
		</tr>
		<tr class="warning">
			<td class="active">
				2
			</td>
			<td class="success">
				第二节视频
			</td>
			<td class="warning">
				<a href="#">下载</a>
			</td>
		</tr>
		<tr class="danger">
			<td class="active">
				3
			</td>
			<td class="success">
				第三节视频
			</td>
			<td class="warning">
				<a href="#">下载</a>
			</td>
		</tr>
		<tr class="info">
			<td class="active">
				4
			</td>
			<td class="success">
				第四节视频
			</td>
			<td class="warning">
				<a href="#">下载</a>
			</td>
		</tr>

	</table>
</div>
<%-- 翻页 --%>
	<nav aria-label="Page navigation" style="bottom: 0px;position:absolute;left: 40%">
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
				<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
</body>
</html>

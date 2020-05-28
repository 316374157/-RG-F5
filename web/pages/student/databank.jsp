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
	<link rel="stylesheet" href="../../static/css/Clean.css">
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
	<link rel="stylesheet" href="../../static/css/Data.css">
	<script src="../../static/js/HeaderChose.js"></script>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="menu">
		<ul class="nav nav-pills nav-stacked">
			<li role="presentation" class="active"><a href="#">软件工程</a></li>
			<ul class="nav nav-pills nav-stacked half" style="">
				<li role="presentation" class="active"><a href="#">课件</a></li>
				<li><a href="#">视频</a></li>
				<li><a href="#">文档</a></li>
			</ul>
			<li role="presentation"><a href="#">计算机网络</a></li>
			<ul class="nav nav-pills nav-stacked half" style="display: none;">
				<li role="presentation" class="active"><a href="#">课件</a></li>
				<li><a href="#">视频</a></li>
				<li><a href="#">文档</a></li>
			</ul>
			<li role="presentation"><a href="#">数据结构</a></li>
			<ul class="nav nav-pills nav-stacked half" style="display: none;">
				<li role="presentation" class="active"><a href="#">课件</a></li>
				<li><a href="#">视频</a></li>
				<li><a href="#">文档</a></li>
			</ul>
		</ul>
	</div>
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj"><a href="#">软件工程</a> >> <!--<a href="#">文档</a--></div>
			<div class="more">
				<a href="./#">上传文件</a>
			</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<li>
					<a href="./#">第一讲：XXX</a>
				</li>
				<li>
					<a href="./#">第二讲：XXX</a>
				</li>
				<li>
					<a href="./#">第三讲：XXX</a>
				</li>
				<li>
					<a href="./#">第四讲：XXX</a>
				</li>
				<li>
					<a href="./#">第五讲：XXX</a>
				</li>
				<li>
					<a href="./#">第六讲：XXX</a>
				</li>
				<li>
					<a href="./#">第七讲：XXX</a>
				</li>
				<li>
					<a href="./#">第八讲：XXX</a>
				</li>
			</ul>
		</div>
		<div class="main_part_nav" style="float: right;margin: 5px 19px 0 0;letter-spacing: -0.5px;">
			<ul>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
				<li>2020-01-01</li>
			</ul>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Data</span>
</body>
</html>

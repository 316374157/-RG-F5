<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>直播间</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Live.css">
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">直播</div>
		</div>
		<div class="main_part_bot">
			<div class="live"></div>
			<div class="word">
				<div class="see">
					<ul>
						<li>XXX：111</li>
						<li>XXX：222</li>
						<li>XXX：333</li>
						<li>XXX：444</li>
					</ul>
				</div>
				<div class="say">
					<input class="sayWord" type="text" placeholder="发送弹幕" style="width: 90%"/>
					<input type="button" value="发送" style="float: right;width: 10%">
				</div>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Live</span>
</body>
</html>

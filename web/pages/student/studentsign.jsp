
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>签到</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/stusign.css">
	<script type="text/javascript">
		$(function () {
			const curWwwPath  = window.location.href;
			const pathName = window.location.pathname;
			const realPath = curWwwPath.substring(4,curWwwPath.indexOf(pathName))+pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
			let msg_socket = new WebSocket("ws"+realPath+"/InformServlet");

			let msg = '';
			msg_socket.onmessage = function(data){
				msg = data.data;
				document.getElementById("info").innerHTML = " "+data.data;
			}

			$("#signBtn").click(function () {
				msg = msg.split(',');
				const classId = msg[0].substr(8)
				const courseId = msg[1].substr(9)
				const signId = msg[2].substr(7)
				const isSign = msg[3].substr(7)
				if(isSign ==="true"){
					alert("签到")
					$("#classId").val(classId)
					$("#courseId").val(courseId)
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
			<div class="main">
					<div class="main_part_nav">
						<div id="info" style="width: 300px;height: 300px"></div>
						<button id="signBtn">签到</button>
					</div>
				<form id="signTb">
					<input name="classId" id="classId">
					<input name="courseId" id="courseId">
					<input name="signId" id="signId">
				</form>
			</div>
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

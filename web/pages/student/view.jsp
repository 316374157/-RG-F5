
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>直播间</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Live.css">
	<script type="text/javascript">
		$(function () {
			const curWwwPath  = window.location.href;
			const pathName = window.location.pathname;
			const realPath = curWwwPath.substring(4,curWwwPath.indexOf(pathName))+pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
			const receive_socket = new WebSocket("ws"+realPath+"/OnLineServlet");

			const image = document.getElementById("receive");
			receive_socket.onmessage = function(info){
				image.src = info.data;
			}
			const msg_socket = new WebSocket("ws"+realPath+"/ChatRoomServlet");
			msg_socket.onmessage = function(data){
				document.getElementById("dm").innerHTML += " "+data.data;
			}
			function sendMsg(){
				const msg = document.getElementById("msg").value;
				if (msg_socket.readyState === 1){
					msg_socket.send(msg);
				}
			}
			$("#sendBtn").click(function (){
				sendMsg();
			})
		})
	</script>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">直播</div>
		</div>
		<div class="main_part_bot">
			<div class="live">
				<img id="receive" class="live">
			</div>
			<div class="word">
				<div class="see">
					<div id="dm" class="see" style="width:320px ;height:240px ;position: absolute;background: rgba(0,0,0,0.2);top:0px;left:0px;color: white;overflow: auto;"></div>
					<ul>
						<li>XXX：111</li>
						<li>XXX：222</li>
						<li>XXX：333</li>
						<li>XXX：444</li>
					</ul>
				</div>
				<div class="say">
					<input id="msg" class="sayWord" type="text" placeholder="发送弹幕" style="width: 90%"/>
					<button id="sendBtn" style="float: right;width: 10%">发送</button>
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

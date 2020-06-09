
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/Live.css">
    <script type="text/javascript">
        $(function () {
            const curWwwPath  = window.location.href;
            const pathName = window.location.pathname;
            const realPath = curWwwPath.substring(4,curWwwPath.indexOf(pathName))+pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
            const video = document.getElementById("video");
            const back = document.getElementById("output");
            const backContext = document.getElementById("output").getContext("2d");
            let socket;
            let interval;
            setTimeout(init, 10);
            //初始化
            function init(){
                //需要浏览器支持

                socket = new WebSocket("ws"+realPath+"/OnLineServlet");
                socket.onopen = onOpen;
                socket.onclose = onClose;
            }
            function onOpen(){
                //定时传输数据到服务器
                clearInterval(interval);
                interval = setInterval(function(){draw()},5);
            }
            function onClose(){
                init();
            }
            function draw(){
                backContext.drawImage(video,0,0,back.width,back.height);
                socket.send(back.toDataURL("image/jpeg",0.5));
            }
            var success = function(stream){
                video.srcObject = stream;
            }

            navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia||navigator.msGetUserMedia;
            navigator.getUserMedia({video:true,audio:false},success,console.log);

            const msg_socket = new WebSocket("ws"+realPath+"/ChatRoomServlet");
            msg_socket.onmessage = function(data){
                document.getElementById("dm").innerHTML += " "+data.data+"<br />";
            }
            function sendMsg(){
                const msg = document.getElementById("msg").value;
                if (msg_socket.readyState === 1){
                    msg_socket.send(msg);
                }
            }
            $("#sendBtn").click(function (){
                sendMsg();
                $("#msg").val("");
            })
        })
    </script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">直播</div>
        </div>
        <div class="main_part_bot">
            <div class="live">
                <video src="" id="video" autoplay class="live"></video>
                <canvas id="output"  style="display: none" class="live"></canvas>
            </div>
            <div class="word">
                <div id="dm" class="see" style="top:0px;left:0px;color: #1687d9;overflow: auto;font-size: 20px;"></div>
                <div class="say">
                    <input id="msg" class="sayWord" type="text" placeholder="发送弹幕" style="width: 85%"/>
                    <button id="sendBtn" style="float: right;width: 15%;height: 24px;">发送</button>
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



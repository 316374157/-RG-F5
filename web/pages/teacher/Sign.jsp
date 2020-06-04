
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/Data.css">
    <script type="text/javascript">
        $(function () {
            const curWwwPath  = window.location.href;
            const pathName = window.location.pathname;
            const realPath = curWwwPath.substring(4,curWwwPath.indexOf(pathName))+pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

            let msg_socket = new WebSocket("ws"+realPath+"/InformServlet");

            msg_socket.onmessage = function(data){
                document.getElementById("sign").innerHTML = " "+data.data;
            }

            function sendMsg(){
                const classId = "classId:"+$("#classId").val();
                const courseId = "courseId:"+$("#courseId").val();
                const signId = "signId:"+$("#signId").val();
                const isSign = "isSign:"+$("#isSign").val();
                const msg = classId+","+courseId+","+signId+","+isSign;
                if (msg_socket.readyState === 1){
                    msg_socket.send(msg);
                }
            }
            $("#sendBtn").click(function (){
                $("#isSign").val(true);
                sendMsg();
            })
            $("#overBtn").click(function (){
                $("#isSign").val(false);
                sendMsg();
            })
        })
    </script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part" style="float: none;margin: 0 auto;padding-top: 20px;">
        <div class="sign">
            <a href="javascript:void(0)">
                <div class="courses">
                    <p class="tz">签到</p>
                </div>
            </a>
        </div>
        <img style="margin: 0 33%;" src="static/image/pic.png" alt="" />
        <div id="sign" style="width: 300px;height: 300px"></div>
        <label>班级：<input id="classId" type="text" placeholder="选择班级" /></label>
        <label>课程：<input id="courseId" type="text" placeholder="选择课程" /></label>
        <label>签到次数：<input id="signId" type="text" placeholder="选择签到次数" /></label>
        <input  id="isSign" type="text"  value="false" />
        <button id="sendBtn" style="float: right;width: 10%">发起签到</button>
        <button id="overBtn" style="float: right;width: 10%">结束签到</button>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Sign</span>
</body>
</html>

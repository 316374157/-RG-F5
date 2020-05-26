<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./CSS/Clean.css">
    <link rel="stylesheet" href="./CSS/Live.css">
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
    <script src="./JS/HeaderChose.js"></script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
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
                    <input class="sayWord" type="text" placeholder="" />
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


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <div class="menu">
        <ul id="classes" class="nav nav-pills nav-stacked">
            <c:forEach items="${requestScope.myClasses}" var="item">
                <li class="choses" role="presentation"><a href="javascript:void(0)">${item.className}</a></li>
                <ul id="courses" class="nav nav-pills nav-stacked half" style="display: none;">
                    <c:forEach items="${requestScope.listMap.get(item.className)}" var="list">
                        <li class="chosess"><a href="javascript:void(0)">${list}</a></li>
                    </c:forEach>
                </ul>
            </c:forEach>
        </ul>
    </div>
    <div class="main_part" style="float: right;margin: 0 auto;padding: 30px 50px;">
        <div class="main_part_top ">
            <div class="kj" style="padding-left: 90px;"><a id="classess" href="javascript:void(0)"></a> >> <a id="coursess" href="javascript:void(0)"></a></div>
        </div>
        <div id="sign" style="width: 300px;height: 300px;margin: 0 auto;padding-top: 2px;">
            <label style="margin-bottom: 20px;">班级：</label><input style="margin-bottom: 20px;" id="classId" readonly="readonly" type="text" placeholder="选择班级" />
            </select>
            <br />
            <label class="zzz">课程：</label><input class="zzz" id="courseId" readonly="readonly" type="text" placeholder="选择课程" />
            <br />
            <label class="zzz">签到次数：</label>
            <select id="signId" class="zzz" style="height: 24px;">
                <option value="sign1">第一次签到</option>
                <option value="sign2">第二次签到</option>
                <option value="sign3">第三次签到</option>
                <option value="sign4">第四次签到</option>
                <option value="sign5">第五次签到</option>
            </select>
            <br />
            <input  class="zzz" id="isSign" readonly="readonly" type="text"  value="false" />
            <br />
            <button class="zzz" id="sendBtn">发起签到</button>
            <button class="zzz" id="overBtn">结束签到</button>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Sign</span>
<script>
    $("#classes .choses").click(function () {
        var index = $("#classes .choses").index(this);
        var num = $("ul").length;
        $(".choses.active").removeClass("active");
        $(".chosess.active").removeClass("active");
        for (i=0;i<=num;i++){
            $("#classes ul").eq(i).css("display","none");
        }
        this.className = "choses active";
        $("#classess").text($("#classes .choses.active").text());
        $("#classId").val($("#classes .choses.active").text());
        $("#coursess").text('');
        $("#courseId").val('');
        $("#classes ul").eq(index).css("display","block");
        $(".main_part_nav").hide();
    })
    $("#courses .chosess").click(function () {
        var index = $("#courses .chosess").index(this);
        var num = $("li").length;
        $(".chosess.active").removeClass("active");
        for (i=0;i<=num;i++){
            $("#classes ul").eq(i).css("display","none");
        }
        this.className = "chosess active";
        $("#classes ul").eq(index).css("display","block");
        $(".main_part_nav").show();
        $("#coursess").text($("#courses .chosess.active").text());
        $("#courseId").val($("#courses .chosess.active").text());
    })
    $(function () {
        var classess = $("#classess").text();
        var coursess = $("#coursess").text();
        var num = $("li").length;
        for(i = 0;i<=num;i++){
            if(classess == $("#classes .choses").eq(i).text()){
                $("#classes .choses").eq(i).addClass("active");
                $("#classes ul").eq(i).css("display","block");
                break;
            }
        }
        for(i = 0;i <= num;i++){
            if(coursess == $("#courses .chosess").eq(i).text()){
                $("#courses .chosess").eq(i).addClass("active");
            }
        }
    })
</script>
</body>
</html>

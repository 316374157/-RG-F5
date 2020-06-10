<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="static/js/HeaderChose.js"></script>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul id="headnav" class="nav navbar-nav" style="margin: 0 auto;width: 600px;float: none;">
                <li id="myinfo" class=""><a href="pages/student/myinfo.jsp">个人信息</a></li>
                <li id="home" class=""><a href="StudentServlet?method=home">主页</a></li>
                <li id="course" class=""><a href="pages/student/coursedetail.jsp">我的课程</a></li>
                <li id="data" class=""><a href="StudentServlet?method=toFilePage">教学资源</a></li>
                <li id="sign" class=""><a href="SignServlet?method=getMySign">签到</a></li>
                <li id="live" class=""><a href="pages/student/view.jsp">直播</a></li>
                <li><a href="StudentServlet?method=studentOut">登出</a> </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


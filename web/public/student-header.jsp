
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="static/js/HeaderChose.js"></script>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul id="headnav" class="nav navbar-nav" style="margin: 0 auto;width: 600px;float: none;">
                <li id="myinfo" class=""><a href="myinfo.jsp">个人信息</a></li>
                <li id="home" class=""><a href="home.jsp">主页</a></li>
                <li id="myallclass" class=""><a href="coursedetail.jsp">我的课程</a></li>
                <li id="data" class=""><a href="databank.jsp">教学资源</a></li>
                <%--<li id="course" class=""><a href="pages/teacher/Course.jsp">课程</a></li>--%>
                <li id="sign" class=""><a href="studentsign.jsp">签到</a></li>
                <%--<li id="allsigninfo" class=""><a href="SignServlet?method=getAllSignInfo">签到详情</a></li>--%>
                <li id="live" class=""><a href="view.jsp">直播</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

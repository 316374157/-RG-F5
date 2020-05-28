<%--
  Created by IntelliJ IDEA.
  User: 73630
  Date: 2020/5/27
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <link rel="stylesheet" href="../../static/css/Clean.css">
    <link rel="stylesheet" href="../../static/css/ChangeInfo.css">
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
    <script src="../../static/js/HeaderChose.js"></script>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">修改信息</div>
        </div>
        <div class="main_part_nav">
            <ul>
                <form action="" method="post">
                    <li>
                        <a>姓名：</a><input type="text" placeholder="" />
                    </li>
                    <li>
                        <a>性别：</a><input type="text" placeholder="" />
                    </li>
                    <li>
                        <a>密码：</a><input type="password" />
                    </li>
                    <input style="margin-left: 100px;" type="submit" value="提交" />
                </form>
            </ul>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">ChangeInfo</span>
</body>
</html>

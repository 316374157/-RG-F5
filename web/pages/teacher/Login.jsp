<%--
  Created by IntelliJ IDEA.
  User: 11322
  Date: 2020/5/20
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
    <jsp:include page="../../public/TeacherHeader.jsp"/>
    <div class="wrap" id="wrap">
        <div class="logGet">
            <!-- 头部提示信息 -->
            <div class="logD logDtip">
                <p class="p1">登录</p>
            </div>
            <!-- 输入框 -->
            <div class="lgD">
                <img src="img/logName.png" width="20" height="20" alt=""/>
                <input type="text"
                       placeholder="输入用户名" />
            </div>
            <div class="lgD">
                <img src="img/logPwd.png" width="20" height="20" alt=""/>
                <input type="text"
                       placeholder="输入用户密码" />
            </div>
            <div class="logC">
                <a href="index.html" target="_self"><button>登 录</button></a>
            </div>
        </div>
    </div>

    <div class="footer" id="foot">
        <div class="copyright">
            <p>Copyright © 2018 Qunar.com Inc. All Rights Reserved.</p>
            <div class="img">
                <i class="icon"></i><span>联系邮箱：jiankangsun@yahoo.com</span>
            </div>

            <div class="img">
                <i class="icon1"></i><span>联系地址：合肥工业大学</span>
            </div>

            <div class="img">
                <i class="icon2"></i><span>联系电话：18355042634</span>
            </div>


        </div>

    </div>
</body>
</html>
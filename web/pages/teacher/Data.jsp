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
        })
    </script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="menu">
        <ul class="nav nav-pills nav-stacked">
            <c:forEach items="${requestScope.myClasses}" var="item">
                <li role="presentation"><a href="#">${item.className}</a></li>
                <c:forEach items="${requestScope.listMap.get(item.className)}" var="list">
                    <li class="get"><a href="DataBankServlet?method=getFileByCourseAndClass&className=${item.className}&courseName=${list}">${list}</a></li>
                </c:forEach>
            </c:forEach>
        </ul>
    </div>
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj"><a href="#">${param.className}/${param.courseName}</a> >> <!--<a href="#">文档</a--></div>
            <div class="more">
                <a href="./#">上传文件</a>
            </div>
        </div>
        <div class="main_part_nav">
            <ul>
                <c:forEach items="${requestScope.fileMap.keySet()}" var="item">
                    <li>
                        <a href="./#">${item}</a>
                    </li>
                    <ul>
                        <c:forEach items="${requestScope.fileMap.get(item)}" var="file">
                            <li><a href="#">${file.dataName}</a>
                                <button>查看</button>
                                <button>下载</button>
                                <button>删除</button></li>
                        </c:forEach>
                    </ul>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Data</span>
</body>
</html>

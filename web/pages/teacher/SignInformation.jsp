
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/SignInformation.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">${requestScope.beanByClassId.className}</div>
        </div>
        <div class="main_part_nav">
            <table class="class">
                <thead>
                <tr>
                    <th scope="col">学号</th>
                    <th scope="col">姓名</th>
                    <th scope="col">第一次课</th>
                    <th scope="col">第二次课</th>
                    <th scope="col">第三次课</th>
                    <th scope="col">第四次课</th>
                    <th scope="col">第五次课</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.beanListByCC}" var="items">
                    <tr>
                        <td>${items.studentId}</td>
                        <td>${items.studentName}</td>
                        <td>${items.sign1}</td>
                        <td>${items.sign2}</td>
                        <td>${items.sign3}</td>
                        <td>${items.sign4}</td>
                        <td>${items.sign5}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">AllSignInfo</span>
<script>
    $('div.plan_nav1_part').mousemove(function () {
        var n = $("div.plan_nav1_part").index(this)
        console.log(n);
        $('div').parent().removeClass('dianji1');
        $('div').removeClass('dianji2');
        $('div.plan_main').css('display', 'none');
        $(this).parent().addClass('dianji1');
        $(this).addClass('dianji2');
        console.log($('.plan_main').eq(n).length);
        $('.plan_main').eq(n).css('display', 'block');
    })
</script>
</body>
</html>

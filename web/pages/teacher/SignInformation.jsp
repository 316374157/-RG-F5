<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./CSS/Clean.css">
    <link rel="stylesheet" href="./CSS/SignInformation.css">
    <link rel="stylesheet" href="../../static/css/bootstrap.css"/>
    <script src="./JS/HeaderChose.js"></script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">班级1</div>
        </div>
        <div class="main_part_nav">
            <table class="class">
                <thead>
                <tr>
                    <th scope="col">学号</th>
                    <th scope="col">姓名</th>
                    <th scope="col">第一次课</th>
                    <th scope="col">第二次课</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>001</td><td>学生1</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>002</td><td>学生2</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>003</td><td>学生3</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>004</td><td>学生4</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>005</td><td>学生5</td><td>按时上课</td><td>按时上课</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj">班级2</div>
        </div>
        <div class="main_part_nav">
            <table class="class">
                <thead>
                <tr>
                    <th scope="col">学号</th>
                    <th scope="col">姓名</th>
                    <th scope="col">考勤</th>
                    <th scope="col">成绩</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>001</td><td>学生1</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>002</td><td>学生2</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>003</td><td>学生3</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>004</td><td>学生4</td><td>按时上课</td><td>按时上课</td>
                </tr>
                <tr>
                    <td>005</td><td>学生5</td><td>按时上课</td><td>按时上课</td>
                </tr>
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
<span id="Only" style="display: none;">SignInformation</span>
</body>
</html>

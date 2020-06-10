<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的课程</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/stuCourseInfo.css">
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj" style="width: 80%;">${requestScope.beanByCourseId.courseName}</div>
        </div>
        <div style="padding: 30px 50px">
            <h1>课程介绍</h1>
            <p>本课程从软件生命周期的角度讲解软件工程的基本概念、基本原理和基本方法。内容涉及开发管理、需求建模、设计实现和测试
                维护等四大部分的相关基础知识，强调软件工程的根本性和永久性原则，诸如可测试性、软件体系结构、模块化和可复用性等，
                关注软件系统的复杂性问题以及迭代式的开发方法，重视分析问题与解决问题的能力以及软件工程实践训练，培养学生良好的
                工程化开发习惯。经过本课程的学习，学生能够掌握软件工程的基础知识，从工程学角度认识软件在大型复杂系统中的设计和
                应用，具备作为软件工程师从事软件开发所需的专业能力。（清华大学）</p>
        </div>
        <div style="padding: 30px 50px">
            <h1>课程详情</h1>
            <ul>
                <li>第一章</li>
                <ul>
                    <li>第一讲：XXX</li>
                    <li>第二讲：XXX</li>
                    <li>第三讲：XXX</li>
                    <li>第四讲：XXX</li>
                    <li>第五讲：XXX</li>
                </ul>
                <li>第二章</li>
                <ul>
                    <li>第一讲：XXX</li>
                    <li>第二讲：XXX</li>
                    <li>第三讲：XXX</li>
                    <li>第四讲：XXX</li>
                    <li>第五讲：XXX</li>
                </ul>
                <li>第三章</li>
                <ul>
                    <li>第一讲：XXX</li>
                    <li>第二讲：XXX</li>
                    <li>第三讲：XXX</li>
                    <li>第四讲：XXX</li>
                    <li>第五讲：XXX</li>
                </ul>
                <li>第四章</li>
                <ul>
                    <li>第一讲：XXX</li>
                    <li>第二讲：XXX</li>
                    <li>第三讲：XXX</li>
                    <li>第四讲：XXX</li>
                    <li>第五讲：XXX</li>
                </ul>
                <li>第五章</li>
                <ul>
                    <li>第一讲：XXX</li>
                    <li>第二讲：XXX</li>
                    <li>第三讲：XXX</li>
                    <li>第四讲：XXX</li>
                    <li>第五讲：XXX</li>
                </ul>
            </ul>
        </div>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">Course</span>
</body>
</html>

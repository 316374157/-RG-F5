<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>我的主页</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
     <jsp:include   page="../../public/student-header.jsp" flush="true"/>
	 <div style="width: 100%;height: 100%">
		 <div style="left: 20%;position:relative;width: 80%">
			 <div class="row">
				 <div class="col-sm-6 col-md-4">
					 <div class="thumbnail">
						 <img src="..." alt="软件工程">
						 <div class="caption">
							 <h3>软件工程</h3>
							 <p>老师：朱洪磊</p>
							 <p><a href="#" class="btn btn-primary" role="button">进入课程</a> <a href="#" class="btn btn-default" role="button">删除课程</a></p>
						 </div>
					 </div>
				 </div>
			 </div>

			 <div class="row">
				 <div class="col-sm-6 col-md-4">
					 <div class="thumbnail">
						 <img src="..." alt="ASP.NET">
						 <div class="caption">
							 <h3>ASP.NET</h3>
							 <p>老师：曹丽</p>
							 <p><a href="#" class="btn btn-primary" role="button">进入课程</a> <a href="#" class="btn btn-default" role="button">删除课程</a></p>
						 </div>
					 </div>
				 </div>
			 </div>
		 </div>
		 <div style="right: 5%;width: 20%;height: 80%;position: absolute;top: 20%;right: 5%;float: right">
			 <table class="table table-condensed" style="width: 40%">
				 <tr class="success">
					 <td class="active">
						 我的班级
					 </td>
				 </tr>
				 <tr class="success">
					 <td class="active">
						 陈玉慧
					 </td>
				 </tr>
				 <tr class="success">
					 <td class="active">
						 梁兆威
					 </td>
				 </tr>
				 <tr class="success">
					 <td class="active">
						 庞浩杰
					 </td>
				 </tr>
				 <tr class="success">
					 <td class="active">
						 张飞帆
					 </td>
				 </tr>
			 </table>
		 </div>
	 </div>
</body>
</html>

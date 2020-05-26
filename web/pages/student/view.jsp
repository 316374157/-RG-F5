<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>直播间</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="jumbotron" style="width: 80%;height: 80%;position: absolute;left: 10%">

</div>
<nav aria-label="Page navigation" style="bottom: 0px;position:absolute;left: 40%">
	<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
	</button>
	<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-backward" aria-hidden="true"></span>
	</button>
	<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-play" aria-hidden="true"></span>
	</button>
	<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-pause" aria-hidden="true"></span>
	</button>
	<%--<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-stop" aria-hidden="true"></span>
	</button>--%>
	<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-forward" aria-hidden="true"></span>
	</button>
	<button type="button" class="btn btn-default" aria-label="Left Align">
		<span class="glyphicon glyphicon-step-forward" aria-hidden="true"></span>
	</button>
</nav>
</body>
</html>

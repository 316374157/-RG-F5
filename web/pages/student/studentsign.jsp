<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>签到</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/stusign.css">
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">我的签到</div>
			<div class="main">
				<div style="text-align: center;position: absolute;width: 50%;height: 40%;margin: 0 auto;top: 25%;left: 35%">
					<form action="" method="post">
						<input type="text"  class="form-control" id="inputEmail3" name="signs" placeholder="输入签到码">
						<br>
						<input type="button"  class="btn btn-default" name="" value="签到" disabled>
					</form>
				</div>
					<%--<div class="main_part_nav">
						<div class="main_part" style="float: none;margin: 0 auto;padding-top: 20px;">
							<div class="sign">
								<a href="javascript:void(0)">
									<div class="courses">
										<img style="margin: 0 33%;" src="static/image/pic.png" alt="" />
									</div>
								</a>
							</div>
						</div>
						&lt;%&ndash;<table class="class">
							<thead>
							<tr>
								<th scope="col">次数</th>
								<th scope="col">课程</th>
								<th scope="col">时间</th>
								<th scope="col">状态</th>
								<th scope="col">操作</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>05</td><td>软件工程</td><td>2020-5-28</td><td>未签</td><td><a href=".#">签到</a></td>
							</tr>
							<tr>
								<td>04</td><td>数据结构</td><td>2020-5-21</td><td>已签</td><td>签到</td>
							</tr>
							<tr>
								<td>03</td><td>软件工程</td><td>2020-5-14</td><td>已签</td><td>签到</td>
							</tr>
							<tr>
								<td>02</td><td>计算机网络</td><td>2020-5-7</td><td>已签</td><td>签到</td>
							</tr>
							<tr>
								<td>01</td><td>软件工程</td><td>2020-4-28</td><td>已签</td><td>签到</td>
							</tr>
							</tbody>
						</table>&ndash;%&gt;
					</div>--%>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Sign</span>
</body>
</html>

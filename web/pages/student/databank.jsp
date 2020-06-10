<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>资料库</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Data.css">
</head>
<body>
<jsp:include page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="menu">
		<ul id="classes" class="nav nav-pills nav-stacked">
			<li class="choses" role="presentation"><a href="javascript:void(0)">${requestScope.classes.className}</a></li>
			<ul id="courses" class="nav nav-pills nav-stacked half" style="display: none;">
			<c:forEach items="${requestScope.courseList}" var="list">
				<li class="chosess"><a href="DataBankServlet?method=getFileForStu&className=${requestScope.classes.className}&courseName=${list.courseName}">${list.courseName}</a></li>
			</c:forEach>
			</ul>
		</ul>
	</div>
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj"><a id="classess" href="javascript:void(0)">${requestScope.classes.className}</a> >> <a id="coursess" href="javascript:void(0)">${param.courseName}</a> >> <a id="filefolder"></a></div>
		</div>
		<div class="main_part_nav">
			<ul class="all" id="datas">
				<c:forEach items="${requestScope.fileMap.keySet()}" var="item">
					<li style="margin-top: 10px;" class="chose">
						<a class="filesName" href="javascript:void(0)">${item}</a>
					</li>
					<ul class="files" style="display: none;">
						<table style="width: 100%;margin: 10px 0;">
							<c:forEach items="${requestScope.fileMap.get(item)}" var="file">
								<li style="width: 100%;">
									<tr style="width: 97%;border-bottom: 1px solid #999;border-spacing: 0;">
										<td style="width: 80%;"><a href="javascript:void(0)">${file.dataName}</a></td>
										<td><a href="${file.dataPath}" target="_blank">查看</a></td>
										<td><a href="DataBankServlet?method=fileDownload&id=${file.id}">下载</a></td>
									</tr>
								</li>
							</c:forEach>
						</table>
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
<script>
	$("#datas").on("click",".chose",function () {
		var index = $("#datas .chose").index(this);
		console.log(index);
		console.log($("#datas .chose").length);
		var num = $("ul").length;
		for (i=0;i<=num;i++){
			$("#datas ul").eq(i).css("display","none");
		}
		var filefolder = $("#datas .chose").eq(index).text();
		$("#filefolder").text(filefolder);
		$("#datas ul").eq(index).css("display","block");
		$("#file").val(filefolder.toString().trim())
	});
	$("#classes .choses").click(function () {
		var index = $("#classes .choses").index(this);
		var num = $("ul").length;
		$(".choses.active").removeClass("active");
		$(".chosess.active").removeClass("active");
		for (i=0;i<=num;i++){
			$("#classes ul").eq(i).css("display","none");
		}
		this.className = "choses active";
		$("#classess").text($("#classes .choses.active").text());
		$("#coursess").text('');
		$("#classes ul").eq(index).css("display","block");
		$(".main_part_nav").hide();
	})
	$("#courses .chosess").click(function () {
		var index = $("#courses .chosess").index(this);
		var num = $("li").length;
		$(".chosess.active").removeClass("active");
		for (i=0;i<=num;i++){
			$("#classes ul").eq(i).css("display","none");
		}
		this.className = "chosess active";
		$("#classes ul").eq(index).css("display","block");
		$(".main_part_nav").show();
	})
	$(function () {
		var classess = $("#classess").text();
		var coursess = $("#coursess").text();
		var num = $("li").length;
		for(i = 0;i<=num;i++){
			if(classess == $("#classes .choses").eq(i).text()){
				$("#classes .choses").eq(i).addClass("active");
				$("#classes ul").eq(i).css("display","block");
				break;
			}
		}
		for(i = 0;i <= num;i++){
			if(coursess == $("#courses .chosess").eq(i).text()){
				$("#courses .chosess").eq(i).addClass("active");
			}
		}
	})
	$("#click1").click(function () {
		var num = $(".filesName").length;
		var folderName = $("#folderName").val();
		for(i=0;i<=num;i++){
			var filesName = $(".filesName").eq(i).text();
			if(filesName == folderName){
				console.log(filesName == folderName);
				$("#mis").show();
				break;
			}
			else{
				console.log(filesName == folderName);
				$("#mis").hide();
			}
		}
		if($("#mis").is(':hidden')){
			var newfolder = '<li style="margin-top: 10px;" class="chose"><a class="filesName" href="javascript:void(0)">'+folderName+'</a></li>';
			$(".files:last").after(newfolder);
		}
	})
	$("#close").click(function () {
		$("#folderName").val("");
	})
</script>
</body>
</html>

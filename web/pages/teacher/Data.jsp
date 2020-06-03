
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp"/>
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/Data.css">
    <script src="static/js/bootstrap.js"></script>
    <script type="text/javascript">
        $(function () {
        })
    </script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
    <div class="menu">
        <ul id="classes" class="nav nav-pills nav-stacked">
            <c:forEach items="${requestScope.myClasses}" var="item">
                <li class="choses" role="presentation"><a href="javascript:void(0)">${item.className}</a></li>
                <ul id="courses" class="nav nav-pills nav-stacked half" style="display: none;">
                <c:forEach items="${requestScope.listMap.get(item.className)}" var="list">
                    <li class="chosess"><a href="DataBankServlet?method=getFileByCourseAndClass&className=${item.className}&courseName=${list}">${list}</a></li>
                </c:forEach>
                </ul>
            </c:forEach>
        </ul>
    </div>
    <div class="main_part">
        <div class="main_part_top">
            <div class="kj"><a id="classess" href="javascript:void(0)">${param.className}</a> >> <a id="coursess" href="javascript:void(0)">${param.courseName}</a> >> <a id="filefolder"></a></div>
            <div class="more">
                <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">
                    新建文件夹
                </button>
                <buton class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2">
                    上传文件
                </buton>
                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel1">Modal title</h4>
                            </div>
                            <div style="padding: 5% 25%;" class="modal-body">
                                <label style="margin: 10px 10px;width: 70px;">班级名：</label><input readonly="readonly" value="${param.className}" />
                                <br />
                                <label style="margin: 10px 10px;width: 70px;">课程名：</label><input readonly="readonly" value="${param.courseName}" />
                                <br />
                                <label style="margin: 10px 10px;width: 70px;">文件夹名：</label><input id="folderName" type="text" placeholder="请输入文件夹名" />
                                <label id="mis" style="display: none;color: red;">文件夹已存在</label>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button id="click1" type="button" class="btn btn-primary">确定添加</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel2">Modal title</h4>
                            </div>
                            <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
                                <div style="padding: 5% 25%;" class="modal-body">
                                    <label style="margin: 10px 10px;width: 70px;">班级名：</label><input readonly="readonly" name="className" value="${param.className}"/>
                                    <br />
                                    <label style="margin: 10px 10px;width: 70px;">课程名：</label><input readonly="readonly" name="courseName" value="${param.courseName}"/>
                                    <br />
                                    <label style="margin: 10px 10px;width: 70px;">文件夹名：</label><input id="file" readonly="readonly" name="dataType"/>
                                    <br />
                                    <label style="margin: 10px 10px;width: 70px;">请选择文件</label><input type="file" name="file" />
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <input type="submit" value="上传" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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
                                        <td><a href="DataBankServlet?method=fileDelete&id=${file.id}&className=${param.className}&courseName=${param.courseName}">删除</a></td>
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
        /*
        控制右侧的文件夹中的文件显示
        并且会修改上边的路径导航
         */
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
                $("#mis").hidden;
            }
        }
        if($("#mis").is(':hidden')){
            var newfolder = '<li style="margin-top: 10px;" class="chose"><a class="filesName" href="javascript:void(0)">'+folderName+'</a></li>';
            $(".files:last").after(newfolder);
        }
    })
</script>
</body>
</html>

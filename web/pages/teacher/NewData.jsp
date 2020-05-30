<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Title</title>
    <jsp:include page="../../public/base.jsp" />
    <link rel="stylesheet" href="static/css/Clean.css">
    <link rel="stylesheet" href="static/css/NewData.css">
    <link rel="stylesheet" href="static/css/Form.css">
    <script type="text/javascript">
        $(function () {
        })
    </script>
</head>

<body>
<jsp:include page="../../public/TeacherHeader.jsp" />
<div class="main">
    <div class="main_part">
        <div class="main_part_top">
            <p class="kj">上传文件</p>
        </div>
        <form action="FileServlet" method="post" enctype="multipart/form-data">
            <div class="modern-forms">
                <div class="modern-container">
                    <div class="form-row">
                        <div class="col col-6">
                            <div class="field-group">
                                <input type="text" class="mdn-input" placeholder="请输入文件名">
                                <label class="mdn-label">文件名</label>
                                <span class="mdn-bar"></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col col-6">
                            <div class="field-group">
                                <input type="text" class="mdn-input" placeholder="请输入文件名">
                                <label class="mdn-label">文件名</label>
                                <span class="mdn-bar"></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col col-6">
                            <div class="field-group mdn-select">
                                <select name="select">
                                    <option value="">请选择想要存入的文件夹</option>
                                    <option value="文档">文档</option>
                                    <option value="PPT">PPT</option>
                                    <option value="视频">视频</option>
                                    <option value="其他">其他</option>
                                </select>
                                <label class="mdn-label">文件夹</label>
                                <span class="mdn-bar"></span>
                            </div>
                        </div>
                    </div>
                    <div class="mdn-footer">
                        <input type="file" name="file">
                        <input type="submit" style="margin: 30px 20%;border-radius: 25px;" class="mdn-button btn-primary" value="上传">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="footer">
    <p style="padding-top: 30px;">软件工程</p>
    <p>Copyright ©</p>
    <p>http://</p>
</div>
<span id="Only" style="display: none;">NewData</span>
</body>

</html>
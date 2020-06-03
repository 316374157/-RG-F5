<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>欢迎来到登录页面</title>
    <jsp:include page="public/base.jsp"/>
    <script type="text/javascript">
      $(function () {
        $("#login").click(function () {
          const username = $("#inputEmail3").val();
          const passWd = $("#inputPassword3").val();
          const msg = $("#msg");
          if (username ===''){
            msg.text('账号不能为空');
            return false;
          }
          if (passWd ===''){
            msg.text('密码不能为空');
            return false;
          }
        })
      })
    </script>
  </head>
  <body style="background-image: url(static/image/桌面.jpg);background-size: cover">
  <div style="text-align: center;position: absolute;width: 50%;height: 40%;margin: 0 auto;top: 25%;left: 35%">
    <form class="form-horizontal" action="LoginServlet" method="post">
      <span id="msg" style="color: #ff0000">${msg}</span>
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">用户名：</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" name="username" placeholder="Username" style="width: 50%">
            <select name="user" class="btn btn-default dropdown-toggle" style="float: left">
                <option value="admin">管理员</option>
                <option value="student">学生</option>
                <option value="teacher">老师</option>
            </select>
        </div>
      </div>
      <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputPassword3" name="passWd" placeholder="Password" style="width: 50%">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <div class="checkbox" style="position: absolute;margin: 0 auto">
            <label>
              <input type="checkbox"> 记住密码
            </label>
            <a href="pages/student/register.jsp" style="width: 50px;height: 30px;margin-left: 150px">注册</a>
          </div>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10" style="position: absolute;margin: 0 auto">
          <button type="submit" class="btn btn-default" id="login">登录</button>
        </div>
      </div>
    </form>
  </div>
  </body>
</html>

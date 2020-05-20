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
	<title>欢迎来到主页</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
     /*<jsp:include   page="public/student-header.jsp" flush="true"/>*/
     <form class="form-horizontal">
         <div class="form-group">
             <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
             <div class="col-sm-10">
                 <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
             </div>
         </div>
         <div class="form-group">
             <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
             <div class="col-sm-10">
                 <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
             </div>
         </div>
         <div class="form-group">
             <div class="col-sm-offset-2 col-sm-10">
                 <div class="checkbox">
                     <label>
                         <input type="checkbox"> Remember me
                     </label>
                 </div>
             </div>
         </div>
         <div class="form-group">
             <div class="col-sm-offset-2 col-sm-10">
                 <button type="submit" class="btn btn-default">Sign in</button>
             </div>
         </div>
     </form>
</body>
</html>

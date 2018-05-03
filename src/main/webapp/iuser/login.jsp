<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    SimpleDateFormat df = new SimpleDateFormat("yyyy");
    String year = df.format(new Date());
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8"/>
    <title>客户登陆--江西风格网络</title>
    <jsp:include page="/head/master/css.jsp"/>
    <link href="${pageContext.request.contextPath}/static/bootstrap4/css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
<form class="form-signin" action="${pageContext.request.contextPath}/iuser/login" method="post">
    <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
    <label for="username" class="sr-only">用户名</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="用户名" required autofocus>
    <label for="pswd" class="sr-only">密码</label>
    <input type="password" id="pswd" name="pswd" class="form-control" placeholder="密码" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-<%=year%></p>
</form>
<jsp:include page="/head/master/js.jsp"/>
</body>
<script type="text/javascript">
    $(document).ready(function () {

    })
</script>
</html>
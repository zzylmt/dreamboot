<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8"/>
    <title>登陆--江西风格网络后台管理系统</title>
    <jsp:include page="/head/master/css.jsp"/>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="#"><strong>江西风格网络</strong></a>
    </div>
    <div class="login-box-body">
        <p class="login-box-msg">后台管理系统</p>

        <form action="${pageContext.request.contextPath}/sys/login" method="post">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="帐号" id="username" name="username">
                <span class="fa fa-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码" id="pswd" name="pswd">
                <span class="fa fa-key form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登陆</button>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="/head/master/js.jsp"/>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        var $a = $(document).height() - 90;
        $('.login-page').css('height', $a);
    })
</script>
</html>
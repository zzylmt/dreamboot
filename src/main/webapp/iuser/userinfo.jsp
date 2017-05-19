<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/customer/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>个人信息管理--风格网络</title>
    <jsp:include page="/head/customer/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="/head/customer/top.jsp"/>
    <jsp:include page="/head/customer/left.jsp"/>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                个人信息管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-default">
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="${pageContext.request.contextPath}/iuser/dbusersave" class="form-horizontal"
                                  method="post"
                                  id="profitform">
                                <input type="hidden" id="userid" name="userid" value="${dbuser.id }">
                                <div class="form-group">
                                    <label for="username" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        登录名:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="username" name="username"
                                               placeholder="登录名"
                                               value="${dbuser.username }">
                                    </div>
                                    <label for="nickname" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        姓名:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="nickname" name="nickname"
                                               placeholder="姓名"
                                               value="${dbuser.nickname }">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="pswd" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        密码:</label>
                                    <div class="col-md-4">
                                        <input type="password" class="form-control" id="pswd" name="pswd"
                                               placeholder="密码">
                                    </div>
                                    <label for="repswd" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        确认密码:</label>
                                    <div class="col-md-4">
                                        <input type="password" class="form-control" id="repswd" name="repswd"
                                               placeholder="确认密码">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="mobileno" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        手机:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="mobileno" name="mobileno"
                                               placeholder="手机" value="${dbuser.mobileno }">
                                    </div>
                                    <label for="email" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        邮箱:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="email" name="email"
                                               placeholder="邮箱" value="${dbuser.email }">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="qq" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        手机:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="qq" name="qq"
                                               placeholder="QQ" value="${dbuser.qq }">
                                    </div>
                                    <label for="wx" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        微信:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="wx" name="wx"
                                               placeholder="微信" value="${dbuser.wx }">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="addr" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        地址:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="addr" name="addr"
                                               placeholder="地址" value="${dbuser.addr }">
                                    </div>
                                    <label for="score" class="col-md-2 control-label"><i
                                            class="fa fa-fw fa-pencil-square-o"></i>
                                        积分:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" id="score" name="score"
                                               placeholder="积分" value="${dbuser.score }">
                                    </div>
                                </div>
                            </form>

                            <div class="box-footer">
                                <button id="infosave_btn" type="submit" class="btn btn-primary pull-right">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
<jsp:include page="/head/customer/js.jsp"/>
<script type="text/javascript">
    $(function () {
        $("#infosave_btn").on("click", function () {
            $("#profitform").submit();
        });
    });
</script>
</html>
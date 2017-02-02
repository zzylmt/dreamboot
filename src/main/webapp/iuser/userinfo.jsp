<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/customer/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>个人信息管理--风格网络</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/left.jsp"/>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                收货地址管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
            </ol>
        </section>
        <section class="content">

        </section>
    </div>
</div>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
<script type="text/javascript">
    $(function () {
    });
</script>
</html>
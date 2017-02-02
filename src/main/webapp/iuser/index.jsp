<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/customer/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>我的风格</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/ionicons.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/left.jsp"/>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                Dashboard
                <small>Version 2.0</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">CPU Traffic</span>
                            <span class="info-box-number">90<small>%</small></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa fa-google-plus"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Likes</span>
                            <span class="info-box-number">41,410</span>
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-sm-block"></div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Sales</span>
                            <span class="info-box-number">760</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">New Members</span>
                            <span class="info-box-number">2,000</span>
                        </div>
                    </div>
                </div>
            </div>
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
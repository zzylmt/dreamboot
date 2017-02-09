<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/customer/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>收货地址管理--我的风格</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/ionicons.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/left.jsp">
        <jsp:param name="parentnode" value="2"/>
    </jsp:include>

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
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-body">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th><i class="fa fa-file-text-o"></i> 收货人</th>
                                                <th><i class="fa fa-bars"></i> 联系电话</th>
                                                <th><i class="fa fa-book"></i> 地区</th>
                                                <th><i class="fa fa-file-text"></i> 具体地址</th>
                                                <th><i class="fa fa-thumbs-o-up"></i> 是否默认</th>
                                                <th><i class="fa fa-thumbs-o-up"></i> 操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:choose>
                                                <c:when test="${empty deliaddrlist}">
                                                    <tr>
                                                        <td colspan="5">
                                                            没有结果
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${deliaddrlist}" var="thelist" varStatus="status">
                                                        <tr>
                                                            <td>${thelist.consignee}</td>
                                                            <td>${thelist.telno}</td>
                                                            <td>${thelist.provincename} ${thelist.cityname} ${thelist.areaname} ${thelist.streetname} </td>
                                                            <td>${thelist.detailinfo}</td>
                                                            <td>${thelist.isdefault}</td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/iuser/deliaddrinfo/${thelist.userid}/${thelist.orderno}" class="btn btn-info">详情</a>
                                                                <a href="${pageContext.request.contextPath}/iuser/deldeliaddr/${thelist.userid}/${thelist.orderno}" class="btn btn-danger">删除</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
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
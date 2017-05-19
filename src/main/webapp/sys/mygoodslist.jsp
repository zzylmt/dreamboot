<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>商品列表--江西风格网络后台管理系统</title>
    <jsp:include page="/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<jsp:include page="/head/master/top.jsp"/>
<jsp:include page="/head/master/left.jsp">
    <jsp:param name="parentnode" value="5"/>
    <jsp:param name="childnode" value="2"/>
</jsp:include>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            所有商品
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> 商品管理</a></li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th><i class="fa  fa-file-text-o"></i> 商品名</th>
                        <th><i class="fa  fa-file-text"></i> 商品标题</th>
                        <th><i class="fa fa-user"></i> 原价</th>
                        <th><i class="fa fa-clock-o"></i> 商户</th>
                        <th><i class="fa  fa-bars"></i> 商会</th>
                        <th><i class="fa fa-book"></i> 分类</th>
                        <th><i class="fa  fa-thumbs-o-up"></i> 点赞量</th>
                        <th><i class="fa fa-cog"></i> 操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>
                        <c:when test="${empty thelist}">
                            <tr>
                                <td colspan="8">
                                    没有结果
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${thelist}" var="thelist" varStatus="status">
                                <tr <c:choose><c:when test="${thelist.gstatus==0}">class="warning"</c:when></c:choose>>
                                    <td>${thelist.goodsname}</td>
                                    <td>${thelist.goodstitle}</td>
                                    <td>${thelist.gprice}</td>
                                    <td>${thelist.merchantid}</td>
                                    <td></td>
                                    <td>${thelist.goodsclass}</td>
                                    <td>${thelist.goodcount}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/sys/goodsinfo/${thelist.id}"
                                           class="btn btn-default btn-sm"><i class="fa fa-edit"></i> 详情</a>
                                        <a href="${pageContext.request.contextPath}/sys/delmygoods?gid=${thelist.id}&createrid=${thelist.createrid}&curpageno=${currentpageno}"
                                           class="btn btn-default btn-sm"><i class="fa fa-times"></i> 删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
                <nav>
                    <ul class="pagination">
                        <li><a href="#">共${totalrecode}条记录</a></li>
                        <li><a href="#">共${totalpage }页</a></li>
                    </ul>
                    <ul class="pagination pull-right">
                        <li>
                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=1">
                                <span aria-hidden="true">&laquo;首页</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=${prepage}">上一页</a>
                        </li>
                        <li><a href="#">${currentpageno}</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=${nextpage}">下一页</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=${totalpage}">
                                尾页<span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>
</div>

</body>
<jsp:include page="/head/master/js.jsp"/>
</html>
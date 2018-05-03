<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/head/master/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>商品列表--江西风格网络后台管理系统</title>
    <jsp:include page="/head/master/css.jsp"/>
</head>
<body>
<jsp:include page="/head/master/top.jsp"/>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="/head/master/left.jsp"/>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
                <h1 class="h2">商品列表</h1>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th><i class="fa fa-file-text-o"></i> 商品名</th>
                        <th><i class="fa fa-file-text"></i> 商品标题</th>
                        <th><i class="fa fa-user"></i> 原价</th>
                        <th><i class="fa fa-clock-o"></i> 商户</th>
                        <th><i class="fa fa-book"></i> 分类</th>
                        <th><i class="fa fa-thumbs-o-up"></i> 点赞量</th>
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
                                <tr
                                        <c:choose>
                                            <c:when test="${thelist.gstatus==0}">class="warning"</c:when>
                                        </c:choose>>
                                    <td>${thelist.goodsname}</td>
                                    <td>${thelist.goodstitle}</td>
                                    <td>${thelist.gprice}</td>
                                    <td>${thelist.merchantid}</td>
                                    <td>${thelist.goodsclass}</td>
                                    <td>${thelist.goodcount}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/master/goodsinfo/${thelist.id}"
                                           class="btn btn-default btn-sm"><i class="fa fa-edit"></i> 详情</a>
                                        <a href="${pageContext.request.contextPath}/master/delmygoods?gid=${thelist.id}&createrid=${thelist.createrid}&curpageno=${currentpageno}"
                                           class="btn btn-default btn-sm"><i class="fa fa-times"></i> 删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>

                <nav>
                    <ul class="pagination justify-content-end">
                        <li class="page-item"><a class="page-link" href="#">共${totalrecode}条记录</a></li>
                        <li class="page-item"><a class="page-link" href="#">共${totalpage }页</a></li>
                    </ul>
                    <ul class="pagination justify-content-end">
                        <li class="page-item">
                            <a class="page-link" href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=1">
                                <span aria-hidden="true">&laquo;首页</span>
                            </a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=${prepage}">上一页</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">${currentpageno}</a></li>
                        <li class="page-item">
                            <a class="page-link" href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=${nextpage}">下一页</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=${totalpage}">
                                尾页<span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </main>
    </div>
</div>
</body>
<jsp:include page="/head/master/js.jsp"/>
</html>
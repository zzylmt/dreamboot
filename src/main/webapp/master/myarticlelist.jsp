<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>我的文章列表--江西风格网络后台管理系统</title>
    <jsp:include page="/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<jsp:include page="/head/master/top.jsp"/>
<jsp:include page="/head/master/left.jsp">
    <jsp:param name="parentnode" value="1"/>
    <jsp:param name="childnode" value="2"/>
</jsp:include>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            我的文章
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> 文章管理</a></li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th><i class="fa  fa-file-text-o"></i> 文章标题</th>
                        <th><i class="fa  fa-file-text"></i> 文章缩略标题</th>
                        <th><i class="fa fa-user"></i> 编辑</th>
                        <th><i class="fa fa-clock-o"></i> 创建时间</th>
                        <th><i class="fa  fa-bars"></i> 栏目</th>
                        <th><i class="fa fa-book"></i> 阅读量</th>
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
                                <tr <c:choose><c:when test="${thelist.astatus==0}">class="warning"</c:when></c:choose>>
                                    <td>${thelist.atitle}</td>
                                    <td>${thelist.atitle_min}</td>
                                    <td>${thelist.creatername}</td>
                                    <td>${thelist.createdatetime}</td>
                                    <td>${thelist.columnname}</td>
                                    <td>${thelist.readcount}</td>
                                    <td>${thelist.goodcount}</td>
                                    <td><a href="${pageContext.request.contextPath}/master/myarticleedit/${thelist.id}"
                                           class="btn btn-sm btn-primary btn-flat"><i class="fa fa-edit"></i> 编辑</a>
                                        <a href="${pageContext.request.contextPath}/master/articledel/${thelist.id}"
                                           class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash-o"></i> 删除</a>
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
                            <a href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=1">
                                <span aria-hidden="true">&laquo;首页</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=${prepage}">上一页</a>
                        </li>
                        <li><a href="#">${currentpageno}</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=${nextpage}">下一页</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=${totalpage}">
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

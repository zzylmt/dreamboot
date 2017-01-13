<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>商会列表--江西风格网络后台管理系统</title>
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
    <jsp:param name="parentnode" value="2"/>
    <jsp:param name="childnode" value="2"/>
</jsp:include>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            商会管理
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">查询
                            <small> 企业查询</small>
                        </h3>
                    </div>

                    <div class="box-body">
                        <div class="dataTables_wrapper form-inline dt-bootstrap">
                            <form class="search-box"
                                  action="${pageContext.request.contextPath}/sys/coclist" id="searchfrom" method="get">
                                <input type="hidden" id="curpageno" name="curpageno" value="0">
                                <div class="row">

                                    <div class="col-sm-12 col-md-12">
                                        <label for="searchInput">搜索 :</label>
                                        <div class="input-group input-group-sm">
                                            <input class="form-control" type="text" name="cocname" placeholder="输入关键字" id="searchInput" value="${keyname}">
                                            <span class="input-group-btn"><button type="button" id="search_btn" class="btn btn-info btn-flat">查询</button></span>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th><i class="fa  fa-file-text-o"></i> 商会名</th>
                                            <th><i class="fa fa-clock-o"></i> 联系人</th>
                                            <th><i class="fa  fa-bars"></i> 联系电话</th>
                                            <th><i class="fa fa-book"></i> 地址</th>
                                            <th><i class="fa  fa-file-text"></i> 所属地区</th>
                                            <th><i class="fa fa-user"></i> 备注</th>
                                            <th><i class="fa  fa-thumbs-o-up"></i> 状态</th>
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
                                                    <tr>
                                                        <td>${thelist.cocname}</td>
                                                        <td>${thelist.contact}</td>
                                                        <td>${thelist.telno}</td>
                                                        <td>${thelist.addr}</td>
                                                        <td>${thelist.provincename}${thelist.cityname}${thelist.areaname}</td>
                                                        <td>${thelist.memo}</td>
                                                        <td>${thelist.cstatusname}</td>
                                                        <td>
                                                            <a href="${pageContext.request.contextPath}/sys/cocinfo/${thelist.id}"
                                                               class="btn btn-default btn-sm"><i class="fa fa-edit"></i> 详情</a>
                                                            <a href="${pageContext.request.contextPath}/sys/delcoc?cocname=${cocname }&curpageno=${currentpageno}"
                                                               class="btn btn-default btn-sm"><i class="fa fa-times"></i> 删除</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <nav>
                                <ul class="pagination">
                                    <li><a href="#">共${totalrecode}条记录</a></li>
                                    <li><a href="#">共${totalpage }页</a></li>
                                </ul>
                                <ul class="pagination pull-right">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/sys/coclist?cocname=${cocname}&curpageno=1">
                                            <span aria-hidden="true">&laquo;首页</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/sys/coclist?cocname=${cocname}&curpageno=${prepage}">上一页</a>
                                    </li>
                                    <li><a href="#">${currentpageno}</a></li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/sys/coclist?cocname=${cocname}&curpageno=${nextpage}">下一页</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/sys/coclist?cocname=${cocname}&curpageno=${totalpage}">
                                            尾页<span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

</body>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
<script type="text/javascript">
    $(document).ready(function () {
        $("#search_btn").on("click", function () {
            $("#searchfrom").submit();
        });
    });
</script>
</html>

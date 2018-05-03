<%@ page import="com.zznet.entity.DBadmin" pageEncoding="UTF-8" %>
<%
    boolean isLegal = false;
    DBadmin admininfo = (DBadmin) session.getAttribute("dbadmininfo");

    int sid = 0;
    String sname = "";
    int sroleid = 0;
    int suserlevel = 0;

    if (null != admininfo) {
        isLegal = true;
        if (admininfo != null) {
            sid = admininfo.getId();
            sname = admininfo.getNickname();
            sroleid = admininfo.getRoleid();
            suserlevel = admininfo.getUserlevel();
        }
    } else {
        isLegal = false;
    }
    String parentnode = request.getParameter("parentnode");
    String childnode = request.getParameter("childnode");
%>
<nav class="col-md-2 d-none d-md-block bg-light sidebar">
    <div class="sidebar-sticky">
        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>文章管理</span>
            <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
            </a>
        </h6>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link <% if("1".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode)) {out.print("active");}%>"
                   href="${pageContext.request.contextPath}/master/myarticlelist?curpageno=1">
                    <span data-feather="file"></span>
                    文章列表
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <% if("2".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode)) {out.print("active");}%>"
                   href="${pageContext.request.contextPath}/master/newarticle">
                    <span data-feather="shopping-cart"></span>
                    新增文章
                </a>
            </li>
        </ul>
        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>商品管理</span>
            <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
            </a>
        </h6>
        <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class="nav-link <% if("1".equalsIgnoreCase(childnode) && "2".equalsIgnoreCase(parentnode)) {out.print("active");}%>"
                   href="${pageContext.request.contextPath}/master/newgoods">
                    <span data-feather="file-text"></span>
                    新增商品
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <% if("2".equalsIgnoreCase(childnode) && "2".equalsIgnoreCase(parentnode)) {out.print("active");}%>"
                   href="${pageContext.request.contextPath}/master/mygoodslist?createrid=<%=sid%>&curpageno=1">
                    <span data-feather="file-text"></span>
                    商品查询
                </a>
            </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>订单管理</span>
            <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
            </a>
        </h6>
        <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class="nav-link <% if("1".equalsIgnoreCase(childnode) && "3".equalsIgnoreCase(parentnode)) {out.print("active");}%>"
                   href="${pageContext.request.contextPath}/master/orderlist?dbuserid=0&curpageno=1&startdate=&enddate=">
                    <span data-feather="file-text"></span>
                    订单查询
                </a>
            </li>
        </ul>
    </div>
</nav>
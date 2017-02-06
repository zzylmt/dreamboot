<%@ page language="java" import="com.zznet.entity.DBuser" pageEncoding="UTF-8" %>
<%
    boolean isLegal = false;
    DBuser dbuser = (DBuser) session.getAttribute("dbuser");

    int sid = 0;
    String sname = "";
    int sroleid = 0;
    int suserlevel = 0;

    if (null != dbuser) {
        isLegal = true;
        if (dbuser != null) {
            sid = dbuser.getId();
            sname = dbuser.getNickname();
        }
    } else {
        isLegal = false;
    }
%>
<header class="main-header">
    <a href="#" class="logo">
        <span class="logo-mini"><b>JXSN</b></span>
        <span class="logo-lg"><b>江西风格网络</b></span>
    </a>
    <nav class="navbar navbar-static-top">
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="${pageContext.request.contextPath}/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs"><%=sname%></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="user-header">
                            <img src="${pageContext.request.contextPath}/dist/img/user2-160x160.jpg" class="img-circle">
                            <p>
                                <%=sname%> - 岗位
                                <small>部门</small>
                            </p>
                        </li>
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="${pageContext.request.contextPath}/iuser/userinfo" class="btn btn-default btn-flat">个人主页</a>
                            </div>
                            <div class="pull-right">
                                <a href="${pageContext.request.contextPath}/iuser/logout.jsp" class="btn btn-default btn-flat">退出</a>
                            </div>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
</header>
<%@ page import="com.zznet.entity.DBuser" pageEncoding="UTF-8" %>
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
    String parentnode = request.getParameter("parentnode");
    String childnode = request.getParameter("childnode");
%>
<aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${pageContext.request.contextPath}/dist/img/user2-160x160.jpg" class="img-circle"
                     alt="User Image">
            </div>
            <div class="pull-left info">
                <p><%=sname%>
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li class="header">功能项</li>

            <li class="treeview <% if("1".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>订单管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a
                            href="${pageContext.request.contextPath}/iuser/myorderlist?dbuserid=<%=sid%>&curpageno=1&startdate=&enddate="><i
                            class="fa fa-circle-o"></i> 我的订单查询 </a></li>
                </ul>
            </li>

            <li class="treeview <% if("2".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="${pageContext.request.contextPath}/iuser/deliaddrlist">
                    <i class="fa fa-dashboard"></i> <span>收货地址管理</span>
                </a>
            </li>
        </ul>

    </section>
    <!-- /.sidebar -->
</aside>
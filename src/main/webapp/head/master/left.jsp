<%@ page language="java" import="com.zznet.entity.DBadmin" pageEncoding="UTF-8" %>
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
                    <i class="fa fa-dashboard"></i> <span>文章管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                        <a href="${pageContext.request.contextPath}/sys/newarticle"><i class="fa fa-circle-o"></i> 新增文章
                        </a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                        <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=1"><i
                                class="fa fa-circle-o"></i> 我的文章 </a></li>
                </ul>
            </li>


            <li class="treeview <% if("2".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>商会管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "2".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/newCoC"><i
                            class="fa fa-circle-o"></i> 新增商会 </a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "2".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a
                            href="${pageContext.request.contextPath}/sys/CoClist?curpageno=1"><i
                            class="fa fa-circle-o"></i> 商会列表 </a></li>
                </ul>
            </li>

            <li class="treeview <% if("3".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>商户管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "3".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/newMerchant"><i
                            class="fa fa-circle-o"></i> 新增商户 </a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "3".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a
                            href="${pageContext.request.contextPath}/sys/merchantlist?curpageno=1"><i
                            class="fa fa-circle-o"></i> 商户列表 </a></li>
                </ul>
            </li>

            <li class="treeview <% if("5".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>商品管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "5".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/newgoods"><i
                            class="fa fa-circle-o"></i> 新增商品 </a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "5".equalsIgnoreCase(parentnode))
                    {out.print("active");}%>"><a
                            href="${pageContext.request.contextPath}/sys/goodslist?createrid=0&curpageno=1"><i
                            class="fa fa-circle-o"></i> 商品查询 </a></li>
                </ul>
            </li>


            <li class="<% if("4".equalsIgnoreCase(parentnode)) {out.print("active");}%> treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>栏目管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "4".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                        <a href="${pageContext.request.contextPath}/sys/columnlist"><i class="fa fa-circle-o"></i> 栏目管理</a>
                    </li>
                </ul>
            </li>
        </ul>


    </section>
    <!-- /.sidebar -->
</aside>